-- Section1
#     your 1st query here
SELECT name, year_of_release, ROUND(global_sales * 1000000) AS global_sales_without_decimals
FROM games
WHERE global_sales > 20
ORDER BY year_of_release DESC
LIMIT 10;


-- Section2
#     your 2nd query here
select publisher
from games
where global_sales = (select max(global_sales) from games);
-- Section3
#     your 3rd query here
select CASE
           WHEN isnull(genre) THEN 'OTHER'
           ELSE genre
           END as genre
from games
where other_sales = (select max(other_sales) from games);
-- Section4
#     your 4th query here

(
  SELECT name, year_of_release, ROUND(other_sales * 1000000) AS sales_in_asia_europe_australia,
    ROUND(global_sales * 1000000) AS global_sales_without_decimals
  FROM games
  WHERE year_of_release >= 2000
)
UNION ALL
(
  SELECT name, year_of_release, ROUND(other_sales * 1000000) AS sales_in_asia_europe_australia,
    ROUND(global_sales * 1000000) AS global_sales_without_decimals
  FROM games
  WHERE year_of_release < 2000
)
ORDER BY
    CASE
        WHEN year_of_release >= 2000 THEN global_sales_without_decimals
        ELSE sales_in_asia_europe_australia
    END DESC,
    name;

