# Financial Data Analysis – Excel

## 📌 Project Overview

EuroTech Essentials, a European retailer of mobile devices and accessories, commissioned a financial analysis to evaluate the profitability of sales agents, product lines, and brands in stores.
The goal of this project is to answer key questions from stakeholders, evaluating the financial performance of agents, brands, and product categories.
Microsoft Excel was used for data exploring, cleaning, transformation, and visualization to ensure a clear, reproducible analysis that facilitates informed decision-making.

## 🛠️ Tools & Technologies

- **Microsoft Excel** – Data exploration, cleaning, transformation, analysis, and visualization. 
- **GitHub** – Version control and public repository hosting.  

## 📁 Included Files

| File Name       | Worksheet                                                       |Description                                                  
|-----------------|-----------------------------------------------------------------|-----------------------------------------------------|
| Project.xlsx    | 01_Raw_data<br>02_Clean_data<br>03_Analysis<br>04_Pivot_tables<br>05_Dashboard | EuroTech Essentials raw dataset<br>Cleaned and transformed dataset<br>Analysis performed using Excel formulas and conditional formatting<br>Pivot tables used to generate the dashboard's dynamic charts<br>Financial Excel dashboard focuses on profits|
| Dashboard.pdf   | NA                                                               | Exported version of the dashboard                  |

## 🧭 Project Workflow

### 🔍 Data Preparation and Exploration
- Open the Excel file Project.xlsx.
- Create a copy of the Raw_data sheet.
- Rename the copied sheet as Clean_data.
- Convert the data in the Clean_data sheet into a table format.
- Review the number of rows and columns.
- Check data types.
- Understand the information contained in each column of the dataset. 

| Column Name      | Description                                    |
|------------------|------------------------------------------------|
| Invoice          | Unique invoice code                            |
| Date             | Date of the sale                               |
| Sales Agent      | Name and ID of the sales agent                 |
| Brand            | Product brand                                  |
| Product          | Name of the product                            |
| Quantity         | Number of units sold                           |
| Retail Price     | Unit price of the product                      |
| Total Revenue    | Total amount of the sale                       |
| Cost Per Unit    | Cost of the product per unit                   |


### 🧹 Data Cleaning

The result of the data cleaning process is shown in the **02_Clean_data** sheet.
- Apply the European date format **(DD-MM-YYYY)** to the Date column.
- Capitalize names in the Commercial Agent using the **PROPER()** function.
- Split the text in the Commercial Agent column into two columns using the **Data > Text to Columns** option: one for the agent's name and another for their code.
- Remove extra spaces in the Brand column using the **TRIM()** function.
- Review the spelling in the Product Name column using **Review > Spelling** option and correct entries such as "Phoen" to "Phone" and "Chargeer" to "Charger."
- Remove duplicate rows using the **Data > Remove Duplicates** option (nine duplicates removed).
- Delete the unnecessary columns (Invoice and Code) for analysis.

### 🔄 Data Transformation

The result of the data transformation process is shown in the **02_Clean_data** sheet.
- Create the Year and Month columns using the Date column and the  **TEXT()** function.
- Create the Total_Cost column by multiplying Cost per Unit and Quantity using the arithmetic operator **multiplication (*)**.
- Create the Total_Profit column by subtracting Total_Cost from Total_Revenue using the arithmetic operator **subtract(-)**.
  
### 📈 Analysis

The dataset was analyzed using two approaches:  
- **formulas combined with conditional formatting to extract insights**: This information is shown in the **03_Analysis** sheet.  

| Metric                                     | Function / Arithmetic Operator | Conditional formatting |                                               
|--------------------------------------------|----------|----------------------------------------------|
| Total Revenue<br>Total Cost<br>Total Profit| SUM()    | NA                                           |
| Profit Margin                              | /        | NA                                           |
| Profit per Month and Year                  | SUMIFS() | Data Bars > Gradient Fill > Green Data Bars  |
| Profit by Brand and Sales Agent            | SUMIFS() | New Rule > Rule created to identify the sales agent generating the highest profit per brand |
| Profit by Brand and Product                | SUMIFS() | New Rule > Rules created to identify the product generating the highest and lowest profit per brand |
| Profit by Sales Agent<br>Profit by Brand<br>Profit by Product| SUMIF() | Data Bars > Gradient Fill > Green Data Bars |

