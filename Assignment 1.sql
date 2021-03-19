create table Trainee (
TraineeID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
Full_Name varchar(50),
Birth_Date date,
Gender enum('male','female','unknown'),
ET_IQ int,
ET_Gmath int,
ET_English int,
Training_Class int,
Evaluation_Notes varchar(100)
);
alter table Trainee
add VTI_Account varchar(50) not null unique key ;

create table nv (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name1 varchar (50),
code1 varchar(5),
ModifiedDate datetime
);

create table nv (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name2 varchar (50),
BirthDate date,
Gender enum('0','1','NULL'),
IsDeletedFlag enum('0','1')
);


