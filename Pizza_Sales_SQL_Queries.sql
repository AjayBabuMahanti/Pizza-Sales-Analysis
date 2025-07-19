select * from pizza_sales;

--- KPI'S Requirement

select sum(total_price) as Total_Revenue from pizza_sales;

select sum(total_price) / count(distinct order_id) as Avg_Order_Value from pizza_sales;

select sum(quantity) as Total_Pizzas_Sold from pizza_sales;

select count(distinct order_id) as Total_Orders from pizza_sales;

select CAST(CAST(sum(quantity) as decimal (10,2)) / CAST(count(distinct order_id) as decimal(10,2)) as decimal(10,2))  as Avg_Pizzas_per_Order from pizza_sales;

select datename(DW, order_date) as order_day, count(distinct order_id) as Total_Orders from pizza_sales group by datename(dw, order_date);

--- CHART'S Requirement

select datename(month, order_date) as Month_Name, count(distinct order_id) as Total_Orders from pizza_sales group by datename(month, order_date) order by Total_Orders desc;

select pizza_category, sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as Total_Percentage_Sales from pizza_sales  group by pizza_category;

select pizza_size, sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as Total_Percentage_Sales from pizza_sales  group by pizza_size;

select Top 5 pizza_name, sum(total_price) as Total_Revenue from pizza_sales group by pizza_name order by Total_Revenue desc;

select Top 5 pizza_name, sum(total_price) as Total_Revenue from pizza_sales group by pizza_name order by Total_Revenue asc;

select Top 5 pizza_name, sum(quantity) as Total_Quantity from pizza_sales group by pizza_name order by Total_Quantity desc;

select Top 5 pizza_name, sum(quantity) as Total_Quantity from pizza_sales group by pizza_name order by Total_Quantity asc;




