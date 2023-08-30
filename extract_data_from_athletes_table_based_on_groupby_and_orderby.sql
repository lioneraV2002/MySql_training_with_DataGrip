select name
from athletes
where nationality = 'Islamic Republic of Iran'
group by name
order by name ;

select discipline, nationality, count(name) as count
from athletes
group by nationality,discipline
order by count desc;

select distinct nationality, count(name) as count
from athletes
group by nationality
order by count desc;