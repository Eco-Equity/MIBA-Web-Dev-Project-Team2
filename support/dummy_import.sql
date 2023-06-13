SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- prducts table
CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `n_shares` int(11) DEFAULT NULL,
  `focus` varchar(20) DEFAULT NULL,
  `completion` date DEFAULT NULL,
  `risk` float(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `products` (`prod_id`, `name`, `country`, `price`, `n_shares`, `focus`, `completion`, `risk`) VALUES
(1, 'Bio Farming France 1', 'France', 100, 769, 1, '2028-04-30', 0.7) ,
(2, 'Bio Farming Italy 1', 'Italy', 400, 639, 1, '2029-01-04', 0.7) ,
(3, 'Bio Farming Spain 1', 'Spain', 700, 761, 1, '2024-09-25', 0.4) ,
(4, 'CO2 Extractor Estonia', 'Estonia', 700, 691, 2, '2026-01-20', 0.5) ,
(5, 'Green Buildings Berlin 1', 'Germany', 900, 951, 3, '2028-08-30', 0.5) ,
(6, 'Green Buildings Berlin 2', 'Germany', 500, 767, 3, '2030-10-29', 0.8) ,
(7, 'Offshore Wind Park France 1', 'France', 700, 221, 4, '2026-07-16', 0.8) ,
(8, 'Offshore Wind Park Portugal 1', 'Portugal', 100, 611, 4, '2024-08-26', 0.5) ,
(9, 'Offshore Wind Park Portugal 2', 'Portugal', 500, 743, 4, '2029-03-03', 0.7) ,
(10, 'Solar Energy Farm Switzerland 1', 'Switzerland', 1000, 914, 4, '2026-06-22', 0.3) ,
(11, 'Solar Energy Farm Switzerland 2', 'Switzerland', 300, 478, 4, '2028-07-15', 0.6) ,
(12, 'Water energy France 1', 'France', 400, 709, 4, '2029-05-03', 0.2) ,
(13, 'Water energy Italy 1', 'Italy', 400, 751, 4, '2028-07-26', 0.7) ,
(14, 'Water energy Italy 2', 'Italy', 200, 495, 4, '2026-03-30', 0.2) ,
(15, 'Water energy Switzerland 1', 'Switzerland', 900, 909, 4, '2026-05-05', 0.2) ,
(16, 'Wind Park Italy 1', 'Italy', 400, 707, 4, '2026-08-22', 0.5) ,
(17, 'Wind Park Spain 1', 'Spain', 900, 603, 4, '2029-12-12', 0.8) ,
(18, 'EV Spain 1', 'Spain', 300, 299, 4, '2024-07-27', 0.6) ,
(19, 'EV Spain 2', 'Spain', 800, 273, 4, '2026-07-25', 0.6) ,
(20, 'EV Italy 1', 'Italy', 600, 507, 4, '2030-05-24', 0.5) ,
(21, 'EV Germany 1', 'Germany', 100, 891, 4, '2025-05-24', 0.6) ,
(22, 'Waste Management and Recycling Germany 1', 'Germany', 100, 678, 5, '2025-06-13', 0.4);

-- transactions table
CREATE TABLE `transactions` (
  `tran_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `buy/sell` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `transactions` (`tran_id`, `prod_id`, `cust_id`, `amount`, `buy/sell`) VALUES
(0, 10, 2, 3, 'buy') ,
(1, 7, 9, 5, 'buy') ,
(2, 7, 21, 7, 'buy') ,
(3, 9, 7, 1, 'buy') ,
(4, 15, 4, 6, 'buy') ,
(5, 8, 20, 2, 'buy') ,
(6, 11, 22, 9, 'buy') ,
(7, 14, 14, 3, 'buy') ,
(8, 2, 18, 3, 'buy') ,
(9, 2, 4, 6, 'buy') ,
(10, 4, 23, 8, 'buy') ,
(11, 14, 18, 7, 'buy') ,
(12, 13, 14, 1, 'buy') ,
(13, 14, 13, 4, 'buy') ,
(14, 6, 25, 5, 'buy') ,
(15, 4, 8, 6, 'buy') ,
(16, 9, 20, 1, 'buy') ,
(17, 5, 22, 3, 'buy') ,
(18, 6, 18, 3, 'buy') ,
(19, 3, 6, 8, 'buy') ,
(20, 10, 8, 7, 'buy') ,
(21, 13, 3, 8, 'buy') ,
(22, 12, 11, 10, 'buy') ,
(23, 15, 17, 8, 'buy') ,
(24, 9, 22, 10, 'buy') ,
(25, 2, 7, 10, 'buy') ,
(26, 2, 2, 1, 'buy') ,
(27, 8, 15, 1, 'buy') ,
(28, 12, 12, 8, 'buy') ,
(29, 9, 4, 7, 'buy') ,
(30, 16, 3, 5, 'buy') ,
(31, 8, 1, 4, 'buy') ,
(32, 10, 12, 4, 'buy') ,
(33, 9, 7, 2, 'buy') ,
(34, 7, 4, 6, 'buy') ,
(35, 3, 16, 5, 'buy') ,
(36, 9, 15, 10, 'buy') ,
(37, 5, 17, 7, 'buy') ,
(38, 13, 20, 4, 'buy') ,
(39, 16, 8, 8, 'buy') ,
(40, 6, 20, 7, 'buy') ,
(41, 4, 11, 1, 'buy') ,
(42, 11, 15, 9, 'buy') ,
(43, 1, 12, 9, 'buy') ,
(44, 2, 6, 4, 'buy') ,
(45, 7, 2, 5, 'buy') ,
(46, 14, 2, 7, 'buy') ,
(47, 5, 21, 1, 'buy') ,
(48, 9, 13, 10, 'buy') ,
(49, 8, 2, 1, 'sell') ,
(50, 12, 18, 1, 'sell') ,
(51, 7, 5, 6, 'sell') ,
(52, 3, 15, 2, 'sell') ,
(53, 11, 16, 5, 'sell') ,
(54, 2, 9, 1, 'sell') ,
(55, 17, 9, 3, 'sell') ,
(56, 9, 15, 10, 'sell') ,
(57, 13, 16, 4, 'sell') ,
(58, 6, 7, 10, 'sell');

-- customer table
CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `member_since` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `customers` (`cust_id`, `firstname`,  `lastname`,   `mail` ,  `DOB` ,  `password`, `location`,  
	`member_since`) VALUES
(1, 'James', 'Gonzalez', 'James.Gonzalez@eco_mail.com', '1976-01-21', 123123, 'Switzerland', '2021-10-22') ,
(2, 'Mia', 'Lopez', 'Mia.Lopez@eco_mail.com', '1974-06-24', '123abc', 'Switzerland', '2018-03-21') ,
(3, 'Charlotte', 'Wilson', 'Charlotte.Wilson@eco_mail.com', '1971-03-02', 'monkey', 'Switzerland', '2022-07-15') ,
(4, 'Henry', 'Anderson', 'Henry.Anderson@eco_mail.com', '1964-08-26', 'sunshine', 'Switzerland', '2018-03-10') ,
(5, 'Benjamin', 'Jones', 'Benjamin.Jones@eco_mail.com', '1972-05-26', 111111, 'Spain', '2021-11-29') ,
(6, 'Ethan', 'Smith', 'Ethan.Smith@eco_mail.com', '1966-09-15', 123456, 'Spain', '2020-03-24') ,
(7, 'Ava', 'Brown', 'Ava.Brown@eco_mail.com', '1967-03-31', 'abc123', 'Spain', '2019-07-19') ,
(8, 'Emma', 'Miller', 'Emma.Miller@eco_mail.com', '1960-01-04', 'admin', 'Spain', '2021-07-14') ,
(9, 'Noah', 'Davis', 'Noah.Davis@eco_mail.com', '1989-12-27', 'letmein', 'Spain', '2019-11-12') ,
(10, 'Olivia', 'Johnson', 'Olivia.Johnson@eco_mail.com', '1992-12-09', 'password', 'Spain', '2020-02-01') ,
(11, 'Liam', 'Williams', 'Liam.Williams@eco_mail.com', '1955-06-30', 'qwerty', 'Spain', '2019-08-04') ,
(12, 'Michael', 'Taylor', 'Michael.Taylor@eco_mail.com', '1959-09-01', 1234, 'Italy', '2022-11-27') ,
(13, 'Amelia', 'Thomas', 'Amelia.Thomas@eco_mail.com', '1974-04-29', 12345, 'Italy', '2019-12-02') ,
(14, 'Daniel', 'Jackson', 'Daniel.Jackson@eco_mail.com', '1987-07-17', 'baseball', 'Italy', '2018-02-24') ,
(15, 'Harper', 'Moore', 'Harper.Moore@eco_mail.com', '1954-10-25', 'football', 'Italy', '2017-12-16') ,
(16, 'Emily', 'Lewis', 'Emily.Lewis@eco_mail.com', '1991-10-13', 555555, 'Germany', '2022-11-26') ,
(17, 'Evelyn', 'Thompson', 'Evelyn.Thompson@eco_mail.com', '1958-06-27', 1234567890, 'Germany', '2020-05-30') ,
(18, 'Jacob', 'White', 'Jacob.White@eco_mail.com', '2000-03-01', 'dragon', 'Germany', '2020-08-15') ,
(19, 'Abigail', 'Harris', 'Abigail.Harris@eco_mail.com', '1968-08-13', 'master', 'Germany', '2020-04-21') ,
(20, 'Matthew', 'Young', 'Matthew.Young@eco_mail.com', '1974-03-10', 'passw0rd', 'Germany', '2018-01-17') ,
(21, 'Samuel', 'Clark', 'Samuel.Clark@eco_mail.com', '1957-08-30', 'superman', 'Germany', '2021-06-22') ,
(22, 'Alexander', 'Rodriguez', 'Alexander.Rodriguez@eco_mail.com', '2003-04-21', 1234567, 'France', '2022-12-31') ,
(23, 'Isabella', 'Martinez', 'Isabella.Martinez@eco_mail.com', '1994-06-02', 12345678, 'France', '2022-06-23') ,
(24, 'Sophia', 'Garcia', 'Sophia.Garcia@eco_mail.com', '1965-01-06', 123456789, 'France', '2021-07-29') ,
(25, 'William', 'Hernandez', 'William.Hernandez@eco_mail.com', '1998-02-07', 'welcome', 'France', '2022-06-29') ,
(26, 'Avery', 'Green', 'Avery.Green@eco_mail.com', '1960-04-11', 123, 'Switzerland', '2018-10-11') ,
(27, 'Caleb', 'Parker', 'Caleb.Parker@eco_mail.com', '1957-01-03', 121212, 'Switzerland', '2019-01-18') ,
(28, 'Ryan', 'Morris', 'Ryan.Morris@eco_mail.com', '1994-12-31', 888888, 'Switzerland', '2022-03-18') ,
(29, 'Scarlett', 'Carter', 'Scarlett.Carter@eco_mail.com', '2001-06-28', 999999, 'Switzerland', '2020-11-07') ,
(30, 'Chloe', 'Turner', 'Chloe.Turner@eco_mail.com', '1967-12-10', 7777777, 'Spain', '2022-10-07') ,
(31, 'Stella', 'Cook', 'Stella.Cook@eco_mail.com', '1972-03-23', 11111111, 'Spain', '2017-10-20') ,
(32, 'Andrew', 'Adams', 'Andrew.Adams@eco_mail.com', '1982-12-17', 987654321, 'Spain', '2019-06-20') ,
(33, 'Nathan', 'Stewart', 'Nathan.Stewart@eco_mail.com', '1959-02-13', 9876543210, 'Spain', '2018-11-25') ,
(34, 'Joseph', 'King', 'Joseph.King@eco_mail.com', '1996-04-24', 12345678910, 'Spain', '2022-05-20') ,
(35, 'Jack', 'Hill', 'Jack.Hill@eco_mail.com', '1990-07-25', '1q2w3e4r', 'Spain', '2023-03-10') ,
(36, 'Gabriel', 'Mitchell', 'Gabriel.Mitchell@eco_mail.com', '1999-10-30', 'abcd1234', 'Spain', '2019-01-11') ,
(37, 'Christopher', 'Roberts', 'Christopher.Roberts@eco_mail.com', '2001-03-12', 'asdfgh', 'Italy', '2019-01-13') ,
(38, 'Victoria', 'Campbell', 'Victoria.Campbell@eco_mail.com', '1996-02-12', 'batman', 'Italy', '2019-03-09') ,
(39, 'Elizabeth', 'Hall', 'Elizabeth.Hall@eco_mail.com', '1966-11-12', 'hello', 'Italy', '2019-10-14') ,
(40, 'Sofia', 'Wright', 'Sofia.Wright@eco_mail.com', '1986-12-08', 'iloveyou', 'Italy', '2022-07-23') ,
(41, 'Ella', 'Baker', 'Ella.Baker@eco_mail.com', '1986-06-17', 'letmeout', 'Germany', '2018-05-22') ,
(42, 'Penelope', 'Sanchez', 'Penelope.Sanchez@eco_mail.com', '1986-06-06', 'pass123', 'Germany', '2018-09-06') ,
(43, 'David', 'Scott', 'David.Scott@eco_mail.com', '1980-01-02', 'princess', 'Germany', '2018-05-07') ,
(44, 'Grace', 'Perez', 'Grace.Perez@eco_mail.com', '1982-11-12', 'qazwsx', 'Germany', '2019-02-23') ,
(45, 'Samuel', 'Edwards', 'Samuel.Edwards@eco_mail.com', '1959-08-04', 'shadow', 'Germany', '2020-01-31') ,
(46, 'Zoey', 'Collins', 'Zoey.Collins@eco_mail.com', '2002-06-28', 'soccer', 'Germany', '2018-01-08') ,
(47, 'Isaac', 'Reed', 'Isaac.Reed@eco_mail.com', '1963-04-01', 'starwars', 'France', '2018-04-27') ,
(48, 'Hannah', 'Rogers', 'Hannah.Rogers@eco_mail.com', '1994-09-04', 'summer', 'France', '2022-03-03') ,
(49, 'Joshua', 'Phillips', 'Joshua.Phillips@eco_mail.com', '1997-05-24', 'trustno1', 'France', '2022-02-08') ,
(50, 'Lily', 'Evans', 'Lily.Evans@eco_mail.com', '1990-05-14', 'whatever', 'France', '2023-02-21');

-- support table focus
CREATE TABLE `focus` (
  `focus_id` int(11) NOT NULL,
  `focus` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `focus` (`focus_id`, `focus`) VALUES
(1, 'green_liv_focus') ,
(2, 'agric_focus') ,
(3, 'high_tech_focus') ,
(4, 'renew_focus') ,
(5, 'recycling');


-- defining primary keys and auto increments
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

ALTER TABLE `transactions`
  ADD PRIMARY KEY (`tran_id`);

ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

ALTER TABLE `transactions`
  MODIFY `tran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

ALTER TABLE `customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;