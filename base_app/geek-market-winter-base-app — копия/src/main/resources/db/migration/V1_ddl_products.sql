drop table  if not exists products;

create table products (
    id int(10) not null auto_increment,
    category_id int(10) not null,
    vendor_code varchar(8) not null,
    title varchar(50) not null,
    short_description varchar(250) not null,
    full_description varchar(2500) not null,
    price decimal(7,2) not null,
    create_at timestamp not null default current_timestamp,
    update_at timestamp not null default current_timestamp,
    primary key(id),
    constraint FK_CATEGORY_ID foreign key (category_id)
    references categories(id)
);