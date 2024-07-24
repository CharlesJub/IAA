#class, #statistics, #r
[Textbook](https://iaa-faculty.github.io/statistical_foundations/)
[Github for Book and Datasets](https://github.com/IAA-Faculty/statistical_foundations/)


# Introduction to Statistics
## Slides
 ![[1 - Introduction to Statistics-1.pdf]]
## Notes
First have to explore your data

Types of variables:
- Quantitative: Numeric values that can have arithmetic preformed on them 
- Qualitative: Values that can be put into categories
	- Nominal: Categorical variables with not logical ordering
	- Ordinal: Categorical variables with a logical order

Qualitative variables need to be encoded numerically for many statistical processes. Use Dummy variables

Dummy variables are binary columns that represent the existence or lack of a level of a categorical variable.

Ordinal variables can also be encoded numerically by giving each level a value. Typically two ways to do so:
- Optimal Scaling: Using domain knowledge to get each level a value (Education level encoded as years of education, Drink sizes encoded as ounces in drink)
- Target-level encoding: Using the relationship between a categorical variable and the target variable. Need to use a throwaway dataset to calculate. 

Four common ways to describe distribution:
- Center/Location
- Shape
- Spread
- Outliers

Measures of Central Tendency:
- Mean: Average values. Affected by outliers. $\bar{x} = \sum\limits^n_{i=1}x_i$
- Median: Middle point. 50th percentile. Unaffected by outliers
- Mode: Most frequent value. Typical for categorical data.

Measures of Location:
- Percentile: The point $x_p$ in the data for which p% of the data is less than or equal to $x_p$
- Quartile: Key percentiles at 25th (1st), the 50th (2nd), and 75th (3rd) percentile of the data

Measures of Spread:
- Range: Difference between max and min values
- Interquartile Range: Difference between 3rd quartile and 1st quartile.
- Variance ($s^2$): Dispersion of the data around the mean $$s^2 = \frac{1}{n-1}\sum\limits^n_{i=1}(x_i-\bar{x})^2$$
- Standard Deviation (s): Square root of the variance

Measures of Shape
- Modality: How many modes/heaps of data are there
- Skew: A measure of a distributions symmetry $$g_1 = \frac{1}{(n-2)(n-1)}\sum\limits^n_{i=1}\left(\frac{x_i-\bar{x}}{s}\right)^3$$
	- Left-Skewed: Data that trails off to the left. Skew < 0. Mean < Median. 
	- Right-Skewed: Data that trails off to the right. Skew > 0. Mean > Median
- Kurtosis: A measure of how much data is in the tails of the distribution. Tail thickness $$g_1 = \frac{1}{(n-2)(n-1)}\sum\limits^n_{i=1}\left(\frac{x_i-\bar{x}}{s}\right)^4$$
	- Mesokurtic: Baseline tail thickness. Kurtosis = 3
	- Platykurtic: Thin tails. Less data in the tails. Kurtosis < 3
	- Leptokurtic: Thick tails. More data in the tails. Kurtosis > 3

Normal Distribution:
- Symmetric 
- Full defined by the mean and standard deviation
- Bell-shaped / Unimodal
- Mean = Median = Mode
- Asymptotic to the x-axis
- Kurtosis = 3
- Skew = 0

Empirical Rule for Normal Distribution:
- 68% of data within one standard deviation of the mean
- 95% of data within two standard deviations of the mean
- 99.7% of data within three standard deviations of the mean
Used for quick analysis

Z-score: a formula that convert any Normal distributions to the standard Normal distribution. Used to find probability and/or percentile from a Normal distribution $$z = \frac{x-\mu}{\sigma}$$
Defining Outliers: 
- Standard Deviation from the mean: For symmetric distributions, common to consider observations >3 standard deviations away from the mean as an outlier
- Box-Plot Definition: Box plots define outliers as points more than 1.5\*IQR above the 3rd quartile or less than 1.5\*IQR below the 1st quartile
### R Code
Load Dataset
```r
install.packages("AmesHousing")
library(AmesHousing)
ames <- make_ordinal_ames()
```

`str(ames)`: returns variable information about each column of a dataframe

Histograms: Show how a continuous variable is distributed 
```r
library(ggplot2)
ggplot(data = ames) +
	geom_histogram(mapping = aes(x= Sale_Price/1000))+
	labs(x = "Sales Price (Thousands $))")
```
Added density line:
```r
ggplot(ames,aes(x=Sale_Price/1000)) + 
	geom_histogram(aes(y=..density..), alpha=0.5) + 
	geom_density( alpha = 0.2) + 
	labs(x = "Sales Price (Thousands $)")
```
Normal Probability Plots: Shows how the distribution of a variable relates to a Normal distribution
```r
ggplot(data = ames, aes(sample = Sale_Price/1000)) + 
	stat_qq() + 
	stat_qq_line()
```
Patterns of QQ-plots:
![[QQplot_patterns.png]]
Box Plots: 
```r
ggplot(data = ames, aes(y = Sale_Price/1000, x = Central_Air, fill = Central_Air)) + 
	geom_boxplot() + 
	labs(y = "Sales Price (Thousands $)", x = "Central Air") +
	scale_fillk_brewer(palette="Accent
```



## Breakout 
### Breakout 2
### Breakout 3

## Labs
### Lab 1
![Lab 1 PDF Solutions](Lab1.pdf)
[R Markdown for Lab 1](Lab1.Rmd)
#### Lab 1 Questions:
The variable body temp appears to be normally distributed.
- True
Log(Sale_Price) looks closer to Normality than Sale_Price.
- True
Which of the following types of variables _best_ describes the column **Lot_Shape**?
- Ordinal
### Lab 2 
![Lab 2 PDF Solutions](Lab2/Lab2.pdf)
[R Markdown for Lab 2](Lab2.Rmd)
#### Lab Questions
In Question 1 you were asked to explore the _NormTemp_ dataset and calculate a confidence interval for the true mean of the variable **bodytemp**. Please select the appropriate response from the selections below.
- The 95% Confidence Interval for BodyTemp is [98.12, 98.38]. We are 95% confident that this interval contains the mean of body temperature, meaning that if we were to re-sample the data and re-compute this interval many times, we'd expect the intervals we create to contain the true mean of body temperature 95% of the time.
Is there any difference (alpha=0.05) in bodytemp between the genders recorded in this dataset?
- There is sufficient evidence to argue that the average body temperature between the given genders is different.
Is there a significant difference in air travel in the summer months versus all other months at a 0.05 level of significance?
- yes

# Introduction to ANOVA and Regression
### Slides
![[2 - Introduction to ANOVA and Regression.pdf]]
### Notes

### Labs

# More Complex ANOVA & Linear Regression
### Slides 
![[More Complex ANOVA Regression.pdf]]

### Notes

### Labs

# Model Selection
### Slides 
![[Model Selection.pdf]]

### Notes

### Labs

## Diagnostics
### Slides
![[5-Diagnostics.pdf]]
### Notes
Always important to visualize the graphs to understand more about your model

#### Examining Residuals
Remember the assumptions of Linear Regression:
- X has linear relationship with Y
- Random error is normally distributed
- Constant variance of errors
- Errors are independent
- No perfect collinearity

Plot residuals: residuals on the y-axis and predicted value on x-axis
![[Pasted image 20240708131243.png]]\
A good residual plot:
- Residuals are randomly scattered about zero
- No patterns found
- Model form appears to be adequate

Quadratic Needed
![[Pasted image 20240708131404.png]]

> If you do have higher order terms in the model, you should center the variable (i.e. take each value and subtract the mean) - Helps with multicollinearity 


#### Correlated Error Terms 
Know the source of your data

Auto-correlation: testing for correlation overtime 
	Visual: Residuals![[Pasted image 20240709131030.png]]
	Statistically: Durbin-Watson statistic

Handling correlated error terms
	If correlated due to time, preform time series
	If correlated due to clustering, preform a hierarchical model
	Longitudinal analysis/panel data

#### Influential points and outliers
Outliers - point with a large standardized residuals
Leverage Points - point that falls outside the normal range  in the x-space and have a large influence on the regression line

Diagnostic Statistics:
- Standardized residuals (good for detecting outliers)
- Studentized residuals (good for detecting outliers) 
	- Studentized residuals are obtained by dividing the residuals by their standard errors
	- |SR| > 3 for data sets with a relatively large number of observations
- Cook’s D (good for detecting influential observations) 
	- Measures the difference in the regression estimates when the ith observation is left out. 
	- A suggested cutoff is: (other cutoffs suggested: 4/n, 0.5, 1)
- DFFITS (good for detecting influential observations) 
	- DFFITS$_i$ measures the impact that the $i$th observation has on the predicted value.![[Pasted image 20240709133137.png]]
- DFBETAS (good for detecting influential observations) 
	- Measure of change in the jth parameter estimate with deletion of the ith observation 
	- One DFBETA per parameter per observation
	- ![[Pasted image 20240709133302.png]]
- Hat values (good for detecting influential observations)
	- ![[Pasted image 20240709133202.png]]

##### Exploring Influential and Outlier Observations:
1. Recheck the data to ensure that no transcription or data entry errors occurred. 
2. If the data is valid, one possible explanation is that the model is not adequate. 
	A model with higher-order terms, such as polynomials and interactions between the variables, might be necessary to fit the data well. 
	Nonlinear model 
3. Determine the robustness of the inference by running the analysis both with and without these observations. 
4. Robust Regression (Covered Later in Program) 
5. Weighted Least Squares (WLS)

#### Collinearity
Looking at correlation matrix of predictors
VIF: VIF over 10 indicate potential correlation 
If you have categorical variables focus on (GVIF^1/2df)^2 
![[Pasted image 20240709135245.png]]
##### Dealing with Multicollinearity
Exclude redundant independent variables
Redefine variables
Use biased regression techniques
Be sure that you have centered any independent variables in polynomial recession models 


![[Pasted image 20240709135125.png]]

## Model Building and Scoring for Prediction
Linear regression is a great initial approach 
Linear regression is BLUE best linear unbiased estimator

Unbiased: On average the guess you are making will be the true coefficient 
![[Pasted image 20240711090831.png]]
Best: IF assumption hold, $s_{\hat\beta_j}$ is as small is it can be of all the *unbiased* estimators
	IF assumption don't hold, we can't say that linear regression is the best 

### Regularized Regression
Starting to care more about predictive power

Problems with Linear Regression:
- Assumptions start to fail
- Multicollinearity concerns
- Can't deal with more variables than observations (genetic modeling)

Regularized regression puts constraints on the estimated coefficient in our model and shrink these estimates to 0 

Coefficients become biased, but could improve variance of the model

![[Pasted image 20240711092159.png]]

Answers of Biased regression will be slightly off, but we are aiming for better overall estimates

3 Common Approaches - Ridge, LASSO, Elastic Net

OLS:![[Pasted image 20240711092423.png]]
Regularized regression introduces a penalty term to the minimization, all three approaches use the penalty term with different calculations for penalty
![[Pasted image 20240711092503.png]]
#### Ridge Regression 
Penalty:
![[Pasted image 20240711092811.png]]
You are minimizing the $\beta$ values, **Why does smaller $\beta$ values improve average prediction?**


- Penalty is controlled by tuning parameter, $\lambda$
	- If $\lambda = 0$, then OLS
	- As $\lambda \to \infty$ , coefficients shrink to 0
```r
train_reg <- train %>% dplyr::select(Sale_Price, Lot_Area, Street, Bldg_Type, House_Style, Overall_Qual, Roof_Style, Central_Air, First_Flr_SF, Second_Flr_SF, Full_Bath, Half_Bath, Fireplaces, Garage_Area, Gr_Liv_Area, TotRms_AbvGrd) %>% 
mutate_if(is.numeric, ~replace_na(., mean(., na.rm = TRUE))) 

train_x <- model.matrix(Sale_Price ~ ., data = train_reg)[, -1] 
train_y <- train_reg$Sale_Price
```
Can't use formula approach to defining a model, need to split into x and y data
We have to create dummy variables ourselves, that is why we use `model.matrix`
`[, -1]` to remove the intercept column
*Also need to do this on the test dataset* 


Ridge Regression Code:
```r
library(glmnet) 
ames_ridge <- glmnet(x = train_x, y = train_y, alpha = 0) 
plot(ames_ridge, xvar = "lambda")
```
Alpha = 0 for Ridge Regression
![[RidgeRegression_Plot.png]]
Don't show this to a client. Only valuable to learn what ridge regression is doing. 

#### Lasso Regression
![[LASSO_min_SSE.png]]
Ridge regression approaches 0 asymptotically, LASSO can have coefficients equal to 0

```r
library(glmnet) 
ames_lasso <- glmnet(x = train_x, y = train_y, alpha = 1) 
plot(ames_lasso, xvar = "lambda")
```
Alpha = 1 for LASSO
![[LassoPlot.png]]
Top x axis is the number of variables in the model
Can't require LASSO to keep a variable

LASSO will delete levels of a category, meaning that levels that are deleted are grouped with the reference category

When presenting to nontechnical you can say "Here are the variables that are most predictive", just can't talk about specific relationships 


#### Elastic Net 
- LASSO does variable selection. 
- Ridge keeps all variables (LASSO drops arbitrarily)

Elastic combines both penalty terms

![[ElasticNetMinSSE.png]]
```r
library(glmnet) 
ames_en <- glmnet(x = train_x, y = train_y, alpha = 0.5) 
plot(ames_en, xvar = "lambda")
```
![[ElasticPlot.png]]

#### Optimizing Penalties
Goal is to pick a $\lambda$ that predicts well but doesn't overfit 

#### Cross-Validation
Split training data into multiple pieces and training on some splits and evaluating on remaining piece 

![[Statistical Foundationskfold_cross_validation.png]]
LASSO 
```r
ames_lasso_cv <- cv.glmnet(x = train_x, y = train_y, alpha = 1) plot(ames_lasso_cv)
```
![[cross_validation_LASSO_plot.png]]
If  Regularized Regression is better then there would be upward curve

```r
plot(ames_lasso, xvar = "lambda") 
abline(v = log(ames_lasso_cv$lambda.1se), col = "red", lty = "dashed") abline(v = log(ames_lasso_cv$lambda.min), col = "black", lty = "dashed")
```

Important Variables
```r
coef(ames_lasso, s=c(ames_lasso_cv$lambda.min,ames_lasso_cv$lambda.1se))
```
![[Important Variables.png]]

### Comparing Models
To score/compare, you do not rerun the algorithm

Test and training need to look the exact same

Test is comparing one or two models and reporting to the client

![[ModelMetrics.png]]
- Root MSE: Not easily interpretable
- MAE: Not scale invariant
- MAPE: Not symmetric
Report using MAE and MAPE together
```r
test %>% 
mutate(lm_APE = 100*abs((Sale_Price - pred_lm)/Sale_Price)) %>% dplyr::summarise(MAPE_lm = mean(lm_APE))
```


No assumptions but cost of interpretations

# Categorical Data Analysis

## Association
Association exists between two categorical variables if the distribution of one variables changes when the level (or value) of the other variable changes.

*Is there a hypothesis test to determine association?*

Exploring association 

Visually:
```r
ggplot(data = train) +
	geom_bar(mapping = aes(x = Bonus, fill = Central_Air))
```
![[AssosiationVisual.png]]

Table:
```r
table(train$Central_Air, train$Bonus)# gives count of a variable
## 0 1 
## N 142 5 
## Y 1069 840

library(gmodels) 
CrossTable(train$Central_Air, train$Bonus)
```
![[CrossTable.png]]

## Test of Association
How much of a change is required to believe there actually is a difference?

Null Hypothesis: There is no association.

Alternative Hypothesis: There is association

Required Sample: 80% or more of the cells in the cross-tabulation table need expected count larger than 5.
### $\chi^2$-Distribution
Characteristics:
- Bounded Below By Zero
- Right Skewed
- One set of Degrees of Freedom
![[Example Chi-Squared Distribution.png]]

#### Equation:
$$
\chi^2_P = \sum\limits^R_{i=1}\sum\limits^C_{j=1}\frac{(Obs_{i,j} - Exp_{i,j})^2}{Exp_{i,j}}
$$
D.F. = (# Rows - 1)(# Columns - 1)

#### R Code
```r
chisq.test(table(train$Central_Air, train$Bonus))
```

### Likelihood Ration Chi-Square Test
Does same thing as Chi-Square Test
![[Likelihood Ratio Chi-Square Test.png]]

### Fisher's Exact Test
When we don't meet the assumption, use Fisher's exact 
```r
fisher.test(table(train$Central_Air, train$Bonus))
```
Computationally expensive

### Ordinal Compared to Nominal Tests
Ordinal provides extra information since order matters

Can test for more with ordinal variables. If two ordinal variables can account of linear relationship

#### Mantel-Haenszel Chi-Square Test
![[Mantel-Haenszel Formula.png]]
Code:
```r
library(vcdExtra) 
CMHtest(table(train$Central_Air, train$Bonus))$table[1,]
```
`[1,]` we just want the first row 
## Measures of Association
Chi-Square Tests measures whether an association exists, not the strength


### Odds Ratio (Only for 2x2 tables - binary vs. binary)
How likely, in respect to odds, a certain event occurs in one group relative to its occurrence in another

*Odds are not the same as probability*
$Odds = \frac{p}{1-p}$

What does an odds ratio say? 
Homes without central air have 22.2 times the odds (22.2 times as likely) to not be bonus eligible as compared to homes with central air.

Code:
```r
library(DescTools) 
OddsRatio(table(train$Central_Air, train$Bonus))
## [1] 22.18335
```

### Spearman's Correlation (ordinal vs. ordinal)
Spearman’s correlation measures the strength of association between two ordinal variables.

```r
cor.test(x = as.numeric(ordered(train$Central_Air)), 
		 y =as.numeric(ordered(train$Bonus)), 
		 method = "spearman")
## Spearman's rank correlation rho 
## 
## data: x and y 
## S = 1132826666, p-value < 2.2e-16 
## alternative hypothesis: true rho is not equal to 0 
## sample estimates: 
## rho 
## 0.2121966
```


### Cramer's V (Any size table)
![[Cramer's V.png]]
Bounded between 0 and 1 (-1 and 1 for 2x2 scenario) where closer to 0 the weaker the relationship

Used for nominal variables 

Code:
```r
assocstats(table(train$Central_Air, train$Bonus))
## X^2 df P(> X^2) 
## Likelihood Ratio 121.499 1 0 
## Pearson 92.351 1 0 
## 
## Phi-Coefficient : 0.212 
## Contingency Coeff.: 0.208 
## Cramer's V : 0.212
```

## Why Not Linear Regression?
If you predict a 0 or 1 with linear regression you are predicting the probability you get a 1.

```r
lp.model <- lm(Bonus ~ Gr_Liv_Area, data = train)
with(train, plot(x = Gr_Liv_Area, 
				 y = Bonus, 
				 main = 'OLS Regression?', 
				 xlab = 'Greater Living Area (Sqft)', 
				 ylab = 'Bonus Eligibility'))
abline(lp.model)
```
![[lmprob.png]]


## Logistic Regression
**Formula**
 ![[LogReg.png]]
 Has desired properties:
 - The predicted probability will always be between 0 and 1.
 - The parameter estimates do not enter the model equation linearly.
 - The rate of change of the probability varies as the X’s vary.

Easier to understand ![[log func easier.png]]
Left: log of the odds or *logit*

**Assumptions**: 
Independence of observations
Logit is linearity related to variables

**Code**
```r
ames_logit <- glm(Bonus ~ Gr_Liv_Area, 
				  data = train, 
				  family = binomial(link = "logit")) 
summary(ames_logit)
```

Can't explain logistic regression with Estimates, need to transform into terms that are interpretable. By using:
$$ 100 *(e^\hat\beta - 1)$$
This represents % change in Odds or Odds Ratio


![[logit_odds.png]]

**Code to  get odds ratio to intemperate:**
```r
100*(exp(cbind(coef(ames_logit), confint(ames_logit)))-1)
```

Can logtit for airplane delay 

## Assessment of Logistic Regression
A foundational way to evaluate models are comparing every pair of 0’s and 1’s in the target variable.

Concordant:  How many times is you logistic regression model able to rank correctly when 1
Discordant: How many times is you logistic regression model able to rank correctly when 0
Tied: How many times is you logistic regression model able to rank correctly when tied


Concorandnce of .5 or lower is pretty bad, like a coin flip