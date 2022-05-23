drop table  if not exists categories;

create table categories (
    id int(10) not null auto_increment,
    title varchar(50) not null,
    description varchar(500) not null,
    primary key(id)
);