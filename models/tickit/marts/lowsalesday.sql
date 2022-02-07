/* Find the days that have much lower sales than average. */
{{ config (
    materialized="table"
)}}

with sales as (

    select * from {{ ref('stg_sales')}}

),



sales_per_day AS (
  -- Get the number of sales per day
  SELECT
    STRFTIME('%Y-%m-%d', saletime) AS day,
    COUNT(*) AS num_sales
  FROM sales
  GROUP BY day
),

daily_sales_avg AS (
  -- Get the mean number of sales per day
  SELECT AVG(num_sales) AS daily_sales_avg
  FROM sales_per_day
)

SELECT COUNT(*)
FROM sales_per_day spd
JOIN daily_sales_avg dsa
  ON spd.num_sales < dsa.daily_sales_avg * 0.25
;
