CREATE DATABASE BBESTCARE
go

IF OBJECT_ID('Customer') IS NOT NULL
	DROP TABLE Customer
GO
CREATE TABLE Customer
(
	Phone				VARCHAR(12)  not null,
	Password			VARCHAR(250) not null,
	Fullname			NVARCHAR(50) null,
	Email				NVARCHAR(50)  null,
	Address				NVARCHAR(50)  null,
	BirthdayBaby		NVARCHAR(50)  NULL,
	Note				NVARCHAR(250) null,
	CONSTRAINT PK_Customer PRIMARY KEY(Phone),
)
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0962064263',N'123',N'Lê Sỹ Chính','chinhlsph08831@fpt.edu.vn',N'126 Nguyễn Đổng Chi','08/07/2000','Hello CHÍNH');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0123456789',N'123',N'Nguyễn Hoàng Anh','anhnh08787@fpt.edu.vn',N'126 Hoàng Cầu','09/07/2000','Hello Anh');
insert into Customer(Phone,Password,FullName,Email,Address,BirthdayBaby,Note) values('0987654321',N'123',N'Nguyễn Duy Quân','quannd8634@fpt.edu.vn',N'Khương Trung','05/07/2000','Hello Quân');
select * from Customer

IF OBJECT_ID('Staff') IS NOT NULL
	DROP TABLE Staff
GO
CREATE TABLE Staff
(
	Phone				VARCHAR(12) not null,
	Password			VARCHAR(250) not null,
	Fullname			NVARCHAR(50) NOT NULL,
	BirthDay			NVARCHAR(50) NOT NULL,
	Gender				NVARCHAR(50) NOT NULL,
	Email				NVARCHAR(50) NOT NULL,
	Address				NVARCHAR(100) NOT NULL,
	HomeTown			NVARCHAR(50) NOT NULL,
	Images				NVARCHAR(100) NOT NULL,
	PeopleID			VARCHAR(12)  NOT NULL,
	AccountNumberBank	VARCHAR(14)  NOT NULL,
	Experience			NVARCHAR(50) NOT NULL,
	Degree				NVARCHAR(50) NOT NULL,
	Role				NVARCHAR(50) NULL,
	Status				NVARCHAR(250)NULL,
	CONSTRAINT PK_Staff PRIMARY KEY(Phone),
)
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0987654321','123',N'Cao Trọng Giap',N'08/07/2000',1,'Giapct@gmail.com',N'126 Nguyễn Đổng Chi',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','No');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0123456789','123',N'Cao Trọng Giap', N'08/07/2000',1,'Giapct@gmail.com',N'126 Nguyễn Đổng Chi',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','No');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'0962064263','123', N'Cao Trọng Giap',N'08/07/2000',1,'Giapct@gmail.com',N'126 Nguyễn Đổng Chi',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','No');
insert into Staff(Phone,Password,Fullname,BirthDay,Gender,Email,Address,HomeTown,Images,PeopleID,AccountNumberBank,Experience,Degree,Role,Status) values(N'01122334455','123',N'Cao Trọng Giap',N'08/07/2000',1,'Giapct@gmail.com',N'126 Nguyễn Đổng Chi',N'Nghệ An','anh1.jpg','123456789009','1223344556',N'3 năm',N'Chứng chỉ chăm sóc trẻ em',N'Nhân viên chăm sóc','No');


select * from Staff 




IF OBJECT_ID('LichKhachHang') IS NOT NULL
	DROP TABLE LichKhachHang
