# Marketing Data Analysis – Python

## 📌 Project Overview

A banking institution hired a marketing firm to contact potential customers and gauge their interest in purchasing certificates of deposit (CDs), which are a type of fixed-term investment. 
The objective of this exploratory data analysis is to answer the following question: 
What is the profile of customers with the greatest potential for conversion rate? 

## 🛠️ Tools & Technologies

- **Google Colaboratory** – A cloud-based environment for running Python code without local setup.
- **Python 3.9+** – Core programming language for data analysis.
- **Pandas** – Data manipulation and cleaning Python library.
- **Matplotlib and Seaborn** – Data visualization Python libraries.
- **GitHub** – Version control and public repository hosting.

## 📁 Included Files

| File Name               | Description                                                  |
|------------------------|---------------------------------------------------------------|
| `dataset.csv`        | Raw dataset containing information on potential customers for the bank. |
| `notebook.ipynb`  | A Jupyter notebook containing the full exploratory data analysis (EDA) workflow.|

## 🧭 Project Workflow

### 📥 Load the Dataset
- Import necessary Python libraries.
- Load the dataset.csv file.

### 📊 Initial Exploration
- Review shape, non-null values and data types.
- Understand the information contained in each column of the dataset.

| Column Name | Description |
|-------------|-------------|
| `age`       | Age of the client |
| `job`       | Type of work (`management`, `technician`, `entrepreneur`, `blue-collar`, `unknown`, `retired`, `admin.`, `services`, `self-employed`, `unemployed`, `housemaid`, `student`, `administrative`) |
| `marital`   | Marital status (`married`, `single`, `divorced`) |
| `education` | Educational level (`tertiary`, `secondary`, `unknown`, `primary`) |
| `default`   | Whether the client defaulted on previous credit obligations (`yes`, `no`) |
| `balance`   | Average annual balance in euros |
| `housing`   | Does the client have a mortgage? (`yes`, `no`) |
| `loan`      | Does the client have consumer credit? (`yes`, `no`) |
| `contact`   | Communication channel used to contact the client (`unknown`, `cellular`, `telephone`, `mobile`) |
| `day`       | Last day of the month the client was contacted |
| `month`     | Last month the client was contacted (`jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) |
| `duration`  | Duration of the last contact in seconds |
| `campaign`  | Total number of times the client was contacted during the campaign |
| `pdays`     | Number of days since the client was last contacted (value `-1` means no previous contact) |
| `previous`  | Number of contacts made before this campaign |
| `poutcome`  | Outcome of the previous marketing campaign (`unknown`, `failure`, `other`, `success`) |
| `y`         | Did the client subscribe to a term deposit? (`yes`, `no`) |

### 🧹 Data Cleaning
- Remove missing values.
- Drop categorical columns with only one level.
- Drop numeric columns with only one unique value.
- Eliminate duplicates.
- Detect and remove outliers.
- Correct typographical errors in categorical variables.

### 🔍 Exploratory Data Analysis
- **Exploratory Analysis of Individual Variables:**
    - Explore the data type of each variable.
    - Remove any columns that don't contribute to answering the question.
    - Display the columns of the DataFrame to perform this analysis
    - Use bar charts to explore categorical variables. 
    - Summarize numeric variables with statistics and histograms.
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
    - **default** = no.
    - **loan** = no.
    - **housing** = no.
    
## 🔮 Next Steps

 - Create a machine learning model that considers combinations of multiple variables and ranks those with the greatest potential for conversion. This allows us to define the customer segment willing to acquire the bank's new product differently.

## 🚀 Execution Guide 

You can run this notebook directly in your browser:

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/bcnataly/data-analyst-portfolio-nataly/blob/main/1_Project_Python/notebook.ipynb)

