# Exploratory Data Analysis with Python

## Business Problem
A banking institution hired a marketing firm to contact potential customers and gauge their interest in purchasing certificates of deposit (CDs), which are a type of fixed-term investment. 

## Objective
The objective of this exploratory data analysis is to answer the following question: 
What is the profile of customers with the greatest potential for conversion? 

## Project Phases

### Load the dataset:
Import the necessary Python libraries to develop this project and load the dataset.

### Characteristics of the dataframe:
Explore the general characteristics of the data frame, including the number of rows and columns, the number of non-null values in each column, and the data type of each column.

### Clean the dataframe:
- **Missing Value Management::**
  * Remove all rows with missing values from the original dataframe.
- **Unnecessary columns:**
  * Remove any categorical columns with only one level.
  * Discard any numerical columns containing only one unique value.
- **Duplicate rows:**
	* Drop the duplicate rows.
- **Outlier detection:** 
  * Review each numerical variable (column) to detect and eliminate outliers.
- **Typographical errors:** 
  * Detect and correct typographical errors in categorical variable values.
    
### Exploratory Data Analysis
- **Exploratory Analysis of Individual Variables:**
    * Analyze each variable individually.
    * Explore the data type of each variable.
    * Define and eliminate any variables that are not needed for the analysis: ('contact', 'month', 'day', 'duration', 'campaign', 'pdays', 'previous').
    * Use bar charts to explore categorical variables: ('job','marital','education','default','housing','loan','contact','month','poutcome','y')
    * Analyze the numeric variables (age and balance) by obtaining basic statistical values and generating a histogram for each.
    
- **Univariate Analysis:**
    * Convert the categorical column "y" into a numeric variable (y_bin) to simplify the calculation of the conversion rate.
    * Draw two box plots showing the distribution of the numeric variables (age and balance) split by 'y_bin'.
    * Define a reusable function (graph_conversion_rates) that displays the conversion rates for each variable in the data frame based on the predictive variable.
    * Analyze the relationship between each numerical variable (age and balance) and the predictive variable (y_bin).
    * Analyze the relationship between the categorical variables (age_groups, balance_groups, job, marital, education, default, housing, loan, poutcome) and the predictive variable (y_bin).
    * Conclusions of the Univariate Analysis.

- **Bivariate Analysis:**
    * Define a function that displays the conversion rate of a combination of two categorical variables.
    * Graph the conversion rate for each combination of the two categorical variables (age_groups, balance_groups, job, marital, education, default, housing, loan, poutcome) and the predictive variable (y_bin).
    * Conclusions of the Univariate Analysis.
      
##  Step to follow


