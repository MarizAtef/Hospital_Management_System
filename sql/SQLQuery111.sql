create database Hospital
Create Table Doctor (
    DoctorId int not null IDENTITY(1,1) primary key ,
    DoctorFName varchar(20),
	DoctorLName varchar(20),
    DoctorAddress varchar(30), 
    DoctorEmail varchar(30), 
    DoctorTel INT,
    DeptName varchar(30)	
		
);
Create Table Patient (
    patientId int not null IDENTITY(1,1) primary key ,
    patientFName varchar(30),
	patientLName varchar(30),
    patientAddress varchar(30),
    patientEmail varchar(30), 
    patientTel int,
	DoctorId INT,
	 Foreign key (DoctorId)  References Doctor(DoctorId) 
    
);
Create Table Nurse (
    nurseId int not null IDENTITY(1,1) primary key ,
    nurseFName varchar(30),
	nurseLName varchar(30),
    nurseAddress varchar(30),
    nurseEmail varchar(30), 
    nurseTel int,
	patientId int,
	Foreign key (patientId) References Patient (patientId)
    
);
Create Table Room (
    roomNo int not null IDENTITY(1,1) primary key,
    roomType varchar(30),
    roomPrice float,
	patientId int,
	Foreign key (patientId) References Patient (patientId)
);
Create Table Medicine (
    medId int not null IDENTITY(1,1) primary key,
    medName varchar(30),
    medPrice float,
	patientId int,
	Foreign key (patientId) References Patient (patientId)

);

Create Table Department (
    DeptId int not null IDENTITY(1,1) ,
    DeptName varchar(30) ,
	DoctorId INT,
	Primary key(DeptId,DeptName),
 Foreign key (DoctorId) References Doctor(DoctorId)
);
create Table logged (
USERNAME varchar(20),
PASS varchar(20),
job varchar(10)
);

Insert into logged values('shadygamal','gggg5555','Manager');
Insert into logged values('khaledramzy','1111nnnn','Manager');
Insert into logged values('ashrafhelmy','5555mmmm','Client');
Insert into logged values('amrghanem','hhhh3333','Client');

Insert into Doctor ( DoctorFName,DoctorLName,DoctorAddress,DoctorEmail,DoctorTel,DeptName)
values('Shady','Gamal' ,'Naser City', 'Hany@gmail.com',01267478237 ,'Pediatrics' );
Insert into Doctor ( DoctorFName,DoctorLName,DoctorAddress,DoctorEmail,DoctorTel,DeptName)
values( 'Ayman','Ali', 'Giza', 'Ayman@gmail.com',01572169654,'Emergency Medicine' );
Insert into Doctor ( DoctorFName,DoctorLName,DoctorAddress,DoctorEmail,DoctorTel,DeptName)
values(  'Tamer','Fawzy','Dokki', 'Tamer@gmail.com',01228954237 , 'Surgery ' );

Insert into Patient(patientFName,patientLName,patientAddress,patientEmail,patientTel,DoctorId)
values( 'Ali','Ahmed' ,'Naser City', 'Hany@gmail.com',01279453233 ,3 );
Insert into Patient(patientFName,patientLName,patientAddress,patientEmail,patientTel,DoctorId)
values('Mai','Omar' ,'cairo', 'Mai@gmail.com',01244667722 ,2 );
Insert into Patient(patientFName,patientLName,patientAddress,patientEmail,patientTel,DoctorId)
values( 'Aml','Hany' ,'Dokki', 'Aml@gmail.com',01006644991,1  );

Insert into Nurse(nurseFName,nurseLName,nurseAddress,nurseEmail,nurseTel,patientId)
values( 'ola','khaled' ,'Dokki', 'Ola@gmail.com',012333333322 ,4 );
Insert into Nurse (nurseFName,nurseLName,nurseAddress,nurseEmail,nurseTel,patientId)
values( 'Hamza','GHanem' ,'Giza', 'Hamza@gmail.com',01133345434,2  );
Insert into Nurse(nurseFName,nurseLName,nurseAddress,nurseEmail,nurseTel,patientId)
values( 'Amr','Helmy' ,'AL Maddi', 'Amr@gmail.com',0123445555,1 );

Insert into Room  (roomType,roomPrice,patientId)values( 'single', 3000,1);
Insert into Room  (roomType,roomPrice,patientId)values( 'single', 40000,3);
Insert into Room  (roomType,roomPrice,patientId)values( 'single', 50000,2);

Insert into Medicine (medName,medPrice,patientId)
values( 'pandol', 100,2);
Insert into Medicine (medName,medPrice,patientId)
values( 'paracetamol', 400,1);
Insert into Medicine (medName,medPrice,patientId)
values( 'profin', 500,3);

Insert into Department (DeptName,DoctorId)values( 'Pediatrics ',2);
Insert into Department (DeptName,DoctorId)values( 'Surgery ',3);
Insert into Department (DeptName,DoctorId)values( 'Emergency Medicine',1);

