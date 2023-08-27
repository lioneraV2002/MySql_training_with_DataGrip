create table if not exists users
(
    id         bigint unsigned auto_increment primary key,
    name       varchar(255)                       ,
    family     varchar(255)                       ,
    email      varchar(50)                        ,
    password   varchar(255)                       ,
    created_at datetime default CURRENT_TIMESTAMP
);

