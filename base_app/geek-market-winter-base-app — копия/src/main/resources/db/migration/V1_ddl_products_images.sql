drop table  if not exists products_images;

create table products_images (
   id int(10) not null auto_increment,
   product_id int(10) not null,
   path varchar(100) not null,
   primary key(id),
   constraint FK_PRODUCT_IMAGE foreign key (product_id)
   references products(id)
);