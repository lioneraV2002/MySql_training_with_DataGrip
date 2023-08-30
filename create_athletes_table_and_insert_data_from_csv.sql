create table athletes
(
    name        varchar(255) not null,
    nationality varchar(255) not null,
    discipline  varchar(255) not null
);

LOAD DATA LOCAL INFILE 'athletes.csv'
    INTO TABLE athletes
    FIELDS TERMINATED BY ',' optionally enclosed by '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 LINES
    (name, nationality, discipline)