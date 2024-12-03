# Unlocking Insights of AFFI using ANOVA, ANCOVA & Scheffe Test Analysis with Confounding Effects
Aristocrats Food Franchise Inc. (AFFI), which operates during home games of the Washington Aristocrats baseball club. Due to its small scale, AFFI offers one of four food-beverage combinations (Combo1, Combo2, Combo3, Combo4) at each game. The goal is to determine whether certain combinations are more profitable than others, both independently and after accounting for the game day's temperature. The dataset includes three variables for each selected game: Combo (categorical/discreet), Temperature (continuous in Fahrenheit), and Net Profit (continuous, in thousands of dollars). Using R, the analysis employs statistical methods such as ANOVA, ANCOVA, Eta-square, and Scheffe tests to evaluate relationships and assess predictive powers. It also explores confounding effects of temperature on profit differences between combinations, providing actionable insights for optimizing AFFI's offerings. The dataset and R scripts are included for reproducibility and further exploration.

## Basic Information
**Names:** N M Emran Hussain  
**Email:** nmemranhussain2023@gmail.com  
**Date:** December 2024  
**License:** [MIT License](LICENSE)

## Intended Use  
**Purpose:** This repository is designed to analyze factors influencing net profit for Aristocrats Food Franchise Inc. (AFFI), with a focus on understanding the interplay between independent variables and their impact on regression analysis. Key objectives include:
- **Exploring Confounding Effects:** Assess whether or not temperature confounds the relationship between food-beverage combinations and net profit, both in bivariate and multivariate analyses.  
- **Examining Predictor Interplay:** Investigate the unique and combined predictive powers of independent variables (Combo: discreet, Temperature: continuous) on the dependent variable (Net Profit).  
- **Model Evaluation:** Evaluate the explanatory power of models using ANOVA, ANCOVA, and Eta-square, examining coefficients and statistical significance.  
- **Actionable Insights:** Provide a framework for identifying and interpreting confounding hypotheses and differences in means across combinations.  
- **Statistical Application:** Employ R for data analysis to demonstrate practical regression, ANOVA and ANCOVA techniques.  
- **Confidence Level:** All results are reported with a precision of four decimal places, maintaining a significance level of 0.05 for statistical tests.  

**Intended Users:** Data Analysts, Data scientists, machine learning enthusiasts, educators.

**Out-of-scope Uses:** The model is not intended for production use in any critical applications or real-time decision-making systems.

## Data Description

| **Variable Name**  | **Model Role**       | **Measurement Level**  | **Description**                                                                        |
|--------------------|--------------------- |------------------------|----------------------------------------------------------------------------------------|
| **Combo**          | Independent Variable | Discreet (Categorical) | Represents the food-beverage combination offered (Combo1, Combo2, Combo3, Combo4).     |
| **Temp**           | Independent Variable | Continuous             | Air temperature (in Fahrenheit) at the start of the game.                              |
| **NetProfit**      | Dependent Variable   | Continuous             | Net profit derived from the food-beverage combination sales (in thousands of dollars). |

- Sample Size: 324 rows  
- Dataset File: Ariscrats.dat  
- File Format: .dat (space-separated values) with headers.

## Model Details
### Architecture  
- This model card utilizes linear model such as **'Multiple Regression'**. To understand inght, an alternative model **'Simple Linear Regression'** model is also used.   

### Evaluation Metrics  
- **Coefficient of multiple determination (R²)** - Indicates the strength of relationships in **'sample'**. It is also denoted by CD.
- **Adjusted R²** - Indicates the strength of relationships in **'population'**. It is also denoted by Adjusted CD.
- **Coefficient of partial determination (CPD)** - Indicates what portion of each independent variables can explain the 'dependent variable'.
- **Unconditional P-value** - Indicates statistical significance in bivariate level (simple regression) using 95% confidence level.
- **Conditional P-value** - Indicates statistical significance in multivariate level (multiple regression) using 95% confidence level.
- **Global F P-value** - indicates at least one of the predictor variables is statistical-significantly related with dependent variable in 95% confidence level.
  
