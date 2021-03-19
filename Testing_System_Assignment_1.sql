DROP DATABASE if exists  Testing_System_Assignment_1;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_1;
use Testing_System_Assignment_1;

create table Department (
DepartmentID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
DepartmentNAME varchar(50) 
);
create table Position1 (
PositionID  int NOT NULL PRIMARY KEY AUTO_INCREMENT,
PositionName varchar(50) 
);
create table Account1 (
AccountID  int NOT NULL PRIMARY KEY AUTO_INCREMENT,
Email  varchar(50) ,
Username varchar(50) ,
FullName varchar(50) ,
DepartmentID int ,
PositionID int ,
CreateDate date
);
create table Group1 (
GroupID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
GroupName varchar(50),
CreatorID int ,
CreateDate date 
);
create table GroupAccount (
GroupID int NOT NULL ,
AccountID int ,
JoinDate date 
);
create table TypeQuestion (
TypeID  int NOT NULL PRIMARY KEY AUTO_INCREMENT,
TypeName varchar(50)
);
create table CategoryQuestion (
CategoryID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
CategoryName varchar(50)
);
create table Question (
QuestionID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
Content varchar(50),
CategoryID int,
TypeID int,
CreatorID int,
CreateDate date
);
create table Answer (
AnswerID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
Content varchar(50),
QuestionID int ,
isCorrect enum('Trule','False')
);
create table Exam (
ExamID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
Code int ,
Title varchar(50),
CategoryID int,
Duration time,
CreatorID int,
CreateDate date
);
create table ExamQuestion (
ExamID int,
QuestionID int 
);


-- add data
insert into Department(DepartmentID, DepartmentNAME)
values
(1,  N'Ceo'),
(2,  N'sale'),
(3,  N'bảo vệ'),
(4,  N'nhân sự'),
(5,  N'kỹ thuật');

insert into Position1(PositionID, PositionName)
values
(1,  N'dev'),
(2,  N'pm'),
(3,  N'ba'),
(4,  N'cto'),
(5,  N'test');