GO
CREATE TABLE LichKhachHang
(
	ID					int identity(1,1) not null,
	Email				Nvarchar(100) not null,
	Phone				VARCHAR(12) not null,
	City				Nvarchar(100) not null,
	District			Nvarchar(100) not null,
	Ward				Nvarchar(100) not null,
	Street				Nvarchar(100) not null,
	Dated				Nvarchar(100) not null,
	Slot				int not null,
	Price				int not null,
	Staff				VARCHAR(12) null,
	Note				Nvarchar(100) null,
	CONSTRAINT PK_LichKhachHang PRIMARY KEY(ID),
	FOREIGN KEY(Phone) REFERENCES Customer,
)
delete from LichKhachHang
---insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'anhnh08787@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Thanh Xuân',N'Khương Trung',N'ngõ 345 Khương Trung',N'2020-12-24',N'4','120000',N'Đã xếp');
---insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'anhnh08787@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Thanh Xuân',N'Khương Trung',N'ngõ 345 Khương Trung',N'2020-12-24',N'4','120000',N'Đã xếp');
---insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'chinhlsph08831@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Nam Từ Liêm',N'Mỹ Đình 1',N'ngõ 90 Hồ Tùng Mậu',N'2020-12-25',N'1','120000',N'Đã xếp');
---insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000',N'Đã xếp');
insert into LichKhachHang values(N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0962064263',N'Đã xếp');
insert into LichKhachHang values(N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0123456789',N'Đã xếp');
insert into LichKhachHang values(N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0987654321',N'Đã xếp');
insert into LichKhachHang values(N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0962064263',N'Đã xếp');


insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'anhnh08787@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Thanh Xuân',N'Khương Trung',N'ngõ 345 Khương Trung',N'2020-12-24',N'4','120000',N'Đã gửi');
insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'anhnh08787@fpt.edu.vn',N'0123456789',N'Hà Nội',N'Thanh Xuân',N'Khương Trung',N'ngõ 345 Khương Trung',N'2020-12-24',N'4','120000',N'Đã gửi');
insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'chinhlsph08831@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Nam Từ Liêm',N'Mỹ Đình 1',N'ngõ 90 Hồ Tùng Mậu',N'2020-12-25',N'1','120000',N'Đã gửi');
insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'quannd08635@fpt.edu.vn',N'0123456789',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000',N'Đã gửi');


---insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'anhnh08787@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Thanh Xuân',N'Khương Trung',N'ngõ 345 Khương Trung',N'2020-12-24',N'4','120000',N'Hoàn thành');
---insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'anhnh08787@fpt.edu.vn',N'0123456789',N'Hà Nội',N'Thanh Xuân',N'Khương Trung',N'ngõ 345 Khương Trung',N'2020-12-24',N'4','120000',N'Hoàn thành');
---insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'chinhlsph08831@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Nam Từ Liêm',N'Mỹ Đình 1',N'ngõ 90 Hồ Tùng Mậu',N'2020-12-25',N'1','120000',N'Hoàn thành');
---insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'quannd08635@fpt.edu.vn',N'0123456789',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000',N'Hoàn thành');
insert into LichKhachHang values(N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0962064263',N'Hoàn thành');
insert into LichKhachHang values(N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0123456789',N'Hoàn thành');
insert into LichKhachHang values(N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0987654321',N'Hoàn thành');
insert into LichKhachHang values(N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0962064263',N'Hoàn thành');
select * from LichKhachHang 
CREATE TABLE History(
	HistoryId			int Identity(1,1),
	ReferenceId			int,
	Email				Nvarchar(100) not null,
	Phone				Nvarchar(100) not null,
	City				Nvarchar(100) not null,
	District			Nvarchar(100) not null,
	Ward				Nvarchar(100) not null,
	Street				Nvarchar(100) not null,
	Dated				Nvarchar(100) not null,
	Price				int not null,
	Slot				Nvarchar(100) not null,
	Staff				Nvarchar(100) null,
	Note				Nvarchar(100) null,
	InsertOrder VARCHAR(50)  null,
	UpdatedOrder VARCHAR(50)  null,
	DeleteOrder VARCHAR(50)  null,
	)
	go
	CREATE TRIGGER dbo.OrdersChanges100
    ON dbo.LichKhachHang
AFTER UPDATE, DELETE
AS

IF EXISTS (
  SELECT * FROM Inserted
)
  -- UPDATE Statement was executed
  INSERT INTO History(
	ReferenceId,
	Email,
	Phone,	
	City,		
	District,
	Ward,		
	Street,	
	Dated,			
	Slot,
	Price,
	Staff,
	Note,
	UpdatedOrder
  )
  SELECT
    d.ID,
    d.Email,
	d.Phone,	
	d.City,		
	d.District,
	d.Ward,		
	d.Street,	
	d.Dated,					
	d.Slot,
	d.Price,
	d.Staff,
	d.Note,
    i.id
  FROM Deleted d
  INNER JOIN Inserted i ON i.id = d.ID
ELSE
  -- DELETE Statement was executed
  INSERT INTO History(
	ReferenceId,
	Email,
	Phone,	
	City,		
	District,
	Ward,		
	Street,	
	Dated,			
	Slot,
	Price,
	Staff,
	Note,
	DeleteOrder
  )
  SELECT
	ID,
	Email,
	Phone,	
	City,		
	District,
	Ward,		
	Street,	
	Dated,			
	Slot,	
	Price,
	Staff,
	Note,
	Id
  FROM Deleted

GO
insert into LichKhachHang(Email,Phone,City,District,Ward,Street,Dated,Slot,Price,Note) values(N'anhnh08787@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Thanh Xuân',N'Khương Trung',N'ngõ 345 Khương Trung',N'2020-12-24',N'4','120000',N'Hoàn thành');



IF OBJECT_ID('LichNhanVien') IS NOT NULL
	DROP TABLE LichNhanVien
GO
CREATE TABLE LichNhanVien
(
	ID					int identity(1,1) not null,
	Phone				varchar(12) not null,
	Fullname			Nvarchar(100) not null,
	District			Nvarchar(100) not null,
	Ward				Nvarchar(100) not null,
	Dated				Nvarchar(100) not null,
	Slot				Nvarchar(100) not null,
	Note				Nvarchar(100) not null,
	CONSTRAINT PK_LichNhanVien PRIMARY KEY(ID),
	FOREIGN KEY(Phone) REFERENCES Staff,
)
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0962064263',N'Quân',N'Hà Nội',N'Thanh Xuân',N'2020-12-12',N'3',N'Chưa Làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note)values('0987654321',N'Chính',N'Hà Nội',N'Thanh Xuân',N'2020-12-12',N'3',N'Chưa Làm');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0123456789',N'Anh',N'Hà Nội',N'Thanh Xuân',N'2020-12-12',N'3',N'Chưa Làm');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0962064263',N'Quân',N'Hà Nội',N'Thanh Xuân',N'2020-12-12',N'3',N'Đã nhận');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note)values('0987654321',N'Chính',N'Hà Nội',N'Thanh Xuân',N'2020-12-12',N'3',N'Đã nhận');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0123456789',N'Anh',N'Hà Nội',N'Thanh Xuân',N'2020-12-12',N'3',N'Đã nhận');

insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0962064263',N'Quân',N'Hà Nội',N'Thanh Xuân',N'2020-12-12',N'3',N'Đã hoàn thành');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note)values('0987654321',N'Chính',N'Hà Nội',N'Thanh Xuân',N'2020-12-12',N'3',N'Đã hoàn thành');
insert into LichNhanVien(Phone,Fullname,District,Ward,Dated,Slot,Note) values('0123456789',N'Anh',N'Hà Nội',N'Thanh Xuân',N'2020-12-12',N'3',N'Đã hoàn thành');

select * from LichNhanVien

IF OBJECT_ID('Rate') IS NOT NULL
	DROP TABLE Rate
GO
CREATE TABLE Rate
(
	ID					int identity(1,1) not null,
	Star				Nvarchar(100) null,
	Dated				Date null,
	Phone				VARCHAR(12) not null,
	NameCustomer		NVARCHAR(50) null,
	Note				NVARCHAR(100) null,
	CONSTRAINT PK_Rate PRIMARY KEY(ID),
	FOREIGN KEY(Phone) REFERENCES Customer(Phone),
)
insert into Rate(Star,Dated,Phone,NameCustomer,Note) values(N'Hài lòng',GETDATE(),'0123456789',N'Lê Sỹ Chính',N'hihi');
select * from Rate


IF OBJECT_ID('Orders') IS NOT NULL
	DROP TABLE Orders
GO
CREATE TABLE Orders
(
	ID					int identity(1,1) not null,
	Date				Date not null,
	Phone				VARCHAR(12) not null,

	CONSTRAINT PK_Orders PRIMARY KEY(ID),
)

insert into Orders(Date,Phone) Values (GETDATE(),'0987763552')
select * from orders

IF OBJECT_ID('OrderDetail') IS NOT NULL
	DROP TABLE OrderDetail
GO
CREATE TABLE OrderDetail
(
	ID					int identity(1,1) not null,
	ID_Orders			int not null,
	Email				Nvarchar(100) not null,
	Phone				VARCHAR(12) not null,
	City				Nvarchar(100) not null,
	District			Nvarchar(100) not null,
	Ward				Nvarchar(100) not null,
	Street				Nvarchar(100) not null,
	Dated				Nvarchar(100) not null,
	Slot				int not null,
	Price				int not null,
	Staff				VARCHAR(12) null,
	Note				Nvarchar(100) null,
	CONSTRAINT PK_OrderDetail PRIMARY KEY(ID),
	---FOREIGN KEY(ID_Orders) REFERENCES Orders,
)

insert into OrderDetail values((select Max(ID) from Orders),N'quannd08635@fpt.edu.vn',N'0962064263',N'Hà Nội',N'Hoàn Kiếm',N'Lý Thái Tổ',N'123 Đinh Tiên Hoàng',N'2020-12-21',N'4','120000','0962064263',N'Hoàn thành');

select * from OrderDetail

 

 SELECT COUNT(Price) AS ID_Orders FROM OrderDetail where ID_Orders = '3'


 (Select 12000*(SELECT COUNT(Price) AS ID_Orders FROM OrderDetail where ID_Orders = '3')from OrderDetail)
 
 (SELECT COUNT(Price) AS ID_Orders FROM OrderDetail where ID_Orders = '3');
 , 120000*(SELECT COUNT(Price) AS ID_Orders FROM OrderDetail where ID_Orders = (select Max(ID) from Orders))