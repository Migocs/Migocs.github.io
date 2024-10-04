create database Castillo_Gonzalo
use Castillo_Gonzalo;
create table Gonzalo
(Cod_boleto int primary key,
Nombre_Ciudad varchar (50),
Pasajeros varchar (50),
Empresa varchar (100) ,
Fecha_salida varchar(100),
Fecha_regreso varchar(100),
)

Insert into Gonzalo values('1001','Pucallpa','01','Civa','10/10/2024','20/10/2024');
Insert into Gonzalo values('1002','Ayacucho','04','Flore','24/10/2024','28/10/2024');
Insert into Gonzalo values('1003','Trujillo','01','Moviltours','04/10/2024','7/10/2024');
Insert into Gonzalo values('1004','Cusco','03','Cruz del Sur','11/10/2024','16/10/2024');
Insert into Gonzalo values('1005','Loreto','02','Civa','17/10/2024','20/10/2024');
Insert into Gonzalo values('1006','Arequipa','01','Flores','2/10/2024','4/10/2024');

select *from Gonzalo