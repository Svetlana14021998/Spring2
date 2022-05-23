drop table if not exists delivery_addresses;

create table delivery_addresses (
   id int(10) not null auto_increment,
   user_id int(10) not null,
   address varchar(300) not null,
   primary key(id),
   constraint FK_USER_ADDRESS foreign key (user_id)
   references users(id)
);
