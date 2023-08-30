-- Section1
select *
from hospitals
        WHERE CONCAT(provider_number, name, address, city, state, zip_code, owner) LIKE '%x%';
-- Section2
delete
from hospitals
where concat(provider_number, zip_code) like '%x%';
-- Section3
update hospitals
set name = 'PROBABLY AN ERROR'
where name like '%x%';
