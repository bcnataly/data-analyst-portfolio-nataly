# Customer Conversion Analysis – EDA with Python

## 📌 Project Overview
A banking institution hired a marketing firm to contact potential customers and gauge their interest in purchasing certificates of deposit (CDs), which are a type of fixed-term investment. 
The objective of this exploratory data analysis is to answer the following question: 
What is the profile of customers with the greatest potential for conversion? 

## 🔄 Project Workflow

### 📥 Load the Dataset:
- Import necessary Python libraries.
- Load the dataset.

### 📊 Initial Exploration:
- Review shape, non-null values, and data types.

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
    * Analyze the numeric variables by obtaining basic statistical values and generating a histogram for each.
- **Univariate Analysis:**
    - Convert the categorical column "y" into a numeric variable (y_bin).
    - Visualize distributions with box plots.
    - Define a function that displays the conversion rate for each variable.
    - Visualize and analize the conversion rates for each variable.
    - Conclusions of the Univariate Analysis.
- **Bivariate Analysis:**
    - Define a function that displays the conversion rate of a combination of two categorical variables.
  	- Visualize and analize the conversion rates for combination of the two categorical variables.
    - Conclusions of the Univariate Analysis.
      
## 🧠 Key Insights 
  - The variables "poutcome", "job", "balance_groups", and "age_groups" have the greatest impact on the conversion rate.
  - Based on this analysis, the ideal customer profile for acquiring the bank's new product is as follows:
   - "poutcome"= success. The person must have been contacted by the bank previously and must have purchased the product in the last campaign.
   - "job" = Type of Job (Top 3): Unemployed, student and retired.
   - "balance" = Between 16000 euros and 20000 euros, preferably.
   - "age" = Between 18 and 25 years old, preferably.
   - "default" = no (if the person has a loan and is meeting their bank obligations), "loan" = no (if the person doesn't have a loan), and    - "housing" = no (if the person doesn't have a mortgage loan).
    
### 🔮 Next Steps
 - Create a machine learning model that considers combinations of multiple variables and ranks those with the greatest potential for conversion. This enables us to define the customer segment that is willing to acquire the bank's new product in a different way.



