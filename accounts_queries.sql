use quera;

-- Section1
SELECT ACCOUNT_NO
FROM accounts
GROUP BY ACCOUNT_NO
ORDER BY count(*) DESC;

-- Section2

select YEAR(DATE), DATE
from accounts
group by DATE
having count(*) > 10
order by count(*) desc;

-- Section3
SELECT ACCOUNT_NO, BALANCE
FROM accounts
WHERE (ACCOUNT_NO, DATE) IN (
    SELECT ACCOUNT_NO, MAX(DATE)
    FROM accounts
    GROUP BY ACCOUNT_NO
)
AND BALANCE < -1000000000
ORDER BY BALANCE;


-- Section4

START TRANSACTION;
UPDATE accounts SET balance = balance - 1000000 WHERE ACCOUNT_NO = 45532;
UPDATE accounts SET balance = balance + 1000000 WHERE ACCOUNT_NO = 32124;
COMMIT;