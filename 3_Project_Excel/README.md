# Financial Data Analysis – Excel

## 📌 Project Overview

EuroTech Essentials, a European retailer of mobile devices and accessories, commissioned a financial analysis to evaluate the profitability of sales agents, product lines, and brands in stores.
The goal of this project is to answer key questions from stakeholders and evaluate the financial performance of agents, brands, and product categories.
Microsoft Excel was used for data cleaning, transformation, and visualization to ensure a clear, reproducible analysis that facilitates informed decision-making.

## 🛠️ Tools & Technologies

- **Microsoft Excel** – Data exploration, cleaning, transformation, analysis, and visualization. 
- **GitHub** – Version control and public repository hosting.  

## 📁 Included Files

| File Name       | Sheet Name                                                      |Description                                                  
|-----------------|-----------------------------------------------------------------|-----------------------------------------------------|
| Project.xlsx    | Raw_data<br>Clean_data<br>Analysis<br>Pivot_tables<br>Dashboard | EuroTech Essentials raw dataset<br>Cleaned dataset with new columns for analysis<br>Analysis performed using Excel formulas and conditional formatting<br>Pivot tables used to generate the dashboard's dynamic charts<br>Financial Excel dashboard focuses on profits|
| Dashboard.pdf   | NA                                                               | Exported version of the dashboard                  |

## 🧭 Project Workflow

### 🔍 Data Preparation and Exploration
- Open the Excel file Project.xlsx.
- Create a copy of the Raw_data sheet.
- Rename the copied sheet as Clean_data.
. Convert the data in the Clean_data sheet into a table format.

### 🧹 Data Cleaning

The result of the data cleaning process is shown in the Clean_data sheet.
- Apply the European date format **(DD-MM-YYYY)** to the Date column.
- Capitalize names in the Commercial Agent using the **PROPER()** function.
- Split the text in the Commercial Agent column into two columns using the **Data > Text to Columns** option: one for the agent's name and another for their code.
- Remove extra spaces in the Brand column using the **TRIM()** function.
- Review the spelling in the Product Name column using **Review > Spelling** option and correct entries such as "Phoen" to "Phone" and "Chargeer" to "Charger."
- Remove duplicate rows using the **Data > Remove Duplicates** option (nine duplicates removed).
- Delete the unnecessary columns (Invoice and Code) for analysis.

### 🔄 Data Transformation

- Create the Year and Month columns using the Date column and the formula **=TEXT(value, format_text)**.
- Create the Total_Cost column by multiplying Cost per Unit and Quantity using the arithmetic operator **\***.
- Create the Total_Profit column by subtracting Total_Cost from Total_Revenue using the arithmetic operator **-**.
  
### 📈 Analysis

| Metric                                     | Function / Arithmetic Operator | Conditional formatting |                                               
|--------------------------------------------|----------|----------------------------------------------|
| Total Revenue<br>Total Cost<br>Total Profit| SUM()    | NA                                           |
| Profit Margin                              | /        | NA                                           |
| Profit per Month and Year                  | SUMIFS() | Data Bars > Gradient Fill > Green Data Bars  |
| Profit by Brand and Sales Agent            | SUMIFS() | New Rule > Rule created to identify the sales agent generating the highest profit per brand |
| Profit by Brand and Product                | SUMIFS() | New Rule > Rules created to identify the product generating the highest and lowest profit per brand |
| Profit by Sales Agent<br>Profit by Brand<br>Profit by Product| SUMIF() | Data Bars > Gradient Fill > Green Data Bars |



