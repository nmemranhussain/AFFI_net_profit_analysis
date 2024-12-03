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

| **Variable Name** | **Model Role**      | **Measurement Level** | **Description**                                                                 |
|--------------------|---------------------|------------------------|---------------------------------------------------------------------------------|
| **Combo**          | Independent Variable | Discreet (Categorical) | Represents the food-beverage combination offered (Combo1, Combo2, Combo3, Combo4). |
| **Temp**           | Independent Variable | Continuous             | Air temperature (in Fahrenheit) at the start of the game.                       |
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
- **b-value in SLR** - represents the magnitude and direction of **'slope'** of independent variable in a simple regression model.
- **b-value in MLR** - represents the magnitude and direction of **'slope'** of independent variables in a multiple regression model.
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
- **Software:** R (with libraries such as **deplyr**, **heplots** and **agricolae**, **psych**, **lsmeans**, **stats** )

### Version of the Modeling Software: 
- **R:** 4.3.2
- **'deplyr':** 1.1.4
- **'heplots':** 1.7.0
- **'agricolae':** 1.3.7
- **'psych':** 2.4.6.26
- **'lsmeans':** 2.30.0
- **'stats':** 4.3.2

## Interpretation
