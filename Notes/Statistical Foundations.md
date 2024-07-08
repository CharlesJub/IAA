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