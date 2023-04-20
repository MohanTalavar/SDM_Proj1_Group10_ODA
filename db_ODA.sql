create table Patient (
 pid int primary key,
 pname varchar(30) not null,
 pphno varchar(10) not null unique,
 paddress varchar(100),
 pmail varchar(100) not null unique,
 ppass varchar (20) not null
 );
	
create table Doctor (
 did int primary key,
 dname varchar(30) not null,
 dmail varchar(80)  not null,   
 specialization varchar(50) not null,
 dpass varchar(20) not null
 );
	
	
create table Appointment (
 Aptid int primary key,
 pid int,
 did int,
 testid int,
 Adate date not null,
 Atime int not null,
 constraint fkk_pid foreign key(pid) references Patient(pid),
 constraint fk_did foreign key(did) references Doctor(did),
 constraint fk_test foreign key(testid) references Doctor(testid)
 );
	
	
	
create table Test (
 testid int primary key,
 tname varchar(80) not null
 );
	
	