
#  Film Rental Data Insights– PostgreSQL and Tableau

## 📌 Project Overview

RetroMovie Rentals is a DVD rental business. To better understand its financial performance, an analysis was conducted focusing on rental transactions.
The project aims to highlight key insights regarding: Rentals by store, Film categories, Ratings distribution, Top rented films and Customers contributing the highest rental income.
For this project, PostgreSQL was used to explore and analyze the data, while Tableau was employed to design interactive visualizations that clearly and effectively communicate the findings.

## 🛠️ Tools & Technologies
- **pgAdmin4 / PostgreSQL** – Data exploration and analysis applying:
  - Data Manipulation Language (DML)
  - Aggregation functions
  - Clauses for Data Grouping and Ordering
  - JOINS
  - String functions
  - Window functions
  - Common Table Expressions (CTEs)
- **Tableau Public Desktop** – Dashboard design and executive-level visualization.
- **GitHub** – Version control and public repository hosting.

## 📁 Included Files

| File Name               | Description                                                  |
|------------------------|---------------------------------------------------------------|
| `dvdrental.tar`        | Star schema data model containing RetroMovie Rentals dataset|
| `data_model.pdf `      | Star schema diagram illustrating table relationships|
| `queries.sql`          | SQL script with queries for KPIs and data exploration|
| `dashboard.twbx`       | Tableau workbook with  visualizations of key metrics|
| `dashboard.pdf`        | Exported static version of the Tableau dashboard|

## 🧭 Project Workflow

### 🔍 Data Exploration
- Review the star schema structure **(dvdrental.tar)**.
- Identify key tables: film, category, store, inventory, rental, payment, customer.
- Understand relationships between tables using the **data_model.pdf** diagram.

### 📈 Analysis
The dataset was analyzed using SQL queries to extract insights.
- Number of distinct films 
- Total Film Categories
- Average Rental Rate
- Rental income by store, film category and rating
- Top 10 films by rental income
- Top 5 customers by rental income

### 📊 Data Visualization
The dashboard uses visual elements to present key insights about RetroMovie Rentals focusing on rental transactions. Data visualization is available in both the **dashboard.twbx** Tableau file and the **dashboard.pdf** file

| Chart Type            | Title                                                               | Description                                               |
|-----------------------|---------------------------------------------------------------------|-----------------------------------------------------------|
| Card                |Distinct films <br> Total Categories <br> Avg. Rental Rate (USD) |Displays the number of distinct films<br>Displays the number of film categories<br> Displays the average rental rate|
| Vertical Bar Chart  | Rental income (usd) by store <br> Rental income (USD) by rating | Displays Rental income distribution by store <br> Displays Rental income distribution by rating|
| Tree Diagram      |Rental Income (USD) by Film Category    |  Display Rental Income distribution by Film Category  |
| Horizontal Bar Chart| Top 5 Customers by Rental Income (USD)| Dispays the five customers with the highest payments for movie rentals|
| Table        |Top 10 films by rental income| Lists the ten highest-rental films, including information such as Rating, Total Income (USD) and number of rents |

## 🧠 Key Insights

The figures are in U.S. format.

- **Movie Ratings**
  - PG-13 generates the highest rental income, contributing 22.60% of the total.
  - G has the lowest rental income share, at 17.13%.

- **Store Performance**
  - Stores 1 and 2 are nearly identical in rental income:
  - Store 2: 50.04%
  - Store 1: 49.96%
    
- **Film Categories**
  - The three most profitable categories are Sports, Sci-Fi, and Animation, contributing 21.97% of rental income.
  - The three least profitable categories are Music, Travel, and Children, together accounting for 15.67%.
    
- **Top Customers**
  - The Top 5 customers spent an average of 199.96 USD on rentals.
  - Despite their high individual spending, they contribute less than 2% of total rental income.
    
- **Top Films**
  - The Top 10 most rented films contribute approximately 3% of total rental income.
  - Within the Top 10 highest-grossing films, ratings represented are PG, NC-17, PG-13, and G.
  - The only rating absent from the Top 10 is R.


👉 In summary: RetroMovie Rentals should focus on strengthening profitable ratings and genres, optimizing store operations, and maintaining a diversified catalog to secure sustainable growth.




