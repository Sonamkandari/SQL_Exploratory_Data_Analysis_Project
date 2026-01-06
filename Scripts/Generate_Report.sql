-- Generate a Report that shows all ey matrices of the business
select 'Total sales' as mesure_name, sum(sales_amount) As measure_value from gold.fact_sales
Union all
select 'Total Quantity', sum(quantity) from gold.fact_sales
Union all
select 'Average Price',AVG(price) from gold.fact_sales
Union all
select 'Total Nr. Orders', COUNT(DISTINCT order_number) from gold.fact_sales
Union all
select'Rotal Nr. Products', COUNT(product_name) from gold.dim_products
Union all
select 'Total Nr. Customers',COUNT(customer_key) from gold.dim_customers