-- ********************************************************************************
--        DATA EXPLORATION, CLEANING, TRANSFORMATION AND QUERIES USING MySQL       
-- ********************************************************************************

-- ************************************
-- 1. DATA PREPARATION AND EXPLORATION
-- ************************************
--  1.1 Create a Database
CREATE DATABASE IF NOT EXISTS employee_data;

-- 1.2 Import the employees.csv file
-- Click on DB "employee-data," right-click on "Tables" and select the "Table Data Import Wizard" option. Then, upload the employees.csv file.

-- 1.3 Select the created Database
USE employee_data;

-- 1.4 Display the number of rows in the employees table
SELECT COUNT(*) AS total_rows FROM employees;

-- 1.5 Display the number of columns in the employees table
SELECT COUNT(*) AS total_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'employee_data' AND TABLE_NAME = 'employees';

-- 1.6 Display the first 10 rows from the employees table
SELECT * FROM employees LIMIT 10;

-- 1.7 Display the data types of the columns
DESCRIBE employees;

-- ******************
-- 2. DATA CLEANING
-- ******************
-- 2.1 Check if there are columns with null values
SELECT
COUNT(*) - COUNT(id_employee) AS null_id_employee,
COUNT(*) - COUNT(first_name) AS null_first_name,
COUNT(*) - COUNT(last_name) AS null_last_name,
COUNT(*) - COUNT(gender) AS null_gender,
COUNT(*) - COUNT(birth_date) AS null_birth_date,
COUNT(*) - COUNT(departamento) AS null_departamento,
COUNT(*) - COUNT(monthly_salary_usd) AS null_monthly_salary_usd,
COUNT(*) - COUNT(work_modality) AS null_work_modality,
COUNT(*) - COUNT(country) AS null_country
FROM employees;

-- 2.2 Check if there are duplicate rows
SELECT id_employee, COUNT(*) AS duplicates
FROM employees
GROUP BY id_employee
HAVING COUNT(*) > 1;
    
-- Count the number of duplicate rows based on id_employee column
SELECT COUNT(*) AS total_duplicate_rows
FROM (
    SELECT id_employee
    FROM employees
    GROUP BY id_employee
    HAVING COUNT(*) > 1
) AS duplicate_rows;

-- ** Steps For Creating a Table Without Row Duplicates **
-- Rename the table 'employees' to 'raw_data'
RENAME TABLE employees TO raw_data;

-- Create a temporary table that doesn't contain duplicate rows 
CREATE TEMPORARY TABLE temp_clean_data AS 									
SELECT DISTINCT * FROM raw_data; 	

-- Verify the number of rows in the table with duplicates and the number of rows in the table without duplicates
SELECT
    (SELECT COUNT(*) FROM raw_data) AS data_with_duplicates,
    (SELECT COUNT(*) FROM temp_clean_data) AS data_without_duplicates;

-- Convert the temporary table "temp_clean_data" into the permanent table "employees"
CREATE TABLE employees AS
SELECT * FROM temp_clean_data;

-- Confirm that there are no duplicate rows in the new permanent table "employees"
SELECT COUNT(*) AS total_duplicate_rows
FROM (
    SELECT id_employee
    FROM employees
    GROUP BY id_employee
    HAVING COUNT(*) > 1
) AS duplicate_rows;

 -- Delete the table that contains duplicates 
 DROP TABLE raw_data;
 
 -- 2.3 Correct typographical error in the "departamento" column and assign the correct data type
ALTER TABLE employees CHANGE COLUMN departamento department VARCHAR (20);

-- 2.4 Modify data types and replace data
-- Change the data type of the id_employee, gender and work_modality columns
ALTER TABLE employees MODIFY COLUMN id_employee VARCHAR(9);
ALTER TABLE employees MODIFY COLUMN gender VARCHAR(20);
ALTER TABLE employees MODIFY COLUMN work_modality VARCHAR(20);

-- Verify the data type in the id_employee, gender and work_modality columns
DESCRIBE employees;

/* Standardize the levels of the gender column in English:
Replace 'mujer' with 'Female', 'hombre' with 'Male' in gender column and test the transformation logic before updating the column */
SELECT gender,
    CASE
		WHEN gender = 'mujer' THEN 'Female'
        WHEN gender = 'hombre' THEN 'Male'
        ELSE 'Other'
    END AS test_gender
