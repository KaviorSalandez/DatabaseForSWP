create database SWP
use SWP

CREATE TABLE [Roles] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(255)
)
GO

CREATE TABLE [Users] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [loginType] int,
  [role_id] int,
  [firstname] nvarchar(50),
  [lastname] nvarchar(50),
  [username] nvarchar(50),
  [password] nvarchar(32),
  [email] nvarchar(150),
  [phone_number] nvarchar(15),
  [address] nvarchar(200),
  [created_at] datetime,
  [updated_at] datetime,
  [deleted] int
)
GO


go
CREATE TABLE [Categories] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(100)
)
GO

CREATE TABLE [Products] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [category_id] int,
  [title] nvarchar(250),
  [gender_id] int, -- men women unnisex
  [price_in] int,
  [price_out] int,
  [discount_id] int,
  [thumbnail] nvarchar(500),
  [description] nvarchar(1500),
  [size_id] int,
  [quantity] int,
  [created_at] datetime,
  [updated_at] datetime
)
GO


go 
CREATE TABLE [Genders] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(50)
)



CREATE TABLE [Sizes] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(250),
  [value] int 
)
GO



CREATE TABLE [Galeries] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [product_id] int,
  [thumbnail] nvarchar(500)
)
GO

CREATE TABLE [FeedBacks] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [user_id] int,
  [product_id] int,
  [firstname] nvarchar(30),
  [lastname] nvarchar(30),
  [email] nvarchar(250),
  [phone_number] nvarchar(20),
  [note] nvarchar(1000),
  [created_at] datetime,
  [updated_at] datetime
)
GO

CREATE TABLE [Orders] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [user_id] int,
  [firstname] nvarchar(30),
  [lastname] nvarchar(30),
  [email] nvarchar(150),
  [phone_number] nvarchar(20),
  [address] nvarchar(200),
  [note] nvarchar(1000),
  [order_date] datetime,
  [status_id] int,
  [total_money] int
)
GO

CREATE TABLE [Status] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(50)
)
GO

CREATE TABLE [Order_Details] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [order_id] int,
  [product_id] int,
  [price] int,
  [num] int,
  [total_money_in] int,
  [total_money_out] int
)
GO

CREATE TABLE [Discounts] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [value] int
)
GO

ALTER TABLE [Users] ADD FOREIGN KEY ([role_id]) REFERENCES [Roles] ([id])
GO

ALTER TABLE [Galeries] ADD FOREIGN KEY ([product_id]) REFERENCES [Products] ([id])
GO

ALTER TABLE [Products] ADD FOREIGN KEY ([category_id]) REFERENCES [Categories] ([id])
GO

ALTER TABLE [Products] ADD FOREIGN KEY ([size_id]) REFERENCES [Sizes] ([id])
GO

ALTER TABLE [Products] ADD FOREIGN KEY ([gender_id]) REFERENCES [Genders] ([id])
GO

ALTER TABLE [Order_Details] ADD FOREIGN KEY ([order_id]) REFERENCES [Orders] ([id])
GO

ALTER TABLE [Order_Details] ADD FOREIGN KEY ([product_id]) REFERENCES [Products] ([id])
GO

ALTER TABLE [Orders] ADD FOREIGN KEY ([status_id]) REFERENCES [Status] ([id])
GO

ALTER TABLE [Products] ADD FOREIGN KEY ([discount_id]) REFERENCES [Discounts] ([id])
GO




ALTER TABLE [FeedBacks] ADD FOREIGN KEY ([user_id]) REFERENCES [Users] ([id])
GO

ALTER TABLE [FeedBacks] ADD FOREIGN KEY ([product_id]) REFERENCES [Products] ([id])
GO

ALTER TABLE [Orders] ADD FOREIGN KEY ([user_id]) REFERENCES [Users] ([id])
GO
