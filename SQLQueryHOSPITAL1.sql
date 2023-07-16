create database hospital;
use hospital;
create table hospital (codhospital int, nombrehospital varchar (50), ciudadhospital varchar (50), 
directorhospital varchar (50), telefonohospital varchar (15), PRIMARY KEY (codhospital));
create table medicos (DNImedico int, nombremedico varchar(50), fechanacmedico date,codhospitalmedico int,
PRIMARY KEY (DNImedico),FOREIGN  key (codhospitalmedico)references hospital(codhospital));
create table pacientes(DNIpaciente int, nombrepaciente varchar (50), nosspaciente varchar (10),
PRIMARY KEY (DNIpaciente));
create table historiaclinica (foliohc varchar (5), fechaalta date,historialhc text, 
DNIpacientehc int, codhospitalhc int, PRIMARY KEY (foliohc),FOREIGN  key (codhospitalhc) references hospital(codhospital));
Alter table historiaclinica add FOREIGN  key (DNIpacientehc) references pacientes(DNIpaciente);
insert into hospital values (1,'imss', 'edo mex', 'Roberto Gomz','5558950278');
insert into hospital values (2,'villada', 'cuautitlan','Juan Sanches', '555899632');
insert into hospital values (3,'iste', 'cuernavaca', 'Santiago Rivera','5558945268');
select * from hospital;