FROM employees;

-- Disable safe update mode to allow direct updates without a WHERE clause:
SET SQL_SAFE_UPDATES = 0;

-- Apply the update to the gender column
UPDATE employees
SET gender = CASE
    WHEN gender = 'mujer' THEN 'Female'
    WHEN gender = 'hombre' THEN 'Male'
    ELSE 'Other'
END;

-- Verify the updated values in the gender column 
SELECT gender FROM employees;

/* Replace integer values with categorical levels in the work_modality column:
Replace '0' with 'On-site', '1' with 'Remote' and '2' with 'Hybrid' and test the transformation before updating the column */
SELECT work_modality,
CASE 
    WHEN work_modality = 0 THEN 'On-site'
	WHEN work_modality = 1 THEN 'Remote'
    WHEN work_modality = 2 THEN 'Hybrid'
    ELSE 'Other'
END as test_work_modality
FROM employees;

-- Apply the update in the work_modality column
UPDATE employees
SET work_modality = CASE
	WHEN work_modality = 0 THEN 'On-site'
	WHEN work_modality = 1 THEN 'Remote'
    WHEN work_modality = 2 THEN 'Hybrid'
    ELSE 'Other'
END;

-- Verify the updated values in the work_modality column
SELECT work_modality FROM employees;

-- 2.5 Adjust the number format and modify the data type for the monthly_salary_usd column
-- Identify the structure of the monthly_salary_usd column
SELECT monthly_salary_usd FROM employees; 

/* Replace the dollar sign($) and coma (,) with empty strings (REPLACE).
Remove any blank spaces at the beginning or end of the clean text (TRIM).
Convert the text to a decimal number with a total of up to 9 digits and 2 decimal places (CAST).
Test the transformation logic before updating the column (SELECT) */
SELECT monthly_salary_usd, 
CAST(TRIM(REPLACE(REPLACE(monthly_salary_usd, '$', ''), ',', '')) AS DECIMAL(9, 2)) AS test_monthly_salary_usd
FROM employees;

-- Apply the update to the monthly_salary_usd column
UPDATE employees SET monthly_salary_usd = CAST(TRIM(REPLACE(REPLACE(monthly_salary_usd, '$', ''), ',', '')) AS DECIMAL(9, 2));

-- Verify the updated values in the monthly_salary_usd column
SELECT monthly_salary_usd FROM employees;

-- Change the data type of the  monthly_salary_usd column
ALTER TABLE employees MODIFY COLUMN monthly_salary_usd DECIMAL(9,2);

-- Verify the data type of the monthly_salary_usd column
DESCRIBE employees;

