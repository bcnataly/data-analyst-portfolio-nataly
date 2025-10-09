
# Human Resources Data Analysis – MySQL and Power BI

## 📌 Project Overview

The Techniserv Group, a U.S. technology company, commissioned a human resources data analysis focusing on its employees. The project aimed to provide valuable insights into the demographics, distribution, and compensation of the workforce and create a visual report to communicate this information to senior HR management and other stakeholders.
The project utilized MySQL for data preparation, exploration, cleaning, transformation, and analysis, and Power BI for executive-level visualization.

## 🛠️ Tools & Technologies

- **MySQL Workbench** – Data exploration, cleaning, and transformation.  
- **Power BI Desktop** – Dashboard design and executive-level visualization.  
- **GitHub** – Version control and public repository hosting.  

## 📁 Included Files

| File Name               | Description                                                  |
|------------------------|---------------------------------------------------------------|
| `employees.csv`        | Raw dataset containing employee data              |
| `script.sql`           | SQL script used for data exploring, cleaning, transformation, and queries|
| `clean_employees.csv`  | Cleaned dataset after applying SQL transformations            |
| `dashboard.pbix`       | Power BI dashboard visualizing key employee metrics           |
| `dashboard.pdf`        | Exported version of the dashboard                             |

## 🧭 Project Workflow

The **script.sql** file contains the process of data preparation and exploration, cleaning, transformation, and analysis.

### 🔍 Data Preparation and Exploration
- Create the database.
- Import the table from a .csv file (employees.csv).
- Review the number of rows and columns.
- Check data types.
- Display the first few rows of the table.
- Understand the information contained in each column of the dataset:
  
| Column Name         | Description |
|---------------------|-------------|
| `id_employee`       | Unique identifier for each employee |
| `first_name`        | Employee's first name |
| `last_name`         | Employee's last name |
| `gender`            | Employee's gender (`hombre`, `mujer`) |
| `birth_date`        | Employee's date of birth |
| `departmento`       | Department where the employee works (`Accounting`, `Engineering`, `Human Resources`, `Marketing`, `Sales`, `Services`, `Support`) |
| `monthly_salary_usd`| Employee's monthly salary in USD |
| `work_modality`     | Work modality (`0`, `1`, `2`) |
| `country`           | Country where the employee works |

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

### 📈 Analysis

The dataset was analyzed using SQL queries to extract insights. 

-	Total number of employees.
-	Average annual salary per employee.
-	Average employee age.
-	Distribution by department, gender, and work modality.
-   Highest-paid employees.
-	Average annual salary by gender.

### 💾 Save Cleaned Data

The final cleaned table is saved in the **clean_employees.csv** file and used as the data source for visualization in Power BI.

### 📊 Data Visualization

The dashboard uses visual elements to present key insights about the Techniserv Group workforce. Data visualization is available in both the **dashboard.pbix** Power BI file and the **dashboard.pdf** file.

| Chart Type               | Title                                                                 | Description                                              |
|--------------------------|----------------------------------------------------------------------|-----------------------------------------------------------|
| Card             | Employees<br>Avg. Annual Salary<br>Avg. Age   | Displays the number of employees, average annual salary in USD, and average employee age |
| Horizontal Stacked Bar| Employees by Department             | Displays employee distribution by department  |
| Pie Chart             | Employees by Gender<br>Employees by Work Modality | Displays gender distribution<br>Displays work modality proportions             |
| Table          | Top 6 Employees Annual Salary  | Lists the six highest-paid employees, including information such as gender, department, and work modality |
| Vertical Bar Chart | Avg. Annual Salary by Gender<br>Top 3 Avg. Annual Salary by Department| Presents average salary by gender<br>Shows the three departments with the highest average salaries |

## 🧠 Key Insights

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

## 🔮 Next Steps

To further enhance the value of this analysis and support strategic decision-making, the following steps are recommended:
- Expand the dataset. Incorporate additional variables, such as tenure, performance ratings, and educational background, to enrich the analysis and reveal deeper workforce patterns.
- Conduct time-based analysis. Integrate historical data to identify trends in hiring, compensation, and shifts in work modality over time.

## 🚀 Execution Guide 

- Open the script.sql file in MySQL Workbench.
- Load the employees.csv file into the script, then execute it to explore, clean, transform, and query the data.
- Open the dashboard.pbix file in Power BI Desktop to view the dashboard.
- Alternatively, view the static version in dashboard.pdf.
