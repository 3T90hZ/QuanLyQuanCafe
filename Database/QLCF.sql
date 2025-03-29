use QL_QuanCafe

drop table TableFood
create table TableFood
(
id int identity primary key,
name nvarchar(100) not null default N' bàn chưa có tên',
status nvarchar(100) not null default N'Trống'
);


create table AccountType
(
id int primary key,
name nvarchar(100)
);


create table Account
(
UserName nvarchar(100) primary key,
DisplayName nvarchar(100) not null default N'User',
Password nvarchar(100) not null default 1,
Type int not null default 0 
foreign key (Type) references dbo.AccountType(id)
);

drop table FoodCategory
create table FoodCategory
(
id int identity primary key,
name nvarchar(100) not null default N'Chưa đặt tên'
);

drop table Food
create table Food
(
id int identity primary key,
name nvarchar(100) not null default N'Chưa đặt tên',
idCategory int not null,
price float not null default 0,

foreign key (idCategory) references dbo.FoodCategory(id)
);


drop table Bill
create table Bill
(
id int identity primary key,
TimeCheckIn datetime not null Default CONVERT(VARCHAR(30), GETDATE(), 120),
TimeCheckOut datetime,
discount int default 0,
idTable int not null,
status int not null default 0,
totalPrice float,
username nvarchar(100) null, 
foreign key (username) references dbo.Account(username),
foreign key (idTable) References dbo.TableFood(id)
);


drop table BillInfo
create table BillInfo
(
id int identity primary key,
idBill int not null,
idFood int not null,
count int not null default 0

foreign key (idBill) references dbo.Bill(id),
foreign key (idFood) references dbo.Food(id)
);

--------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO AccountType(id, name)
VALUES(1, 'admin');
INSERT INTO AccountType(id, name)
VALUES(2, 'staff');

INSERT INTO Account(UserName, password, DisplayName,Type)
VALUES('admin', 'admin', N'Admin', 1);
INSERT INTO Account(UserName, password, DisplayName,Type)
VALUES('staff', 'staff', N'Staff', 2)

INSERT INTO TableFood(name)
VALUES('Bàn 1');
INSERT INTO TableFood(name)
VALUES('Bàn 2');
INSERT INTO TableFood(name)
VALUES('Bàn 3');
INSERT INTO TableFood(name)
VALUES('Bàn 4');
INSERT INTO TableFood(name)
VALUES('Bàn 5');
INSERT INTO TableFood(name)
VALUES('Bàn 6');
INSERT INTO TableFood(name)
VALUES('Bàn 7');
INSERT INTO TableFood(name)
VALUES('Bàn 8');
INSERT INTO TableFood(name)
VALUES('Bàn 9');
INSERT INTO TableFood(name)
VALUES('Bàn 10');

INSERT INTO FoodCategory(name)
VALUES('Cà phê');
INSERT INTO FoodCategory(name)
VALUES('Bánh');
INSERT INTO FoodCategory(name)
VALUES('Kem');
INSERT INTO FoodCategory(name)
VALUES('Trà');

INSERT INTO Food(name, idCategory, price)
VALUES('Espresso', 1, 30000);
INSERT INTO Food(name, idCategory, price)
VALUES('Latte', 1, 0);
INSERT INTO Food(name, idCategory, price)
VALUES('Đen đá', 1, 15000);
INSERT INTO Food(name, idCategory, price)
VALUES('Americano', 1, 40000);
INSERT INTO Food(name, idCategory, price)
VALUES('Cappuccino', 1, 40000);
INSERT INTO Food(name, idCategory, price)
VALUES('Sernik', 2, 25000);
INSERT INTO Food(name, idCategory, price)
VALUES('Kladdkaka', 2, 32000);
INSERT INTO Food(name, idCategory, price)
VALUES('Medovik', 2, 36000);
INSERT INTO Food(name, idCategory, price)
VALUES('Bánh kếp', 2, 27000);
INSERT INTO Food(name, idCategory, price)
VALUES('Donut', 2, 20000);
INSERT INTO Food(name, idCategory, price)
VALUES('Gelato', 3, 15000);
INSERT INTO Food(name, idCategory, price)
VALUES('Sorbet', 3, 18000);
INSERT INTO Food(name, idCategory, price)
VALUES('Sherbet', 3, 16000);
INSERT INTO Food(name, idCategory, price)
VALUES('Kem sữa chua', 3, 10000);
INSERT INTO Food(name, idCategory, price)
VALUES('Milkshakes', 3, 20000);
INSERT INTO Food(name, idCategory, price)
VALUES('Trà sữa', 4, 15000);
INSERT INTO Food(name, idCategory, price)
VALUES('Ô long', 4, 22000);
INSERT INTO Food(name, idCategory, price)
VALUES('Hồng trà', 4, 17000);
INSERT INTO Food(name, idCategory, price)
VALUES('Trà chanh', 4, 10000);
INSERT INTO Food(name, idCategory, price)
VALUES('Trà sen', 4, 24000);


 