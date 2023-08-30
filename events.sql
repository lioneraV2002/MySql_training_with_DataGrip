create table if not exists quera.events
(
    id          bigint unsigned auto_increment
        primary key,
    name        varchar(255)                       null,
    description text                               null,
    date        datetime                           null,
    created_at  datetime default CURRENT_TIMESTAMP null
);


