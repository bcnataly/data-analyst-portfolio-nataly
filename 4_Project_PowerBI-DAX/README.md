# Commercial Data Analysis – Power BI - DAX

## 📌 Project Overview

Perú CarHub, a car dealership based in Peru, requires a visual report to track its sales. This project uses an interactive dashboard to highlight the key drivers of sales performance and the least contributing factors. The project will use Power BI to leverage data aggregations and advanced DAX functions to deliver actionable insights.

## 🛠️ Tools & Technologies
- **Power BI Desktop**
  - **Power Query** –  Data preparation and transformation 
  - **Model View** – Management of relationships and data model structure.
  - **DAX (Data Analysis Expressions)** – Creation of measures, calculated columns, advanced calculations and analysis.
  - **Report View** – Design of interactive dashboard and KPI visualization.
- **GitHub** – Version control and public repository hosting.

## 📁Included Files

| File Name                 | Description                                                               |
|---------------------------|---------------------------------------------------------------------------|
| `ventas.xlsx`             | Clean dataset containing  Perú CarHub  data                               |
| `analisis_de_ventas.pbix` | It includes the data model, DAX analysis, and the sales tracking dashboard|
| `dashboard.pdf`           | Exported version of the dashboard                                         |
| `modelo_de_datos.pdf `    | Star data model diagram                                                   |

## 🧭 Project Workflow

The **analisis_comercial.pbix** file contains the process of data preparation and exploration, transformation, analysis and visualization.

### 🔍 Data Preparation and Exploration
- Load the data model from the "ventas.xlsx" file and the following tables: "fact_ventas," "fact_presupuestos," "dim_canal," "dim_cliente," "dim_sede," "dim_vehiculo," "dim_vendedor," and "foto_vehiculos".
-	Review each table in the model to understand the information contained in each one.
-	Check the data types.
-	Explore the star data model.

### 🔄 Data Transformation
-	Create the calculated table dim_fechas, which contains a calendar with dates from 01/01/2015 to 12/31/2017, using date data type and short date format.
-	Create Calculated Columns – *dim_fechas*

| Column Name     | Function / Expression                           | Description                        |
|-----------------|-------------------------------------------------|------------------------------------|
| `Año`           | Año = YEAR(dim_fechas[Date])                  | Extracts the year from the date    |
| `Trimestre`     | Trimestre = "T" & QUARTER(dim_fechas[Date])   | Returns the quarter number (1–4)   |
| `NumeroMes`     | MONTH(dim_fechas[Date])`                      | Returns the month number (1–12)    |
| `Mes`           | FORMAT(dim_fechas[Date],"mmmm")               | Displays the full month name       |
| `NumeroSemana`  | WEEKNUM(dim_fechas[Date],2)                   | Returns the week number of the year|
| `Día`           | FORMAT(Dim_Fechas[Date],"dddd")               | Displays the full day name         |
| `DateKey`       | VALUE(FORMAT(dim_fechas[Date],"yyyymmdd"))    | Creates a numeric key for the date |


- Combine the period and month columns from the fact_presupuesto table using Power Query and generate the column fecha_presupuesto, with date format.
-	Manage the relationships of the star schema data model in Model View option. See the document modelo_de_datos.pdf.

### 📈 Analysis
Repository of calculated measures created using DAX:
  
| Measure Name                | Function(s)                                                       | Description                                                 |
|-----------------------------|-------------------------------------------------------------------|-------------------------------------------------------------|
| `Total de Ventas`           | SUM(fact_ventas[Precio Venta sin IGV])                         | Calculates the total sales amount                           |
| `Cantidad Clientes`         | DISTINCTCOUNT(fact_ventas[Cliente])                            | Counts the number of unique clients                         |
| `Cumplimiento`              | DIVIDE([Total de Ventas],[Total Presupuesto])     | Measures the percentage of sales achievement against the budget           |
| `Variación Interanual`      |VAR VentasLY = CALCULATE([Total de Ventas], DATEADD(Dim_Fechas[Date],-1,YEAR)) RETURN DIVIDE([Total de Ventas]-VentasLY, VentasLY,0) |Year-over-year variation in sales|
| `Venta del Trimestre del Año Anterior`|CALCULATE([Total de Ventas], PARALLELPERIOD(Dim_Fechas[Date],-4,QUARTER))| Sales of the same quarter in the previous year|
| `Crecimiento Trimestral` |[Total de Ventas]- [Venta del Trimestre del Año Anterior]| Quarterly growth compared to the same quarter of the previous year|
| `Ranking de Ventas por Modelo`|RANKX(ALL(dim_vehiculo[modelo_vehiculo]), [Total de Ventas])|Assigns a ranking to each vehicle model based on total sales|
| `Venta Acumulada de Modelos`|SUMX(TOPN([Ranking de Ventas por Modelo], ALL(dim_vehiculo[modelo_vehiculo]),[Total de Ventas]),[Total de Ventas])|Calculates the cumulative sales of vehicle models based on their sales ranking|
| `Total de Ventas Modelo`    |CALCULATE([Total de Ventas], ALL(dim_vehiculo[modelo_vehiculo]))| Calculates the total sales by vehicle model, ignoring filters applied to the modelo_vehiculo column|
| `% Pareto`|DIVIDE([Venta Acumulada de Modelos], [Total de Ventas Modelo])|Calculates the cumulative percentage of sales by model, applying the Pareto principle (80/20)|

### 📊 Data Visualization

| Chart Type            | Title                                                               | Description                                                     |
|-----------------------|---------------------------------------------------------------------|-----------------------------------------------------------------|
| Card                  | Total de Ventas<br>Clientes<br>Cumplimiento<br>Variación Interanual |Displays the total sales amount<br>Displays the number of clients<br>Displays the percentage of sales achievement against the budget<br>Displays the year-over-year variation in sales|
| Clustered column chart| Comparativa de Ventas por Trimestre|Displays current quarter sales, sales of the same quarter in the previous year, and quarterly growth|
| Pie Chart             | Ventas por Segmento                                                 | Displays the proportion of sales by segment                     |
| Vertical Bar Chart    | Ventas por Sede                                                     | Displays sales by location                                      |
| Stacked column chart  |Ventas por modelo de vehículo y % de pareto                          | Displays the sales of vehicle models and Pareto %               |


## 🧠 Key Insights 

  - 87% of clients are individuals, while 13% are companies.
  - The top-performing branch is Santiago de Surco, which leads in total sales volume. The branch with the lowest performance is La Molina.
  - Toyota and Suzuki are the best-selling brands, indicating strong customer preference. Mazda is the least-selling brand.
  - Contrary to the classic Pareto principle, where 20% of products generate 80% of results, 80% of vehicle sales at Peru CarHub come from 71.42% of the available models. This reflects more balanced and diversified demand, suggesting that customers appreciate having a wide range of choices.
    
