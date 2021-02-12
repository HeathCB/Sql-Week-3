create database socialMedia;

use socialMedia;
drop table if exists comments;
drop table if exists post;
drop table if exists users;

create table if not exists users (
	username varchar( 50 ) not null,
    email varchar( 50 ) not null,
    passwrd varchar( 50 ) not null,
    primary key (username)
);

create table if not exists post (
	post_id int( 11 ) not null,
    post_txt text( 255 ) not null,
    post_time datetime default current_timestamp not null,
    username varchar( 50 ) not null,
    primary key ( post_id ),
    foreign key ( username ) references user(username)
);

create table if not exists comments (
	comment_id int( 11 ),
    comment_text text( 255 ),
    comment_time datetime default current_timestamp not null,
    post_id int ( 11 ),
    username varchar( 50 ),
    primary key ( comment_id ),
    foreign key ( username ) references users( username ),
    foreign key ( post_id ) references post( post_id )
);

Select * from comments;