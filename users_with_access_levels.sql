create table if not exists quera.users_with_access_levels
(
    id         bigint auto_increment
        primary key,
    level      enum ('user', 'admin') default 'user' not null,
    name       varchar(45)                           not null,
    family     varchar(45)                           not null,
    birth_date datetime                              null
);


