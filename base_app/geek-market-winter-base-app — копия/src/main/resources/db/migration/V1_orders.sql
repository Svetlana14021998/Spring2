drop table if not exists orders;

create table orders (
   id int(10) not null auto_increment,
   user_id int(10) not null,
   price decimal(7,2) not null,
   delivery_price decimal(7,2) not null,
   delivery_address_id int(10) not null,
   phone_number varchar(15) not null,
   status_id int(10) not null,
   delivery_date timestamp not null,
   create_at timestamp not null default current_timestamp,
   update_at timestamp not null default current_timestamp,
   primary key(id),
   constraint FK_DELIVERY_ADDRESS_ID foreign key (delivery_address_id)
   references delivery_addresses(id),
   constraint FK_STATUS_ID foreign key (status_id)
   references orders_statuses(id),
   constraint FK_USER_ID foreign key (user_id)
   references users(id)
);