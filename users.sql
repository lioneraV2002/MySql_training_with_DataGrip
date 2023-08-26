create table if not exists users
(
    id         bigint unsigned auto_increment
        primary key,
    name       varchar(255)                       null,
    family     varchar(255)                       null,
    email      varchar(50)                        null,
    password   varchar(255)                       null,
    created_at datetime default CURRENT_TIMESTAMP null
);

