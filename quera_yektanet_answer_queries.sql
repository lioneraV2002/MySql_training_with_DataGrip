-- Section1
SELECT
  aircraft_code,
  fare_conditions,
  COUNT(*) AS count
FROM
  seats
GROUP BY
  aircraft_code, fare_conditions
ORDER BY
  aircraft_code, count DESC, fare_conditions;

-- Section2
SELECT
    dayname(DATE(STR_TO_DATE(scheduled_departure, '%Y-%m-%d %H:%i:%s+%T'))) AS day,
    COUNT(*) AS count
FROM
  flights
WHERE
  status = 'Cancelled'
GROUP BY
  day
ORDER BY
  count DESC, day;

-- Section3


-- Section4
