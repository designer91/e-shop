CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `image_url` VARCHAR(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `category`(`name`, `description`, `image_url`, `is_active`) VALUES ("TVs", "All models of TVs here!", "cat_tv.png", 1);
INSERT INTO `category`(`name`, `description`, `image_url`, `is_active`) VALUES ("Laptops", "All models of Laptops here!", "cat_laptops.png", 1);
INSERT INTO `category`(`name`, `description`, `image_url`, `is_active`) VALUES ("Smartphones", "All models of Smartphones here!", "cat_phones.png", 1);
INSERT INTO `category`(`name`, `description`, `image_url`, `is_active`) VALUES ("Accessories", "All models of TVs here!", "cat_tv.png", 0);

CREATE TABLE IF NOT EXISTS `user_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) DEFAULT NULL,
  `last_name` VARCHAR(255) DEFAULT NULL,
  `role` VARCHAR(50) DEFAULT NULL,
  `enabled` BOOLEAN DEFAULT FALSE,
  `password` VARCHAR(50) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `number` VARCHAR(13) DEFAULT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `user_detail`(`first_name`, `last_name`, `role`, `enabled`, `password`, `email`, `number`) VALUES 
							("Nabil", "Azri", "Admin", 1, "p@ssw0rd", "nabil.azri@gmail.com", "+212616984056");
INSERT INTO `user_detail`(`first_name`, `last_name`, `role`, `enabled`, `password`, `email`, `number`) VALUES 
							("Brad", "Pitt", "USER", 1, "p@ssw0rd", "brad.pitt@gmail.com", "+212616984056");
INSERT INTO `user_detail`(`first_name`, `last_name`, `role`, `enabled`, `password`, `email`, `number`) VALUES 
							("Leonardo", "Dicaprio", "USER", 1, "p@ssw0rd", "leo.dicaprio@gmail.com", "+212616984056");
INSERT INTO `user_detail`(`first_name`, `last_name`, `role`, `enabled`, `password`, `email`, `number`) VALUES 
							("John", "Wick", "SUPPLIER", 1, "p@ssw0rd", "john.wick@gmail.com", "+212616984056");
							
CREATE TABLE `product`(
  `id` int NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(20) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `brand` VARCHAR(50) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(10,2) DEFAULT NULL,
  `quantity` INT DEFAULT NULL,
  `is_active` BOOLEAN DEFAULT FALSE, 
  `category_id` INT DEFAULT NULL,
  `supplier_id` INT DEFAULT NULL,
  `purshases` INT DEFAULT 0,
  `views` INT DEFAULT 0,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`category_id`) REFERENCES category (`id`),
  FOREIGN KEY (`supplier_id`) REFERENCES user_detail (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDABCD938XVG", "Galaxy Z Flip 5G", "Samsung", "A full-sized smartphone that folds to fit small-sized pockets", 7999.99, 10, 1, 3, 4, 12, 30);
INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDABCD938IVG", "zBook Workstation", "HP", "Get desktop-level storage and memory with slots for up to 128G", 7500.99, 12, 1, 2, 4, 15, 20);
INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDABCD9378VG", "Samsung S8", "Samsung", "A Fashion Icon Meets a Tech Pioneer", 2500.99, 10, 1, 3, 4, 21, 35);
INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDABCIOD38XVG", "iPhone 13 Pro Max", "iPhone", "A Fashion Icon Meets a Tech Pioneer", 3950.99, 10, 1, 3, 4, 15, 10);
INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDAOKDD938XVG", "Galaxy Z Flip3 5G", "Samsung", "A Fashion Icon Meets a Tech Pioneer", 4999.99, 5, 1, 3, 4, 15, 9);
INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDAOLM938XVG", "iPhone 13", "iPhone", "", 6999.99, 10, 1, 3, 4, 7, 16);
INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDABPO908XVG", "Galaxy Note20 Ultra 5G", "Samsung", "A Fashion Icon Meets a Tech Pioneer", 11199.99, 10, 1, 3, 4, 10, 3);
INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDAKLD938XVG", "Galaxy S20 5G", "Samsung", "A Fashion Icon Meets a Tech Pioneer", 3700.99, 10, 1, 3, 4, 12, 30);
INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDLKUN938XVG", "Class AU8000 Crystal UHD Smart TV", "Samsung", "A Fashion Icon Meets a Tech Pioneer", 3700.99, 10, 1, 1, 4, 12, 30);
INSERT INTO `product`(`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purshases`, `views`) 
		VALUES ("PRDABCD930OPN", "Galaxy Watch4 Classic Thom Browne Edition", "Samsung", "A Fashion Icon Meets a Tech Pioneer", 59.99, 1, 4, 4, 4, 12, 30);


