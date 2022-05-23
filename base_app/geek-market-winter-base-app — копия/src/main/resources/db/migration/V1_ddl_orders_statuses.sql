drop table  if not exists orders_statuses;

create table orders_statuses (
  id int(10) not null auto_increment,
  title varchar(30),
  primary key(id),
);