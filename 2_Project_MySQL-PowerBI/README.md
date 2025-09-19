
# Employee Metrics Analysis – MySQL & Power BI

This project focuses on exploring, cleaning, transforming, visualizing and analyzing employee data to uncover key workforce insights for a technology company.

## 📌 Project Overview

The Techniserv Group, a U.S. technology company, commissioned a workforce analysis to reveal important demographic and performance metrics. The goal of this project is to identify the factors that define the Techniserv Group workforce and create a visual report to communicate this information to senior HR management and other stakeholders.
The questions that guided this analysis were posed by HR stakeholders and executive management, who aimed to identify the organization's strengths, disparities, and opportunities.
The project uses MySQL for data preparation and querying, as well as Power BI for executive-level visualization.

## 📁 Included Files

| File Name               | Description                                                 |
|------------------------|--------------------------------------------------------------|
| `employees.csv` | Raw dataset containing unprocessed employee data             |
| `clean_employees.csv`    | Cleaned dataset after applying SQL transformations           |
| `script.sql`           | SQL script used for data cleaning, transformation, and queries |
| `dashboard.pbix`       | Power BI dashboard visualizing key employee metrics          |
| `dashboard.pdf`        | Exported version of the dashboard for easy sharing/viewing   |


## 🛠️ How to Run This Project

- 1. Load the employees.csv file into the script.sql file as a table named employees.
- 2. Execute the script.sql script to explore, clean, transform and query the data.
- 3. Open the dashboard.pbix file in Power BI Desktop to explore the interactive dashboard.
- 4. Alternatively, view the static version in dashboard.pdf.


## 🔄 Project Workflow

### 🔍 Data Preparation and Exploration
- Create the database.
- Import the table from a .csv file (employees.csv).
- Review the number of rows and columns.
- Check data types.
- Display the first few rows of the table.

### 🧹 Data Cleaning
-	Identify missing values.
-	Remove duplicate rows.
-	Correct typographical errors in a column.
-	Modify data types across multiple columns.
-	Standardize categorical levels to English.
-	Replace the integer values with categorical values.
-	Adjust the number format to a numerical column and the date format to a date column.
-	Drop irrelevant columns.

### 🔄 Data Transformation
-	Create a column to calculate the age of each employee.
-	Create a column to calculate annual salary in USD.
-	Assign appropriate data types to the new columns.
-	Remove columns that are not needed for the analysis.

### 📈 Workforce Metrics Overview
-	Total number of employees.
-	Average annual salary per employee.
-	Average employee age.
-	Distribution by department, gender, and work modality.
- Highest-paid employees.
-	Average annual salary by gender.

### 💾 Save Cleaned Data

The final cleaned table is saved (clean_employees.csv) and used as the data source for visualization in Power BI.

### 📊 Dashboard Creation in Power BI

The dashboard uses a variety of visual elements to present key insights about the Techniserv Group workforce.
- Horizontal stacked bar chart: Displays employee distribution by department, allowing for comparison across functional areas.
- Pie charts: Show gender distribution and work modality proportions, offering a quick overview of demographic balance.
- Table: Lists the six highest-paid employees by gender, department, and work modality to support compensation analysis.
- Horizontal bar chart: Presents average salary by gender, highlighting potential disparities.
- Vertical bar chart: Shows the three departments with the highest average salaries, which allows for the identification of potential strategic areas.

### 🧠 Key Insights

The figures are in U.S. format.

- **Demographics:**
    - The Techniserv Group has a total of 1,000 employees.
    - The average age of employees is 39.
    - 68.3% of employees are male and 31.7% are female. Interestingly, women have a slightly higher average salary than men.
  
- **Workforce Distribution:**
    - The company has seven departments, and 73% of employees work in engineering, support, and services.
    - The most common work modality is hybrid (45.7%), followed by on-site (28%) and remote (26.3%).
  
- **Compensation:**
    - The top three highest-paying departments are engineering, services, and support.
    - The company's average annual salary is $54,471. Top earners make over $80,000.

- **Strategic Interpretation:**
These insights reveal a workforce concentrated in technical and client-facing roles with hybrid work as the dominant modality. The compensation data indicates a significant investment in key departments and identifies areas for additional equity analysis.

### 🚀 Next Steps:

To further enhance the value of this analysis and support strategic decision-making, the following steps are recommended:
- Expand the dataset. Incorporate additional variables, such as tenure, performance ratings, and educational background, to enrich the analysis and reveal deeper workforce patterns.
- Conduct time-based analysis. Integrate historical data to identify trends in hiring, compensation, and shifts in work modality over time.