### Columns Used as Inputs in the Final Model
The following columns were used as inputs (features) in the final model:
- **Combination Package**: Food-beverage combination. This independent variable is a **'discreet'** according to Stevens' level of measurement typology.  
- **Temperature**: Air temperature (in Fahrenheit). This independent variable is a **'continuous'** according to Stevens' level of measurement typology.  

### Column(s) Used as Target(s) in the Final Model
- **Target Column:** **Net Proit** (food-beverage combination sales)

### Type of Models
* **Simple Regression Classifier**
* **Multiple Regression Classifier**

### Software Used to Implement the Model
- **Software:** R (with libraries such as **deplyr**, **heplots**, **agricolae**, **psych**, **lsmeans** and **stats** )

### Version of the Modeling Software: 
- **R:** 4.3.2
- **'deplyr':** 1.1.4
- **'heplots':** 1.7.0
- **'agricolae':** 1.3.7
- **'psych':** 2.4.6.26
- **'lsmeans':** 2.30.0
- **'stats':** 4.3.2

## Quantitative Analysis and Interpretation  
### Bivariate level  
- **The reason the average 'NetProfit' of at least one Combination differs from the average NetProfit of at least one other Combination:** Here, Combo1 is considered as the reference group. The global F p-value is 2.272e-11, allowing us to reject the null hypothesis that the means of all combinations are equal (mean of Combo1 = mean of Combo2 = mean of Combo3 = mean of Combo4). We accept the alternative hypothesis that not all means are identical. The pairs are: Combo 1 & 2, Combo 1 & 3, Combo 1 & 4, Combo 2 & 3, and Combo 3 & 4. This conclusion is based on the Scheffe test, which shows these combinations exhibit different grouping letters, indicating significant differences in means at the 95% confidence level.Thus, we can reasonably conclude that at least one population mean of a combination package differs from another.  
- The proportion of variation in NetProfit predictable from Combo in the sample is 0.1513 and in the population is 0.1433.

### Multivariate level  
- **The reason that the set of independent variables offers any predictibility of the dependent variable in the population:** From Eta-square table we can see that the eta-square co-efficients of 'Combo' and 'Temp' are 0.1246 and 0.0161 respectively, the associated p-values are 1.143e-09 and 0.01346 respectively. So we can reasonably confident that the set of independent variables 'Combo'(discreet) and 'Temp'(continuous) offer a individual unique predictive power on 'Net profit' in the population.
- **The reason, after controlling for temperature on game day, the average NetProfit of at least one Combination is different than the average NetProfit of at least one other Combination:** From Eta-square table we can see that the p-value of 'Combo' and 'Temp' is 1.143e-09 and 0.01346 respectively, which is less than 0.05. Also from 'lsmeans' table we can see the the lower CL & upper CL of different combo packages didn't overlap with each other. The lowest estimated mean for Combo 3 package is 62.2 and highest estimated mean for Combo 2 package is 69.6 which reasonably 'not close' to each other. So we can confidently reject null hypothesis. We can reasonably conclude that after controlling for temperture ('Temp') on the game day, the mean Net Profit of at least one combination package is different than the mean Net profit of at least one other combination package.
- **After controlling for temperature on game day, the best estimate of the average Net profit of combination package 1** is 65.8 and **the proportion of variation in Net profit is 'uniquely' predictable from combination package 1** is 12.46%
- **The reason Temperature on game day appear to confound the relationship between 'Combination' and 'Net profit':** At the bivariate level, the unique predictive power of 'Temperature' is 0.0427, meaning that 4.27% of the variation in Net Profit can be explained by Temperature. The p-value for this relationship is 0.0001, which is significantly less than 0.05, indicating to a reasonable conclusion of strong statistical significance. At the multivariate level, when considering additional variable 'Combo', the explanatory power of Temperature decreases to 0.0161, or 1.61% of the variation in Net Profit. The p-value for this relationship rises to 0.0134, which is still below 0.05 but indicates a weaker association compared to the bivariate analysis. Additionally, the analysis revealed that the variables 'Combination' and 'Temperature' are related, with a p-value of 0.0007 (also much less than 0.05). This suggests that Temperature on game day might slightly confound the relationship between Combination packages and Net Profit, as it appears to account for some of the variability attributed to Combination packages.
- **An estimate of the magnitude of the confounding is:** 62.3% which means only 62.3% of the original effect of temperature has been explained by combination packaes.   



