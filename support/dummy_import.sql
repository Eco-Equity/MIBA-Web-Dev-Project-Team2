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
  `focus_id` int(11) DEFAULT NULL,
  `completion` date DEFAULT NULL,
  `risk` float(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `products` (`prod_id`, `name`, `country`, `price`, `n_shares`, `focus_id`, `completion`, `risk`) VALUES
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
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `transactions` (`tran_id`, `prod_id`, `cust_id`, `amount`) VALUES
(0, 10, 2, 3),
(1, 7, 9, 5),
(2, 7, 21, 7) ,
(3, 9, 7, 1) ,
(4, 15, 4, 6   ) ,
(5, 8, 20, 2   ) ,
(6, 11, 22, 9   ) ,
(7, 14, 14, 3   ) ,
(8, 2, 18, 3   ) ,
(9, 2, 4, 6   ) ,
(10, 4, 23, 8   ) ,
(11, 14, 18, 7   ) ,
(12, 13, 14, 1   ) ,
(13, 14, 13, 4   ) ,
(14, 6, 25, 5   ) ,
(15, 4, 8, 6   ) ,
(16, 9, 20, 1   ) ,
(17, 5, 22, 3   ) ,
(18, 6, 18, 3   ) ,
(19, 3, 6, 8   ) ,
(20, 10, 8, 7   ) ,
(21, 13, 3, 8   ) ,
(22, 12, 11, 10   ) ,
(23, 15, 17, 8   ) ,
(24, 9, 22, 10   ) ,
(25, 2, 7, 10   ) ,
(26, 2, 2, 1   ) ,
(27, 8, 15, 1   ) ,
(28, 12, 12, 8   ) ,
(29, 9, 4, 7   ) ,
(30, 16, 3, 5   ) ,
(31, 8, 1, 4   ) ,
(32, 10, 12, 4   ) ,
(33, 9, 7, 2   ) ,
(34, 7, 4, 6   ) ,
(35, 3, 16, 5   ) ,
(36, 9, 15, 10   ) ,
(37, 5, 17, 7   ) ,
(38, 13, 20, 4   ) ,
(39, 16, 8, 8   ) ,
(40, 6, 20, 7   ) ,
(41, 4, 11, 1   ) ,
(42, 11, 15, 9   ) ,
(43, 1, 12, 9   ) ,
(44, 2, 6, 4   ) ,
(45, 7, 2, 5   ) ,
(46, 14, 2, 7   ) ,
(47, 5, 21, 1   ) ,
(48, 9, 13, 10   ) ,
(49, 8, 2, -1   ) ,
(50, 12, 18, -1   ) ,
(51, 7, 5, -6   ) ,
(52, 3, 15, -2   ) ,
(53, 11, 16, -5   ) ,
(54, 2, 9, -1   ) ,
(55, 17, 9, -3   ) ,
(56, 9, 15, -10   ) ,
(57, 13, 16, -4   ) ,
(58, 6, 7, -10   );


-- customer table
CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `street_number` int(11) DEFAULT NULL,
  `compl_adr_info` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `customers` (`cust_id`, `firstname`,  `lastname`,   `username`, `gender`, `phone_number`, `street`, `street_number`, `compl_adr_info`, `city`, `zip_code`, `mail` ,  `DOB` ,  `password`, `nationality`) VALUES
(22, 'James', 'Rodriguez', 'JSmith', 'm', '(347) 555-1212', 'Main Street', 77, '-', 'Paris', 3130, 'James.Rodriguez@ecomail.com', '1983-10-29', 1234567, 'France') ,
(23, 'John', 'Martinez', 'MaxPower', 'm', '(212) 555-9876', 'Maple Avenue', 17, '-', 'Marseille', 4396, 'John.Martinez@ecomail.com', '2001-08-17', 12345678, 'France') ,
(24, 'Robert', 'Garcia', 'CoolDude87', 'm', '(415) 555-5555', 'Oak Street', 84, '-', 'Lyon', 3141, 'Robert.Garcia@ecomail.com', '1974-03-02', 123456789, 'France') ,
(25, 'Michael', 'Hernandez', 'NinjaWarrior', 'm', '(713) 555-1234', 'Elm Street', 78, '-', 'Toulouse', 1116, 'Michael.Hernandez@ecomail.com', '1970-12-28', 'welcome', 'France') ,
(47, 'William', 'Reed', 'GamerGuy23', 'm', '(602) 555-8888', 'Pine Lane', 31, '-', 'Nice', 2268, 'William.Reed@ecomail.com', '2002-09-30', 'starwars', 'France') ,
(48, 'David', 'Rogers', 'TechGuru', 'm', '(305) 555-0101', 'Cedar Road', 41, '-', 'Nantes', 2539, 'David.Rogers@ecomail.com', '1955-04-02', 'summer', 'France') ,
(49, 'Joseph', 'Phillips', 'SportsFanatic', 'm', '(404) 555-5555', 'Walnut Street', 70, '-', 'Strasbourg', 1995, 'Joseph.Phillips@ecomail.com', '2001-09-28', 'trustno1', 'France') ,
(50, 'Charles', 'Evans', 'MusicManiac', 'm', '(503) 555-1234', 'Birch Avenue', 16, '-', 'Bordeaux', 2566, 'Charles.Evans@ecomail.com', '1963-03-30', 'whatever', 'France') ,
(16, 'Thomas', 'Lewis', 'AdventureSeeker', 'm', '(770) 555-4321', 'Cherry Lane', 3, '-', 'Berlin', 4450, 'Thomas.Lewis@ecomail.com', '1958-07-24', 555555, 'Germany') ,
(17, 'Daniel', 'Thompson', 'MrExplorer', 'm', '(619) 555-7777', 'Willow Road', 76, '-', 'Hamburg', 2018, 'Daniel.Thompson@ecomail.com', '1956-11-28', 1234567890, 'Germany') ,
(18, 'Matthew', 'White', 'SportsHero', 'm', '(415) 555-2468', 'Magnolia Drive', 68, '-', 'Munich', 4266, 'Matthew.White@ecomail.com', '1955-02-14', 'dragon', 'Germany') ,
(19, 'Anthony', 'Harris', 'TechWhiz', 'm', '(202) 555-5678', 'Sycamore Avenue', 47, '-', 'Cologne', 2142, 'Anthony.Harris@ecomail.com', '1974-03-13', 'master', 'Germany') ,
(20, 'Mark', 'Young', 'CaptainAwesome', 'm', '(713) 555-8765', 'Ash Street', 82, '-', 'Frankfurt', 2795, 'Mark.Young@ecomail.com', '1963-12-12', 'passw0rd', 'Germany') ,
(21, 'Donald', 'Clark', 'ProGamer99', 'm', '(602) 555-7890', 'Poplar Lane', 7, '-', 'Stuttgart', 1952, 'Donald.Clark@ecomail.com', '1999-10-10', 'superman', 'Germany') ,
(41, 'Steven', 'Baker', 'TechGeek', 'm', '(305) 555-4321', 'Cypress Road', 49, '-', 'Düsseldorf', 4858, 'Steven.Baker@ecomail.com', '1988-07-16', 'letmeout', 'Germany') ,
(42, 'Andrew', 'Sanchez', 'SportsJunkie', 'm', '(404) 555-9876', 'Chestnut Avenue', 42, '-', 'Dortmund', 1284, 'Andrew.Sanchez@ecomail.com', '1982-01-11', 'pass123', 'Germany') ,
(43, 'Kenneth', 'Scott', 'RockStar87', 'm', '(503) 555-6543', 'Spruce Street', 55, '-', 'Essen', 4517, 'Kenneth.Scott@ecomail.com', '1995-09-21', 'princess', 'Germany') ,
(44, 'George', 'Perez', 'MrAdventure', 'm', '(770) 555-2345', 'Juniper Lane', 4, '-', 'Leipzig', 2145, 'George.Perez@ecomail.com', '1979-02-18', 'qazwsx', 'Germany') ,
(45, 'Paul', 'Edwards', 'FitnessFreak', 'm', '(619) 555-8765', 'Hawthorn Road', 96, '-', 'Dresden', 3870, 'Paul.Edwards@ecomail.com', '2001-10-04', 'shadow', 'Germany') ,
(46, 'Brian', 'Collins', 'WiseGuru', 'm', '(415) 555-3456', 'Acacia Avenue', 87, '-', 'Hannover', 3242, 'Brian.Collins@ecomail.com', '2000-12-04', 'soccer', 'Germany') ,
(12, 'Edward', 'Taylor', 'ChessMaster', 'm', '(202) 555-6789', 'Redwood Drive', 93, '-', 'Rome', 4358, 'Edward.Taylor@ecomail.com', '1969-07-29', 1234, 'Italy') ,
(13, 'Christopher', 'Thomas', 'PokerKing', 'm', '(713) 555-5432', 'Laurel Lane', 51, '-', 'Milan', 2918, 'Christopher.Thomas@ecomail.com', '1969-04-21', 12345, 'Italy') ,
(14, 'Kevin', 'Jackson', 'MovieBuff', 'm', '(602) 555-9012', 'Dogwood Street', 97, '-', 'Florence', 1072, 'Kevin.Jackson@ecomail.com', '1998-06-21', 'baseball', 'Italy') ,
(15, 'Richard', 'Moore', 'MrFunnybone', 'm', '(305) 555-7890', 'Cedar Lane', 28, '-', 'Venice', 3442, 'Richard.Moore@ecomail.com', '1983-04-21', 'football', 'Italy') ,
(37, 'Timothy', 'Roberts', 'CaptainMarvel', 'm', '(404) 555-2109', 'Olive Avenue', 56, '-', 'Naples', 1691, 'Timothy.Roberts@ecomail.com', '1962-07-31', 'asdfgh', 'Italy') ,
(38, 'Mary', 'Campbell', 'QueenBee', 'f', '(503) 555-8765', 'Mulberry Road', 95, '-', 'Turin', 1888, 'Mary.Campbell@ecomail.com', '1984-04-09', 'batman', 'Italy') ,
(39, 'Jennifer', 'Hall', 'Fashionista', 'f', '(770) 555-3210', 'Alder Street', 64, '-', 'Bologna', 2874, 'Jennifer.Hall@ecomail.com', '1977-07-17', 'hello', 'Italy') ,
(40, 'Linda', 'Wright', 'GirlyGlam', 'f', '(619) 555-6543', 'Locust Lane', 93, '-', 'Palermo', 1319, 'Linda.Wright@ecomail.com', '1994-07-29', 'iloveyou', 'Italy') ,
(5, 'Patricia', 'Jones', 'FlowerPower', 'f', '(415) 555-8901', 'Holly Avenue', 32, '-', 'Madrid', 3364, 'Patricia.Jones@ecomail.com', '1978-09-02', 111111, 'Spain') ,
(6, 'Elizabeth', 'Smith', 'BeautyQueen', 'f', '(202) 555-1234', 'Beech Road', 62, '-', 'Barcelona', 2176, 'Elizabeth.Smith@ecomail.com', '1967-04-08', 123456, 'Spain') ,
(7, 'Susan', 'Brown', 'LovelyLady', 'f', '(713) 555-3456', 'Elm Lane', 100, '-', 'Valencia', 1854, 'Susan.Brown@ecomail.com', '1976-11-30', 'abc123', 'Spain') ,
(8, 'Jessica', 'Miller', 'ChicChick', 'f', '(602) 555-5678', 'Pine Street', 22, '-', 'Seville (Sevilla)', 2930, 'Jessica.Miller@ecomail.com', '1988-12-21', 'admin', 'Spain') ,
(9, 'Sarah', 'Davis', 'SparklePrincess', 'f', '(305) 555-9012', 'Willow Avenue', 49, '-', 'Bilbao', 3154, 'Sarah.Davis@ecomail.com', '1998-05-09', 'letmein', 'Spain') ,
(10, 'Karen', 'Johnson', 'MissSunshine', 'f', '(404) 555-6789', 'Maple Lane', 91, '-', 'Malaga', 2165, 'Karen.Johnson@ecomail.com', '1999-12-26', 'password', 'Spain') ,
(11, 'Nancy', 'Williams', 'SweetHeart', 'f', '(503) 555-4321', 'Oak Road', 28, '-', 'Alicante', 4216, 'Nancy.Williams@ecomail.com', '2002-03-30', 'qwerty', 'Spain') ,
(30, 'Lisa', 'Turner', 'DancingQueen', 'f', '(770) 555-9876', 'Walnut Lane', 86, '-', 'Zaragoza', 1776, 'Lisa.Turner@ecomail.com', '1986-12-03', 7777777, 'Spain') ,
(31, 'Margaret', 'Cook', 'AngelicSoul', 'f', '(619) 555-2109', 'Birch Street', 65, '-', 'Granada', 5000, 'Margaret.Cook@ecomail.com', '1977-09-06', 11111111, 'Spain') ,
(32, 'Emily', 'Adams', 'ClassyDiva', 'f', '(415) 555-6543', 'Cherry Avenue', 65, '-', 'Palma de Mallorca', 1833, 'Emily.Adams@ecomail.com', '1981-07-25', 987654321, 'Spain') ,
(33, 'Kimberly', 'Stewart', 'StyleEnthusiast', 'f', '(202) 555-8765', 'Sycamore Lane', 84, '-', 'Murcia', 1218, 'Kimberly.Stewart@ecomail.com', '1993-12-24', 9876543210, 'Spain') ,
(34, 'Angela', 'King', 'FashionDoll', 'f', '(713) 555-7890', 'Ash Road', 43, '-', 'Cordoba', 3733, 'Angela.King@ecomail.com', '1989-08-07', 12345678910, 'Spain') ,
(35, 'Amanda', 'Hill', 'ElegantLady', 'f', '(602) 555-3210', 'Magnolia Street', 39, '-', 'Vigo', 1286, 'Amanda.Hill@ecomail.com', '1977-11-15', '1q2w3e4r', 'Spain') ,
(36, 'Michelle', 'Mitchell', 'PrincessSparkle', 'f', '(305) 555-5678', 'Poplar Avenue', 2, '-', 'Ibiza', 2662, 'Michelle.Mitchell@ecomail.com', '1971-12-17', 'abcd1234', 'Spain') ,
(1, 'Nicole', 'Gonzalez', 'GlamorousGirl', 'f', '(404) 555-8901', 'Cypress Lane', 100, '-', 'Zurich ', 3348, 'Nicole.Gonzalez@ecomail.com', '1980-02-06', 123123, 'Switzerland') ,
(2, 'Melissa', 'Lopez', 'CreativeQueen', 'f', '(503) 555-1234', 'Chestnut Street', 84, '-', 'Geneva', 3398, 'Melissa.Lopez@ecomail.com', '1991-06-17', '123abc', 'Switzerland') ,
(3, 'Stephanie', 'Wilson', 'GracefulGoddess', 'f', '(770) 555-3456', 'Spruce Avenue', 84, '-', 'Basel', 1753, 'Stephanie.Wilson@ecomail.com', '1964-08-28', 'monkey', 'Switzerland') ,
(4, 'Laura', 'Anderson', 'PrettyInPink', 'f', '(619) 555-6789', 'Juniper Road', 98, '-', 'Lausanne', 2798, 'Laura.Anderson@ecomail.com', '1988-07-15', 'sunshine', 'Switzerland') ,
(26, 'Rebecca', 'Green', 'EnchantingDreamer', 'f', '(415) 555-9012', 'Hawthorn Lane', 66, '-', 'Bern', 2062, 'Rebecca.Green@ecomail.com', '1998-02-25', 123, 'Switzerland') ,
(27, 'Amy', 'Parker', 'DelicateFlower', 'f', '(202) 555-4321', 'Acacia Street', 68, '-', 'Lucerne', 4197, 'Amy.Parker@ecomail.com', '1960-05-27', 121212, 'Switzerland') ,
(28, 'Samantha', 'Morris', 'FashionableFemme', 'f', '(713) 555-8765', 'Redwood Avenue', 54, '-', 'St. Gallen', 4773, 'Samantha.Morris@ecomail.com', '1979-03-11', 888888, 'Switzerland') ,
(29, 'Danielle', 'Carter', 'EmpoweredWoman', 'f', '(602) 555-7890', 'Laurel Road', 28, '-', 'Lugano', 4567, 'Danielle.Carter@ecomail.com', '1988-06-05', 999999, 'Switzerland');

-- support table focus
CREATE TABLE `focus` (
  `focus_id` int(11) NOT NULL,
  `focus` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `focus` (`focus_id`, `focus`) VALUES
(1, 'Green Living') ,
(2, 'Agriculture') ,
(3, 'High-tech') ,
(4, 'Renewable Energy') ,
(5, 'Recycling');

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