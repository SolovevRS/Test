CREATE TABLE `Bank`(
    `id_bank` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Code'
);
ALTER TABLE
    `Bank` ADD PRIMARY KEY `bank_id_bank_primary`(`id_bank`);
CREATE TABLE `Product`(
    `id_prod` INT NOT NULL COMMENT 'Code',
    `id_bank` INT NOT NULL COMMENT 'Code',
    `prod_kategor` TINYINT(1) NOT NULL COMMENT 'Option',
    `status` TINYINT(1) NOT NULL,
    `activ_for_sale` TINYINT(1) NOT NULL,
    `start_date_offline` DATE NOT NULL,
    `start_date_online` DATE NOT NULL,
    `Partner-availab` TINYINT(1) NOT NULL
);
ALTER TABLE
    `Product` ADD PRIMARY KEY `product_id_prod_primary`(`id_prod`);
ALTER TABLE
    `Product` ADD PRIMARY KEY `product_id_bank_primary`(`id_bank`);
CREATE TABLE `Cust_phone`(
    `id_Cust` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Code',
    `phone` TEXT NOT NULL
);
ALTER TABLE
    `Cust_phone` ADD PRIMARY KEY `cust_phone_id_cust_primary`(`id_Cust`);
ALTER TABLE
    `Cust_phone` ADD PRIMARY KEY `cust_phone_phone_primary`(`phone`);
CREATE TABLE `Departament`(
    `id_bank` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Code',
    `ID dep` INT NOT NULL COMMENT 'Code',
    `Name_dep` TEXT NOT NULL,
    `Work time` TEXT NOT NULL,
    `Geoloc` TEXT NOT NULL
);
ALTER TABLE
    `Departament` ADD PRIMARY KEY `departament_id_bank_primary`(`id_bank`);
ALTER TABLE
    `Departament` ADD PRIMARY KEY `departament_id dep_primary`(`ID dep`);
CREATE TABLE `Customer`(
    `id_Cust` INT NOT NULL COMMENT 'Code',
    `Customer name` TEXT NOT NULL,
    `e-mail` TEXT NOT NULL,
    `Languge` INT NOT NULL COMMENT 'Code',
    `Pers_manager` INT NOT NULL COMMENT 'id_Cust',
    `Partner` INT NOT NULL COMMENT 'id_Cust'
);
ALTER TABLE
    `Customer` ADD PRIMARY KEY `customer_id_cust_primary`(`id_Cust`);
CREATE TABLE `URL`(
    `id_bank` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Code',
    `URL` TEXT NOT NULL
);
ALTER TABLE
    `URL` ADD PRIMARY KEY `url_id_bank_primary`(`id_bank`);
CREATE TABLE `Price`(
    `id_prod` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Code',
    `price` DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    `Price` ADD PRIMARY KEY `price_id_prod_primary`(`id_prod`);
CREATE TABLE `Languge`(
    `id_Languge` INT NOT NULL COMMENT 'Code',
    `opisan_Languge` TEXT NOT NULL
);
ALTER TABLE
    `Languge` ADD PRIMARY KEY `languge_id_languge_primary`(`id_Languge`);
CREATE TABLE `Order`(
    `Order_id` INT NOT NULL,
    `id_bank` INT NOT NULL,
    `id_prod` INT NOT NULL,
    `prod_kategor` TINYINT(1) NOT NULL
);
ALTER TABLE
    `Order` ADD PRIMARY KEY `order_order_id_primary`(`Order_id`);
CREATE TABLE `Name`(
    `id_prod` INT NOT NULL COMMENT 'Code',
    `id_Languge` INT NOT NULL COMMENT 'Code',
    `Name` TEXT NOT NULL
);
ALTER TABLE
    `Name` ADD PRIMARY KEY `name_id_prod_primary`(`id_prod`);
ALTER TABLE
    `Name` ADD PRIMARY KEY `name_id_languge_primary`(`id_Languge`);
CREATE TABLE `Partner`(
    `id_bank` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Code',
    `Partner` TEXT NOT NULL
);
ALTER TABLE
    `Partner` ADD PRIMARY KEY `partner_id_bank_primary`(`id_bank`);