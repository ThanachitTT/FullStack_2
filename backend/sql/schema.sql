CREATE DATABASE IF NOT EXISTS myshop CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE myshop;

CREATE TABLE IF NOT EXISTS type (
  typeId INT AUTO_INCREMENT PRIMARY KEY,
  name   VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS menu (
  menuId       INT AUTO_INCREMENT PRIMARY KEY,
  name         VARCHAR(100) NOT NULL,
  price        DECIMAL(10,2) NOT NULL,
  isBestSeller TINYINT(1) NOT NULL DEFAULT 0,
  typeId       INT NOT NULL,
  CONSTRAINT fk_menu_type FOREIGN KEY (typeId) REFERENCES type(typeId)
);

INSERT INTO type (name) VALUES ('อาหารจานเดียว'), ('เครื่องดื่ม'), ('ของหวาน');

INSERT INTO menu (name, price, isBestSeller, typeId) VALUES
 ('ข้าวผัดกระเพรา', 60, 1, 1),
 ('ผัดไทย', 70, 0, 1),
 ('ชาเย็น', 35, 1, 2),
 ('กาแฟเย็น', 40, 0, 2),
 ('บัวลอย', 45, 0, 3);
