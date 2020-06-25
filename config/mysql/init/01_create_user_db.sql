CREATE DATABASE IF NOT EXISTS cake CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER IF NOT EXISTS 'root'@'cake_php.dev_vpcbr' IDENTIFIED BY 'mypass';
GRANT ALL PRIVILEGES ON cake.* TO 'root'@'cake_php.dev_vpcbr';

FLUSH PRIVILEGES;