-- 2.6 Adjust the date format and modify the data type for the birth_date column (from MM/DD/YYYY to YYYY-MM-DD (SQL format)
-- Identify the structure of the birth_date column
SELECT birth_date FROM employees; --  Month, day, year (MM/DD/YYYY) 

 /* Check if the column values contain the slash (/) symbol (LIKE).
Convert the string to a date value by interpreting it as month/day/year (SRT_TO_DATE).
Reformat the date to "YYYY-MM-DD" (DATE_FORMAT)
If the date doesn't contain a slash, return a null value.
Test the transformation before updating the column (SELECT) */
SELECT birth_date, CASE
    WHEN birth_date LIKE '%/%' THEN DATE_FORMAT(STR_TO_DATE(birth_date, '%m/%d/%Y'), '%Y-%m-%d')
    ELSE NULL
END AS test_birth_date
FROM employees;

-- Update the table using the SQL date format
UPDATE employees
SET birth_date = CASE
	WHEN birth_date LIKE '%/%' THEN date_format(str_to_date(birth_date, '%m/%d/%Y'),'%Y-%m-%d')
    ELSE NULL
END;

-- Verify the updated format of the birth_date column
SELECT birth_date FROM employees;

-- Change the data type of the birth_date  column
ALTER TABLE employees MODIFY COLUMN birth_date DATE;

-- Verify the data type of the birth_date column
DESCRIBE employees;

-- 2.7 Eliminate irrelevant columns for this data analysis
-- The "Country" categorical column only has one level, "United States", so it doesn't provide information that would allow us to differentiate employees.
ALTER TABLE employees DROP COLUMN country;

-- Display the employees table
SELECT * FROM employees;

-- *************************
-- 3. DATA TRANSFORMATION
-- *************************
-- 3.1 Calculate the employees' age using the current date and the birth_date column
-- Create the age column to save the employees' age
ALTER TABLE employees ADD COLUMN age INT AFTER gender;

-- Test: Display the birth_date column, calculate the employees' age and test the transformation before updating the age column.
SELECT birth_date, TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS test_age
FROM employees;

-- Apply the update of the age column
UPDATE employees SET age = TIMESTAMPDIFF(YEAR, birth_date, CURDATE());

-- Eliminate the birth_date column
ALTER TABLE employees DROP COLUMN birth_date;

-- Display the employees table
SELECT * FROM employees;

-- 3.2 Calculate the annual salary of employees
-- Create the annual_salary_usd column
ALTER TABLE employees ADD COLUMN annual_salary_usd DECIMAL(9,2);

-- Test: Display monthly_salary_usd and calculate the annual salary using the monthly_salary_usd column
SELECT monthly_salary_usd, monthly_salary_usd * 12 AS test_annual_salary_usd
FROM employees;

-- Apply the update of the annual_salary_usd column
UPDATE employees SET annual_salary_usd = monthly_salary_usd * 12;

-- Eliminate the monthly_salary_usd  column
ALTER TABLE employees DROP COLUMN monthly_salary_usd;

-- Display the employees table
SELECT * FROM employees;

-- Display the data types of the columns
DESCRIBE employees;

-- *********************************
-- 3. QUERIES - WORKFACE METRICS 
-- ********************************

-- 3.1 How many employees work in the company?
SELECT COUNT(id_employee) AS total_employees FROM employees; 

-- 3.2 What is the average annual salary in the company?
SELECT ROUND(AVG(annual_salary_usd)) AS avg_annual_salary_usd FROM employees; 

-- 3.3 What is the average age of employees?
SELECT ROUND(AVG(age)) AS avg_age_employees FROM employees;

-- 3.4 Which are the departments and how many employees are there in each department?
SELECT department, COUNT(id_employee) AS total_employees FROM employees  
GROUP BY department
ORDER BY total_employees DESC;

-- 3.5 What is the number and percentage of employees by gender?
SELECT gender,
COUNT(id_employee) as total_employees,
ROUND(COUNT(id_employee) * 100.0 / (SELECT COUNT(id_employee) FROM employees), 1) AS `percentage(%)`
FROM employees
GROUP BY gender
ORDER BY total_employees DESC;

-- 3.6 What is the number and percentage of employees by work modality?
SELECT work_modality,
COUNT(id_employee) AS total_employees, 
ROUND(COUNT(id_employee) * 100.0 / (SELECT COUNT(id_employee) FROM employees), 1) AS `percentage(%)`
FROM employees
GROUP BY work_modality
ORDER BY total_employees DESC;

-- 3.7 Who are the six highest-paid employees? What gender, department and work_modality do they belong?
SELECT CONCAT(first_name, ' ', last_name) AS full_name, annual_salary_usd, gender, department, work_modality FROM employees
ORDER BY annual_salary_usd DESC
LIMIT 6;

-- 3.8 What is the average annual salary by gender?
SELECT gender, ROUND(AVG(annual_salary_usd)) AS avg_annual_salary_usd FROM employees
GROUP BY gender
ORDER BY avg_annual_salary_usd DESC;

-- 3.9 Which 3 departments have the highest average salaries?
SELECT department, ROUND(AVG(annual_salary_usd)) AS avg_annual_salary_usd FROM employees
GROUP BY department
ORDER BY avg_annual_salary_usd DESC
LIMIT 3;

-- ************************
-- 4. SAVE CLEANED DATA
-- ************************
-- Select all the columns of the employees table
SELECT * FROM employees;
-- Save the table using the Export option (recordest to an external file) as a .csv file (clean_employees.csv).
-- I will use the clean_employees.csv file as the data source for the Power BI visualization.