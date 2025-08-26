# Customer Conversion Analysis – EDA with Python
This project focuses on cleaning, exploring, transforming, and visualizing data in order to profile potential customers of a bank who are interested in purchasing a product.

## 📌 Project Overview
A banking institution hired a marketing firm to contact potential customers and gauge their interest in purchasing certificates of deposit (CDs), which are a type of fixed-term investment. 
The objective of this exploratory data analysis is to answer the following question: 
What is the profile of customers with the greatest potential for conversion? 

## 🔄 Project Workflow

### 📥 Load the Dataset:
- Import necessary Python libraries.
- Load the dataset.

### 📊 Initial Exploration:
- Review shape, non-null values and data types.

### 🧹 Data Cleaning:
- Remove missing values.
- Drop columns with only one level.
- Drop columns with only one unique value.
- Eliminate duplicates.
- Detect and remove outliers.
- Correct typographical errors in categorical variables.

### 🔍 Exploratory Data Analysis:
- **Exploratory Analysis of Individual Variables:**
    * Explore the data type of each variable.
    * Remove any columns that don't contribute to answering the question.
    * Use bar charts to explore categorical variables. 
    * Summarize numeric variables with statistics and histograms.
- **Univariate Analysis:**
    - Convert the categorical column "y" into a numeric variable (y_bin).
    - Visualize distributions with box plots.
    - Define a function that displays the conversion rate for each variable.
    - Visualize and analize the conversion rates for each variable.
    - Conclusions of the Univariate Analysis.
- **Bivariate Analysis:**
    - Define a function that displays the conversion rate of a combination of two categorical variables.
    - Visualize and analize the conversion rates for combination of the two categorical variables.
    - Conclusions of the Bivariate Analysis.
      
## 🧠 Key Insights 
  - The variables poutcome, job, balance_groups and age_groups have the greatest impact on the conversion rate.
  - The ideal customer profile for acquiring the bank's new product is as follows:
    - **poutcome**= success. 
    - **Type of job** = Unemployed, student and retired.
    - **balance** = Between 16000 euros and 20000 euros, preferably.
    - **age** = Between 18 and 25 years old, preferably.
    - **default** = no, "loan" = no , and "housing" = no.
    
## 🔮 Next Steps
 - Create a machine learning model that considers combinations of multiple variables and ranks those with the greatest potential for conversion. This allows us to define the customer segment willing to acquire the bank's new product differently.
