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
  * Remove any categorical columns that with only one level.
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
    
- **Bivariate Analysis:**


