CREATE DATABASE 'demo';
USE demo;

create table users (
	id  int(3) NOT NULL AUTO_INCREMENT,
	studentname varchar(120) NOT NULL,
	projectname varchar(220) NOT NULL,
	projectdescription varchar(120),
	PRIMARY KEY (id)
);

