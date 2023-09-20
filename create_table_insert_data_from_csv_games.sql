use quera;
create table if not exists games
(
    id              bigint unsigned primary key auto_increment,
    name            varchar(255),
    platform        VARCHAR(255),
    year_of_release YEAR,
    genre           VARCHAR(255),
    publisher       VARCHAR(255),
    na_sales        DOUBLE(10, 2),
    other_sales     DOUBLE(10, 2),
    global_sales    DOUBLE(10, 2)
);


LOAD DATA LOCAL INFILE 'games.csv'
    INTO TABLE games
    FIELDS TERMINATED BY ',' optionally enclosed by '"'
    LINES TERMINATED BY '\n'
    IGNORE 1 LINES
    (name,platform,year_of_release, genre, publisher, na_sales, other_sales, global_sales);


show global variables like 'local_infile';
set global local_infile = true;