create table if not exists users_timestamp_datetime
(
    name             varchar(45) not null,
    birth_date_stamp timestamp   null,
    birth_date       datetime    null
);

