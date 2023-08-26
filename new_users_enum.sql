create table if not exists new_users_enum
(
    title    varchar(255)                   not null,
    priority enum ('low', 'medium', 'high') not null
);

