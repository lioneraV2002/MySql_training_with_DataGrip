-- Section1
delete from users_with_salary
    where family not like '%m%' and family not like '%d%';
-- Section2
delete from users_with_salary
    where family = 'mohammadi' or salary in (7356, 9701, 2885, 7414, 3801);

-- Section3
delete from users_with_salary
    where birth_date between '1995-01-01' and '2000-12-31' or family = 'booazar';
