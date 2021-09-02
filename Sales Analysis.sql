-- Customer per year
Select d.year as year, count(*) as number_of_customer
From transactions t
Inner Join date d ON t.order_date = d.date
Group by d.year
Order by d.year;

-- Revenue by market
Select m.markets_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner Join markets m ON t.market_code = m.markets_code
Group by m.markets_name
Order by Total_Revenue;

-- Revenue by year
Select d.year, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner Join date d ON t.order_date = d.date
Group by d.year
Order by Total_Revenue

-- Revenue by year and market
Select m.markets_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner Join markets m ON t.market_code = m.markets_code
Inner Join date d ON t.order_date = d.date
Where d.year = 2020
Group by m.markets_name
Order by Total_Revenue;

Select m.markets_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner Join markets m ON t.market_code = m.markets_code
Inner Join date d ON t.order_date = d.date
Where d.year = 2019
Group by m.markets_name
Order by Total_Revenue;

Select m.markets_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner Join markets m ON t.market_code = m.markets_code
Inner Join date d ON t.order_date = d.date
Where d.year = 2018
Group by m.markets_name
Order by Total_Revenue;

Select m.markets_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner Join markets m ON t.market_code = m.markets_code
Inner Join date d ON t.order_date = d.date
Where d.year = 2017
Group by m.markets_name
Order by Total_Revenue;

-- Revenue by month and year
Select d.month_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner join date d ON t.order_date = d.date
Where d.year = 2020
Group by d.month_name
Order by Total_Revenue;

Select d.month_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner join date d ON t.order_date = d.date
Where d.year = 2019
Group by d.month_name
Order by Total_Revenue;

Select d.month_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner join date d ON t.order_date = d.date
Where d.year = 2018
Group by d.month_name
Order by Total_Revenue;

Select d.month_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner join date d ON t.order_date = d.date
Where d.year = 2017
Group by d.month_name
Order by Total_Revenue;

-- Revenue by customer
Select c.custmer_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner Join customers c ON t.customer_code = c.customer_code
Group by c.custmer_name
Order by Total_Revenue;

-- Top 5 Revenue by customer
Select Top 5 c.custmer_name, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner Join customers c ON t.customer_code = c.customer_code
Group by c.custmer_name
Order by Total_Revenue DESC;

--Revenue by product
Select Top 5 p.product_code, sum(t.sales_amount) as Total_Revenue
From transactions t
Inner Join products p ON t.product_code = p.product_code
Group by p.product_code
Order by Total_Revenue DESC;

-- Sales quantity by market
Select m.markets_name, sum(t.sales_qty) as Total_Sqty
From transactions t
Inner Join markets m ON t.market_code = m.markets_code
Group by m.markets_name
Order by Total_Sqty;


