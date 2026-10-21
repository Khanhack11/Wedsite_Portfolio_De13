CREATE DATABASE IF NOT EXISTS portfolio CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE portfolio;

CREATE TABLE profiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    student_id VARCHAR(50),
    email VARCHAR(100),
    major VARCHAR(100),
    address VARCHAR(100),
    phone VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO profiles (full_name, student_id, email, major, address, phone) 
VALUES ('Nguyễn Quốc Khánh', 'DTC245220042', 'dtc245220042@ictu.edu.vn', 'An toàn thông tin', 'Thái Nguyên', '0829999456');
