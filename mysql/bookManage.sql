show databases ;
use test;
show tables ;

create table books(
    id int unsigned primary key auto_increment not null ,
    name varchar(20) default '',
    position varchar(40) default '',
    status enum('在库', '出借') default '在库',
    borrower varchar(20) default ''
);

use test;
select * from books;
describe books;

use test;
insert into books(name, position) value('python 入门到精通', 'A区2号架3层');

