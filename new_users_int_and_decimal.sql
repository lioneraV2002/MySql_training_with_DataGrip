create table if not exists new_users_int_and_decimal
(
    name   varchar(45)    not null,
    amount int unsigned   null,
    price  decimal(10, 2) not null
);

