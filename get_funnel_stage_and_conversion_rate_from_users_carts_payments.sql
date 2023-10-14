(SELECT 'cart'                                                     AS funnel_stage,
        ROUND(COUNT(DISTINCT c.user_id) / COUNT(DISTINCT u.id), 4) AS conversion_rate
 FROM users u
          LEFT JOIN
      (SELECT user_id
       FROM carts
       GROUP BY user_id) c ON u.id = c.user_id)

union
(select 'payment' as funnel_stage,
       round(COUNT(distinct d.user_id) / COUNT(distinct u.id), 4) as conversion_rate
from users u
left join
(
    select user_id, count(user_id)
    from users
             join carts c on users.id = c.user_id
             join payments p on c.id = p.cart_id
    group by user_id
) d on d.user_id = u.id);