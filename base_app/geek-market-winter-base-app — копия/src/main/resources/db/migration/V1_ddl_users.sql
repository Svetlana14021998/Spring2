drop table  if not exists users;

create table users (
    id int(10) not null auto_increment,
    username varchar(30) not null,
    password varchar(30) not null,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    email varchar(30) not null,
    primary key(id)
);