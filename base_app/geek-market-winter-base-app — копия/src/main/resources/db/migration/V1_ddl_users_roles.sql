drop table  if not exists users_roles;

create table users_roles (
   user_id int(10) not null,
   role_id int(10) not null,
    primary key(id),
    constraint FK_USER_ID foreign key (user_id)
    references users (id),
    constraint FK_ROLE_ID foreign key (role_id)
    references roles (id)
);