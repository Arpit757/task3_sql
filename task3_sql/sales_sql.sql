-- section a

select * from sales_data_sample;

select * from sales_data_sample where ORDERLINENUMBER = 2;

select * from sales_data_sample order by QTR_ID asc;

select status, count(*) as status_count 
from sales_data_sample 
group by status;

-- Section c

SELECT CUSTOMERNAME
FROM sales_data_sample
GROUP BY CUSTOMERNAME
HAVING SUM(SALES) > (SELECT AVG(SALES) FROM sales_data_sample);

-- section d

SELECT COUNTRY, SUM(SALES) AS TotalSales
FROM sales_data_sample
GROUP BY COUNTRY;


SELECT PRODUCTLINE, AVG(SALES) AS AverageSales
FROM sales_data_sample
GROUP BY PRODUCTLINE;

-- section e

CREATE VIEW view_country_sales AS
SELECT COUNTRY, SUM(SALES) AS TotalSales
FROM sales_data_sample
GROUP BY COUNTRY;

select * from view_country_sales;

-- section f

CREATE INDEX idx_customername ON sales_data_sample (CUSTOMERNAME(100));

SHOW INDEX FROM sales_data_sample;

desc sales_data_sample;