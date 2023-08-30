create table if not exists quera.event_user
(
    user_id  bigint unsigned null,
    event_id bigint unsigned null,
    constraint event_user_ibfk_1
        foreign key (user_id) references quera.users (id)
            on delete cascade,
    constraint event_user_ibfk_2
        foreign key (event_id) references quera.events (id)
);

create index event_id
    on quera.event_user (event_id);

create index user_id
    on quera.event_user (user_id);


