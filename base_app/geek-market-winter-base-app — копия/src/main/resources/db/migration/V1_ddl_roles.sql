drop table  if not exists roles;

create table roles (
    id int(10) not null auto_increment,
    name varchar(30) not null,
    primary key(id)
);