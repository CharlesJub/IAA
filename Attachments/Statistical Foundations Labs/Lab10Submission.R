library(tidyverse)
library(AmesHousing)
library(car)

ames <- make_ordinal_ames()

set.seed(123)
ames <- ames %>% mutate(id = row_number())
train <- ames %>% sample_frac(0.7)
test <- anti_join(ames, train, by = 'id')


sale_price <- train$Sale_Price

columns_to_select <- c('Neighborhood', 'Gr_Liv_Area', 'Total_Bsmt_SF', 
                       'Overall_Cond', 'Year_Built', 'MS_SubClass', 'Bsmt_Unf_SF', 'Kitchen_Qual', 
                       'Sale_Condition', 'Garage_Area', 'Fireplaces', 'Condition_1')

train_select <- select(train, all_of(columns_to_select))



train.1 <- as.data.frame(lapply(train %>% select(-c("Sale_Price")), function(x) {
  if(is.numeric(x)) scale(x, scale = FALSE) else x
}))
train.1$Sale_Price <- sale_price


outlier.lm <- lm(log(Sale_Price) ~ Neighborhood + Gr_Liv_Area + Kitchen_Qual + 
                   Total_Bsmt_SF + Bsmt_Unf_SF + Overall_Cond + Year_Built + 
                   MS_SubClass + Neighborhood:Gr_Liv_Area + Kitchen_Qual:Total_Bsmt_SF + 
                   Neighborhood:Year_Built + Kitchen_Qual:MS_SubClass, data = train.1)

D.cut=4/(nrow(train.1)-11) 
train.1$is_outlier <- (cooks.distance(outlier.lm) > D.cut) & (rstudent(outlier.lm) > 3 | rstudent(outlier.lm) < -3)
sum(train.1$is_outlier, na.rm = T)
train.1 %>%  filter(is_outlier != TRUE)
'
final.lm <- lm(log(Sale_Price) ~ Neighborhood + Gr_Liv_Area + Kitchen_Qual + 
                 Total_Bsmt_SF + Bsmt_Unf_SF + Overall_Cond + Year_Built + 
                 MS_SubClass + Neighborhood:Gr_Liv_Area + Kitchen_Qual:Total_Bsmt_SF + 
                 Neighborhood:Year_Built + Kitchen_Qual:MS_SubClass, data = train.1)

final.lm %>% plot()
final.lm %>% summary()


predictions <- car::Predict(final.lm, test)
actual <- test$Sale_Price
mean(actual - predictions)

'