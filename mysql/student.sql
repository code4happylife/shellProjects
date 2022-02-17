create database test_exam;

use test_exam;

create table student(
id int(10) auto_increment not null,
name varchar(100),
age tinyint unsigned,
sex tinyint unsigned comment '1表示男，0 表示女',
CONSTRAINT sex CHECK (sex in(0,1)) ,
primary key (id));

insert into student( name, age, sex) value ('张三',18,1);
insert into student( name, age, sex) value ('李四',18,1);
insert into student( name, age, sex) value ('王五',18,1);
insert into student( name, age, sex) value ('赵云',18,1);
insert into student( name, age, sex) value ('张飞',18,1);
insert into student( name, age, sex) value ('马超',18,1);
insert into student( name, age, sex) value ('刘备',18,1);
insert into student( name, age, sex) value ('关羽',18,1);
insert into student( name, age, sex) value ('曹操',18,1);
insert into student( name, age, sex) value ('貂蝉',18,0);
insert into student( name, age, sex) value ('花木兰',18,0);

select * from student;
delete from student where name like '%花%';

update student set age = age + 1;

select count(*) from student where sex=1;
select count(*) from student where sex=0;
