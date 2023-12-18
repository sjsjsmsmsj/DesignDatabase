CREATE DATABASE DBDESIGN_ONETABLE
-- CREATE DÙNG ĐỂ TẠO CẤU TRÚC LƯU TRỮ DÀN KHUNG/ THÙNG CHỨA LƯU DATA/ INFO
-- TƯƠNG ĐƯƠNG VỚI VIỆC XÂY PHÒNG CHỨA ĐỒ - DATABASE 
--                  MUA ĐỒ ĐỂ TRONG PHÒNG - TABLE
-- 1 DATABASE CHỨA NHIỀU TABLE - 1 PHÒNG CHỨA NHIỀU TỦ 
USE DBDESIGN_ONETABLE
-- TẠO TABLE LƯU TRỮ HỒ SƠ SV: MÃ SỐ, ĐIỂM TRUNG BÌNH HAY GÌ ĐÓ....
-- 1 SV ~~ 1 OBJECT ~~ 1 ENTITY\
-- 1 TABLE SẼ DÙNG ĐỂ LƯU TRỮ NHIỀU ENTITY
CREATE TABLE StudentV1 
(
    StudentID Char(8),
    LastName NVARCHAR(30),
    FirstName NVARCHAR(30),
    DOB DATETIME,
    Address NVARCHAR(50)
)
DROP TABLE StudentV1
-- THAO TÁC TRÊN DATA 
SELECT * FROM StudentV1
-- ĐƯA DATA VÀO TABLE -- ĐƯA HẾT TẤT CẢ CÁC VÀO, FULL 
INSERT INTO StudentV1 VALUES('23703881', N'THỊNH', N'LÂM', '2005 - 11 - 06', N'HỒ CHÍ MINH') 
-- MỘT SỐ CỘT CHƯA THÈM NHẬP INFO, ĐƯỢC QUYỀN BỎ TRỐNG 
-- MẶC ĐỊNH LÀ NULL, KHI WHERE ADDRESS IS NULL
INSERT INTO StudentV1 VALUES('78123456', N'THÀNH', N'NGUYỄN', '2005 - 29 - 11', NULL)
 -- NULL, KHI WHERE ADDRESS = NULL
 INSERT INTO StudentV1 VALUES('12345678', N'THIỆN', N'PHAN', '2005 - 20 - 10', N'NULL')
-- TUI CHỈ MUỐN LƯU 1 VÀI INFO, KHÔNG ĐỦ CỘT, MIỄN CỘT CÒN LẠI CHO PHÉP BỎ TRỐNG 
INSERT INTO StudentV1(StudentID, FirstName, LastName)
            VALUES('19348334', N'THI', 'LÊ')
INSERT INTO StudentV1(StudentID, FirstName, LastName)
            VALUES(NULL, NULL, NULL) -- SIÊU NGUY HIỂM VÌ DATA BỎ TRỐNG 
INSERT INTO StudentV1(StudentID, FirstName, LastName)
            VALUES('23703881', N'ẢO', N'THẾ')
--TRÙNG MÃ SỐ LÀ ĐIỀU KHÔNG THỂ CHẤP NHẬN ĐƯỢC
-- CẤM TRÙNG TREEN MỌI CELL
-- DÙNG LÀM CHÌA KHÓA(KEY) ĐỂ TÌM RA ĐỂ XÁC ĐỊNH 
--                                         DUY NHẤT 1 ENTITY, 1 SV, 1 OBJECT 
--                                          PRIMARY KEY 
SELECT * FROM STUDENTV1 S WHERE STUDENTID = '23703881'

INSERT INTO StudentV2 VALUES('23703881', N'THỊNH', N'LÂM', '2005 - 11 - 06', N'HỒ CHÍ MINH') 
CREATE TABLE StudentV2 
(
    StudentID Char(8) PRIMARY KEY, -- CẤM TRÙNG VÀ NOT NULL
    LastName NVARCHAR(30),
    FirstName NVARCHAR(30),
    DOB DATETIME,
    Address NVARCHAR(50)
)
 -- BÁO LỖI CẤM TRÙNG VÌ CÓ PRIMARY KEY 
INSERT INTO StudentV2(StudentID, FirstName) 
    VALUES('23703881', 'THI')
-- VÌ PRIMARY LÀ NOT NULL
INSERT INTO StudentV2(StudentID, FirstName)
    VALUES(NULL, NULL, NULL)
INSERT INTO StudentV2(StudentID, FirstName)
    VALUES('THỊNH', NULL, NULL)
INSERT INTO StudentV2 
    VALUES('GD123456', N'THI', N'LÊ', '2005 - 09 - 02', NULL) -- OKE
INSERT INTO StudentV2
    VALUES('GD234567', N'THIỆN', 'PHAN', NULL, NULL)
INSERT INTO StudentV2(StudentID, FirstName, LastName)
    VALUES('SE123456', 'THÀNH', 'NGUYỄN')
INSERT INTO StudentV2(StudentID, FirstName, LastName)
    VALUES(NULL NULL, NULL)
SELECT * FROM StudentV2

CREATE TABLE StudentV3 
(
    StudentID Char(8) PRIMARY KEY, -- CẤM TRÙNG VÀ NOT NULL
    LastName NVARCHAR(30) NOT NULL,
    FirstName NVARCHAR(30) NOT NULL,
    DOB DATETIME NULL,
    Address NVARCHAR(50) NULL -- THỪA DO DEFAUT LÀ VẬY
)

CREATE TABLE StudentV4 
(
    StudentID Char(8), -- CẤM TRÙNG VÀ NOT NULL
    LastName NVARCHAR(30) NOT NULL,
    FirstName NVARCHAR(30) NOT NULL,
    DOB DATETIME NULL,
    Address NVARCHAR(50) NULL, -- THỪA DO DEFAUT LÀ VẬY
    PRIMARY KEY(STUDENTID)
)
INSERT INTO StudentV4(StudentID, FirstName, LastName)
    VALUES('SE123456', N'THÀNH', N'NGUYỄN')
SELECT * FROM StudentV4


CREATE TABLE Student (
  StudentID           char(8) NOT NULL, 
  LastName            varchar(255) NOT NULL, 
  [FirstName varchar] int NOT NULL, 
  PRIMARY KEY (StudentID)
  );
