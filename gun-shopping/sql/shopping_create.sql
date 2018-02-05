-- cart_info
create table cart_info (
  id int(11) not null comment 'id'
  , user_id varchar(16) not null comment 'user_id'
  , temp_user_id varchar(128) comment 'temp_user_id'
  , product_id int(11) not null comment 'product_id'
  , product_count int(11) not null comment 'product_count'
  , price int(11) not null comment 'price'
  , regist_date datetime not null comment 'regist_date'
  , update_date datetime comment 'update_date'
  , constraint cart_info_PKC primary key (id)
) comment 'cart_info' ;

alter table cart_info add unique cart_u (temp_user_id) ;

create index user_id
  on cart_info(user_id);

create index product_id
  on cart_info(product_id);

-- destination_info
create table destination_info (
  id int(11) not null comment 'id'
  , user_id varchar(16) not null comment 'user_id'
  , family_name varchar(32) not null comment 'family_name'
  , first_name varchar(32) not null comment 'first_name'
  , family_name_kana varchar(32) not null comment 'family_name_kana'
  , first_name_kana varchar(32) not null comment 'first_name_kana'
  , email varchar(32) not null comment 'email'
  , tel_number varchar(13) not null comment 'tel_number'
  , user_address varchar(50) not null comment 'user_address'
  , regist_date datetime not null comment 'regist_date'
  , update_date datetime comment 'update_date'
  , constraint destination_info_PKC primary key (id)
) comment 'destination_info' ;

alter table destination_info add unique destination_u (user_id) ;

-- m_category
create table m_category (
  id int(11) not null comment 'id'
  , category_id int(11) not null comment 'category_id'
  , category_name varchar(20) not null comment 'category_name'
  , category_description varchar(100) comment 'category_description'
  , insert_date datetime not null comment 'insert_date'
  , update_date datetime comment 'update_date'
  , constraint m_category_PKC primary key (id)
) comment 'm_category' ;

alter table m_category add unique category_u (category_id) ;

alter table m_category add unique category_u1 (category_name) ;

-- product_info
create table product_info (
  id int(11) not null comment 'id'
  , product_id int(11) not null comment 'product_id'
  , product_name varchar(100) not null comment 'product_name'
  , product_name_kana varchar(100) not null comment 'product_name_kana'
  , product_description varchar(255) not null comment 'product_description'
  , category_id int(11) not null comment 'category_id'
  , price int(11) comment 'price'
  , image_file_path varchar(100) comment 'image_file_path'
  , image_file_name varchar(50) comment 'image_file_name'
  , release_date datetime not null comment 'release_date'
  , release_company varchar(50) comment 'release_company'
  , status tinyint(4) default 0 not null comment '0:無効、1:有効'
  , regist_date datetime not null comment 'regist_date'
  , update_date datetime comment 'update_date'
  , constraint product_info_PKC primary key (id)
) comment 'product_info' ;

alter table product_info add unique product_u (product_id,product_name,product_name_kana) ;

alter table product_info add unique product_u1 (product_id) ;

alter table product_info add unique product_u2 (product_name) ;

alter table product_info add unique product_u3 (product_name_kana) ;

create index category_id
  on product_info(category_id);

-- purchase_history_info
create table purchase_history_info (
  id int(11) not null comment 'id'
  , user_id varchar(16) not null comment 'user_id'
  , product_id int(11) not null comment 'product_id'
  , product_count int(11) not null comment 'product_count'
  , price int(11) not null comment 'price'
  , regist_date datetime not null comment 'regist_date'
  , update_date datetime comment 'update_date'
  , constraint purchase_history_info_PKC primary key (id)
) comment 'purchase_history_info' ;

create index user_id2
  on purchase_history_info(user_id);

create index product_id2
  on purchase_history_info(product_id);

-- user_info
create table user_info (
  id int(11) not null comment 'id'
  , user_id varchar(16) not null comment 'user_id'
  , password varchar(16) not null comment 'password'
  , family_name varchar(32) not null comment 'family_name'
  , first_name varchar(32) not null comment 'first_name'
  , family_name_kana varchar(32) not null comment 'family_name_kana'
  , first_name_kana varchar(32) not null comment 'first_name_kana'
  , sex varchar(1) default '0' not null comment '0:男性、1:女性'
  , email varchar(32) not null comment 'email'
  , status varchar(1) default '0' not null comment '0:無効、1:有効'
  , logined varchar(1) default '0' not null comment '0:未ログイン、1:ログイン済み'
  , regist_date datetime not null comment 'regist_date'
  , update_date datetime comment 'update_date'
  , constraint user_info_PKC primary key (id)
) comment 'user_info' ;

alter table user_info add unique user_id_u (user_id) ;
