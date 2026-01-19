/*
===========================================================
RetroMovie Rentals Dashboard Queries
Author: Nataly Beltrán Cuenca
Description:
  This file contains all SQL queries used to build KPIs
  and visualizations for the RetroMovie Rentals dashboard.
===========================================================
*/

/*---------------------------------------------------------
1. Distinct Films in Store
---------------------------------------------------------*/
SELECT COUNT(DISTINCT film_id) AS distinct_films
FROM film;

/*---------------------------------------------------------
2. Total Film Categories
---------------------------------------------------------*/
SELECT COUNT(*) AS total_categories
FROM category;

/*---------------------------------------------------------
3. Average Rental Rate
---------------------------------------------------------*/
SELECT ROUND(AVG(rental_rate), 2) AS avg_rental_rate
FROM film;


/*---------------------------------------------------------
4. Total Rental Income by Store
---------------------------------------------------------*/
SELECT st.store_id AS store,
       SUM(pay.amount) AS total_rental_income
FROM store st
INNER JOIN inventory inv ON st.store_id = inv.store_id
INNER JOIN rental rent ON inv.inventory_id = rent.inventory_id
INNER JOIN payment pay ON rent.rental_id = pay.rental_id
GROUP BY store
ORDER BY total_rental_income DESC;

/*---------------------------------------------------------
5. Rental Income (USD) by Film Category
---------------------------------------------------------*/
SELECT cat.name AS category,
       ROUND(SUM(pay.amount), 2) AS total_income_by_category
FROM category cat
INNER JOIN film_category fcat ON cat.category_id = fcat.category_id
INNER JOIN film f ON fcat.film_id = f.film_id
INNER JOIN inventory inv ON f.film_id = inv.film_id
INNER JOIN rental rent ON inv.inventory_id = rent.inventory_id
INNER JOIN payment pay ON rent.rental_id = pay.rental_id
GROUP BY category
ORDER BY total_income_by_category DESC;

/*---------------------------------------------------------
6. Rental Income (USD) by Film Rating
---------------------------------------------------------*/
SELECT f.rating,
       ROUND(SUM(pay.amount), 2) AS total_income_by_rating
FROM film f
INNER JOIN inventory inv ON f.film_id = inv.film_id
INNER JOIN rental rent ON inv.inventory_id = rent.inventory_id
INNER JOIN payment pay ON rent.rental_id = pay.rental_id
GROUP BY f.rating
ORDER BY total_income_by_rating DESC;

/*---------------------------------------------------------
7. Top 10 Films by Rental Income
---------------------------------------------------------*/
WITH film_income AS (
    SELECT f.title,
           f.rating,
           f.length AS film_length,
           COUNT(rent.rental_id) AS total_rentals,
           ROUND(AVG(pay.amount), 2) AS avg_amount,
           SUM(pay.amount) AS total_income
    FROM film f
    INNER JOIN inventory inv ON f.film_id = inv.film_id
    INNER JOIN rental rent ON inv.inventory_id = rent.inventory_id
    INNER JOIN payment pay ON rent.rental_id = pay.rental_id
    GROUP BY f.film_id
)
SELECT RANK() OVER (ORDER BY total_income DESC) AS ranking,
       title, rating, film_length, total_rentals, avg_amount, total_income
FROM film_income
ORDER BY total_income DESC
LIMIT 10;

/*---------------------------------------------------------
8. Top 5 Customers by Rental Income
----------------------------------------------------------*/
WITH customer_income AS (
    SELECT CONCAT (cust.first_name, ' ', cust.last_name) AS full_name,
           SUM(pay.amount) AS total_income
    FROM customer cust
    INNER JOIN payment pay ON cust.customer_id = pay.customer_id
    GROUP BY cust.customer_id, cust.first_name, cust.last_name
)
SELECT RANK() OVER (ORDER BY total_income DESC) AS ranking,
       full_name, total_income
FROM customer_income
ORDER BY total_income DESC
LIMIT 5;