- **Pivot tables to extract insights and build the dynamic charts displayed in the dashboard**This information is shown in the **04_Pivot_tables** sheet.  

### 📊 Data Visualization

The dashboard uses visual elements to present key insights about EuroTech Essentials' profits. This data visualization is displayed on the **05_Dashboard** sheet.

| Chart Type        | Title                            | Description                                              | Filter(s)            |
|-------------------|----------------------------------|----------------------------------------------------------|----------------------|
| Card | Total Revenue<br>Total Cost<br>Total Profit| Displays the total sales amount<br>Displays the total cost amount<br>Displays the total profit amount| NA |    
| Card | Profit Margin | Displays the profit margin | NA  |
| Line Chart | Profit Evolution | Displays monthly profit trends for each year | Timeline: years and months |
| Clustered Column | Profit by Brand and Sales Agent<br>Profit by Brand and Product | Displays the profits generated by the agent sales, grouped by brand<br> Displays the profits generated by the products, grouped by brand| Timeline: years and months + Slicer: Agent, Brand, Product |
| Clustered Bar| Profit by Sales Agent<br>Profit by Brand<br>Profit by Product | Displays profits generated by each sales agent<br>Displays profits generated by each brand<br>Displays profits generated by each product| Timeline: years and months |
      
## 🧠 Key Insights

- **Profit Evolution:**
    - Stability in 2020: The 2020 line shows minor fluctuations compared to 2021, indicating a more predictable trend with lower profitability.
    - Significant growth in 2021: The 2021 line reveals notably higher profits, especially between June and August. Profits exceeded €10,000 in August, followed by a sharp decline through October.

- **Brands and Sales Agents:**
Top-performing sales agents by brand:
    - Mary Grant – Samsung: €10,970
    - Anna Fletcher – Motorola: €7,637
    - Mark Preston – Apple: €7,479
    - Paul Vance – Xiaomi: €7,174
    - Luke Lawson – Oppo: €6,737
      
- **Brands and Products:**
Most profitable products by brand:
    - Headphones: For Motorola, Samsung, and Xiaomi.
    - Phone Case: For Apple and Oppo.
The total profit generated by the top-performing products across brands is 35.4%.

Least profitable product by brand:
    - Screen Protector: For Apple, Oppo, Samsung, and Xiaomi.
    - Cell Phone: For Motorola.
The total profit generated by the lowest-performing products across brands is 8%.

- **Sales Agent Performance:**
    - Mark Preston is the lowest-performing agent, contributing 16.9% of total profit.
    - Mary Grant is the top performer, contributing 23.2% and exceeding Mark Preston’s contribution by 35.2%.

- **Brand Performance:**
    - Samsung is the most profitable brand, generating 27.1% of total profit—nearly double Motorola's contribution.
    - Combined, Samsung and Motorola account for 51.6% of total profit.

- **Product Performance:**
    - Phone cases and headphones are the top-performing products, contributing 35.4% of total profit.
    - The screen protector is the least profitable product, contributing only 8.2%.

- **Strategic Interpretation:**
    - The sharp increase in profits during mid-2021, especially in August, suggests a potential campaign, product launch, or seasonal effect that is worth investigating. Understanding what drove this spike could help replicate similar results in the future.
    - Although Mark Preston is the lowest-performing sales agent overall, he contributes the most to Apple's profits. This emphasizes the importance of segmenting sales agents by brand or product specialization rather than evaluating performance solely based on total contribution.
    - Samsung and Motorola's dominance in overall profit (51.6%) suggests that a strategic focus on these brands could yield higher returns. However, balancing product diversity and agent specialization is still essential for sustainable growth.

## 🔮 Next Steps

- Integrate Power Query for automated data cleaning
Replace manual preprocessing with Power Query to streamline updates.

## 🚀 Execution Guide 

To explore this project in full:
- Open the Project.xlsx Excel file.
- Navigate through each worksheet. Each one represents a stage of the project.

The contents of each worksheet are explained in detail in the **Included Files** section.


