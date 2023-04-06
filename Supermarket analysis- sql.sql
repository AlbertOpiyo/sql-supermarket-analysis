 --- let us confrim the data has beeen correctly imported

 select *
 from [SupermarketSales].[dbo].[supermarket_sales - Sheet1];

 --- branch with the highest rating
 select Branch, ROUND(AVG(Rating),1) as avg_rating
 from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
 group by Branch
 order by avg_rating desc;
 -- Branch C has the highest rating while Branch B has the lowest rating among customers




 ----the preferred customer_type by consumers
 select Customer_type, count(customer_type) customers_number
  from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
  group by Customer_type;

 --preferred type of payment
 select Payment,count(Payment) payment
 from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
 group by Payment;


 ---payment distribution by branch
 select Payment, Branch, count(Payment) as  payment
 from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
 group by Payment,Branch
 order by branch desc,3 desc;

 ---- product line with the highest sales
 select Product_line, avg(Total) as total_sales
 from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
 group by Product_line
 order by 2 desc;


 --- lets compare branch and sales
 select Branch,avg(Total) as avg_sales
 from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
 group by Branch
 order by 2 desc;


 --- product line vs rating
 select Product_line, round(Avg(Rating),1)  as avg_rating
 from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
 group by Product_line
 order by 2 desc;

 --Gender  vs sales
 select Gender, ROUND(avg(Total),1) as avg_gender_total
from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
 group by Gender
 order by 2 desc;

 --- gender vs product line
 select Gender,Product_line, count(Product_line) number_of_product_lines
 from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
 group by Gender,Product_line
 order by 1 desc, 3 desc ;

 ---gender vs customer type
 select Customer_type,  Gender, count(customer_type) customers_number
  from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
  group by Customer_type ,Gender
  order by Customer_type ;


  --- customer type vs branch
  select Customer_type,  Branch, count(Customer_type)  number_of_customers
  from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
  group by Customer_type, Branch
  order by Branch;


  ---- customer type and sales- does it influence?
  select Customer_type, sum(Total)
  from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
  group by Customer_type;


  ---- does customer type influence rating
  select Customer_type, round(avg(Rating),1)
  from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
  group by Customer_type;

  ----the busiest city
  select City, count(city) as busy_city
  from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
  group by City;

  ---- Gender vs city
  select City,Gender, count(Gender) as Gender_number
  from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
  group by City , Gender
  order by city;

  ----which city bring the most sales
  select City, round(sum(Total),0) as total_city
  from [SupermarketSales].[dbo].[supermarket_sales - Sheet1]
  group by City
  order by 2 desc;


