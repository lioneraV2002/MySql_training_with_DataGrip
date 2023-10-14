-- Section1
#     your 1st query here
SELECT name, year_of_release, ROUND(global_sales * 1000000) AS global_sales_without_decimals
FROM games
WHERE global_sales >= 20
ORDER BY year_of_release DESC, global_sales desc
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

select ordered_by_year.name, ordered_by_year.year_of_release,
       ordered_by_year.other_sales, ordered_by_year.global_sales
from (
                      select *
                      from games
                      order by IF(year_of_release >= '2000', 1, 2), year_of_release
) as ordered_by_year
order by IF(ordered_by_year.year_of_release >= '2000', ordered_by_year.global_sales, ordered_by_year.other_sales) desc, ordered_by_year.id asc ;











