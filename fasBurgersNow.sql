-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2024 at 08:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fasBurgersNow`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_surname` varchar(100) NOT NULL,
  `customer_firstname` varchar(100) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `customer_postcode` varchar(100) NOT NULL,
  `customer_town` varchar(100) NOT NULL,
  `customer_phone` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_surname`, `customer_firstname`, `customer_address`, `customer_postcode`, `customer_town`, `customer_phone`, `customer_email`) VALUES
(1, 'Doe', 'John', '123 Main St', '12345', 'Springfield', '555-1234', 'john.doe@example.com'),
(2, 'Smith', 'Jane', '456 Elm St', '54321', 'Riverside', '555-5678', 'jane.smith@example.com'),
(3, 'Johnson', 'Mike', '789 Oak St', '98765', 'Lakeview', '555-9876', 'mike.johnson@example.com'),
(4, 'Brown', 'Emily', '321 Pine St', '67890', 'Maplewood', '555-4567', 'emily.brown@example.com'),
(5, 'Wilson', 'David', '555 Cedar St', '13579', 'Hillside', '555-7890', 'david.wilson@example.com'),
(6, 'Anderson', 'Sarah', '777 Birch St', '24680', 'Meadowview', '555-2345', 'sarah.anderson@example.com'),
(7, 'Martinez', 'Chris', '999 Walnut St', '86420', 'Oakridge', '555-6789', 'chris.martinez@example.com'),
(8, 'Taylor', 'Laura', '888 Maple St', '11111', 'Sunset', '555-0987', 'laura.taylor@example.com'),
(9, 'Garcia', 'Steven', '222 Oak St', '99999', 'Greenville', '555-7654', 'steven.garcia@example.com'),
(10, 'Thomas', 'Rachel', '444 Pine St', '77777', 'Highland', '555-3210', 'rachel.thomas@example.com'),
(11, 'Lee', 'Kevin', '666 Elm St', '88888', 'Fairview', '555-2345', 'kevin.lee@example.com'),
(12, 'Allen', 'Jessica', '777 Cedar St', '55555', 'Bayside', '555-6789', 'jessica.allen@example.com'),
(13, 'Nguyen', 'Andrew', '111 Birch St', '44444', 'Mountainview', '555-8901', 'andrew.nguyen@example.com'),
(14, 'Clark', 'Amanda', '333 Walnut St', '22222', 'Riverview', '555-2345', 'amanda.clark@example.com'),
(15, 'Lewis', 'Michelle', '888 Maple St', '66666', 'Lakeside', '555-6789', 'michelle.lewis@example.com'),
(16, 'Perez', 'Daniel', '999 Oak St', '33333', 'Springfield', '555-1234', 'daniel.perez@example.com'),
(17, 'King', 'Melissa', '666 Pine St', '77777', 'Riverside', '555-5678', 'melissa.king@example.com'),
(18, 'Harris', 'Ryan', '333 Elm St', '88888', 'Lakeview', '555-9876', 'ryan.harris@example.com'),
(19, 'Ramirez', 'Stephanie', '222 Cedar St', '99999', 'Maplewood', '555-4567', 'stephanie.ramirez@example.com'),
(20, 'Scott', 'Patrick', '777 Walnut St', '11111', 'Hillside', '555-7890', 'patrick.scott@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_type` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `menu_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_type`, `quantity`, `item_name`, `menu_no`) VALUES
(1, 'Burger', 1, 'Classic Burger', 101),
(2, 'Burger', 1, 'Cheeseburger', 102),
(3, 'Burger', 1, 'Bacon Burger', 103),
(4, 'Burger', 1, 'Veggie Burger', 104),
(5, 'Side', 1, 'French Fries', 105),
(6, 'Side', 1, 'Onion Rings', 106),
(7, 'Side', 1, 'Sweet Potato Fries', 107),
(8, 'Drink', 1, 'Cola', 108),
(9, 'Drink', 1, 'Lemonade', 109),
(10, 'Drink', 1, 'Iced Tea', 110),
(11, 'Drink', 1, 'Milkshake', 111),
(12, 'Drink', 1, 'Soda', 112),
(13, 'Dessert', 1, 'Chocolate Brownie', 113),
(14, 'Dessert', 1, 'Apple Pie', 114),
(15, 'Dessert', 1, 'Ice Cream Sundae', 115),
(16, 'Salad', 1, 'Caesar Salad', 116),
(17, 'Salad', 1, 'Garden Salad', 117),
(18, 'Wrap', 1, 'Chicken Wrap', 118),
(19, 'Wrap', 1, 'Veggie Wrap', 119),
(20, 'Wrap', 1, 'Turkey Wrap', 120);

-- --------------------------------------------------------

--
-- Table structure for table `item_order`
--

CREATE TABLE `item_order` (
  `orderitem_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_order`
--

INSERT INTO `item_order` (`orderitem_id`, `item_id`, `order_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_no` int(11) NOT NULL,
  `menu_name` varchar(100) DEFAULT NULL,
  `menu_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_no`, `menu_name`, `menu_type`) VALUES
(101, 'Classic Burger Combo', 'Combo'),
(102, 'Cheeseburger Combo', 'Combo'),
(103, 'Bacon Burger Combo', 'Combo'),
(104, 'Veggie Burger Combo', 'Combo'),
(105, 'French Fries', 'Side'),
(106, 'Onion Rings', 'Side'),
(107, 'Sweet Potato Fries', 'Side'),
(108, 'Cola', 'Drink'),
(109, 'Lemonade', 'Drink'),
(110, 'Iced Tea', 'Drink'),
(111, 'Milkshake', 'Drink'),
(112, 'Soda', 'Drink'),
(113, 'Chocolate Brownie', 'Dessert'),
(114, 'Apple Pie', 'Dessert'),
(115, 'Ice Cream Sundae', 'Dessert'),
(116, 'Caesar Salad', 'Salad'),
(117, 'Garden Salad', 'Salad'),
(118, 'Chicken Wrap Combo', 'Combo'),
(119, 'Veggie Wrap Combo', 'Combo'),
(120, 'Turkey Wrap Combo', 'Combo');

-- --------------------------------------------------------

--
-- Table structure for table `ordering`
--

CREATE TABLE `ordering` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `order_item` varchar(100) NOT NULL,
  `order_type` varchar(100) NOT NULL,
  `order_time` time NOT NULL,
  `order_date` date NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordering`
--

INSERT INTO `ordering` (`order_id`, `customer_id`, `staff_id`, `order_item`, `order_type`, `order_time`, `order_date`, `payment_id`) VALUES
(1, 1, 1, 'Classic Burger Combo', 'Collection', '12:30:00', '2024-03-01', 1),
(2, 2, 2, 'Cheeseburger Combo', 'Delivery', '13:00:00', '2024-03-02', 2),
(3, 3, 1, 'Bacon Burger Combo', 'Delivery', '13:30:00', '2024-03-03', 3),
(4, 4, 2, 'Veggie Burger Combo', 'Delivery', '14:00:00', '2024-03-04', 4),
(5, 5, 1, 'French Fries', 'Delivery', '14:30:00', '2024-03-05', 5),
(6, 6, 2, 'Onion Rings', 'Delivery', '15:00:00', '2024-03-06', 6),
(7, 7, 1, 'Sweet Potato Fries', 'Collection', '15:30:00', '2024-03-07', 7),
(8, 8, 2, 'Cola', 'Delivery', '16:00:00', '2024-03-08', 8),
(9, 9, 1, 'Lemonade', 'Collection', '16:30:00', '2024-03-09', 9),
(10, 10, 2, 'Iced Tea', 'Delivery', '17:00:00', '2024-03-10', 10),
(11, 11, 1, 'Milkshake', 'Collection', '17:30:00', '2024-03-11', 11),
(12, 12, 2, 'Soda', 'Delivery', '18:00:00', '2024-03-12', 12),
(13, 13, 1, 'Chocolate Brownie', 'Collection', '18:30:00', '2024-03-13', 13),
(14, 14, 2, 'Apple Pie', 'Delivery', '19:00:00', '2024-03-14', 14),
(15, 15, 1, 'Ice Cream Sundae', 'Collection', '19:30:00', '2024-03-15', 15),
(16, 16, 2, 'Caesar Salad', 'Delivery', '20:00:00', '2024-03-16', 16),
(17, 17, 1, 'Garden Salad', 'Collection', '20:30:00', '2024-03-17', 17),
(18, 18, 2, 'Chicken Wrap Combo', 'Delivery', '21:00:00', '2024-03-18', 18),
(19, 19, 1, 'Veggie Wrap Combo', 'Collection', '21:30:00', '2024-03-19', 19),
(20, 20, 2, 'Turkey Wrap Combo', 'Delivery', '22:00:00', '2024-03-20', 20);

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `outlet_id` int(11) NOT NULL,
  `outlet_name` varchar(100) NOT NULL,
  `outlet_town` varchar(100) NOT NULL,
  `outlet_phone` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`outlet_id`, `outlet_name`, `outlet_town`, `outlet_phone`, `company_id`, `company_name`) VALUES
(1, 'Burger Kingdom London', 'London', '+44 20 1234 5678', 1, 'Burger Kingdom'),
(2, 'Burger Kingdom Manchester', 'Manchester', '+44 161 123 4567', 1, 'Burger Kingdom'),
(3, 'Burger Kingdom Birmingham', 'Birmingham', '+44 121 456 7890', 1, 'Burger Kingdom'),
(4, 'Burger Kingdom Liverpool', 'Liverpool', '+44 151 789 0123', 1, 'Burger Kingdom'),
(5, 'Burger Kingdom Glasgow', 'Glasgow', '+44 141 234 5678', 1, 'Burger Kingdom'),
(6, 'Burger Kingdom Leeds', 'Leeds', '+44 113 567 8901', 1, 'Burger Kingdom'),
(7, 'Burger Kingdom Bristol', 'Bristol', '+44 117 890 1234', 1, 'Burger Kingdom'),
(8, 'Burger Kingdom Edinburgh', 'Edinburgh', '+44 131 012 3456', 1, 'Burger Kingdom'),
(9, 'Burger Kingdom Cardiff', 'Cardiff', '+44 29 4567 8901', 1, 'Burger Kingdom'),
(10, 'Burger Kingdom Belfast', 'Belfast', '+44 28 9012 3456', 1, 'Burger Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `payment_amount` decimal(10,0) NOT NULL,
  `sort_code` varchar(10) NOT NULL,
  `account_no` varchar(20) NOT NULL,
  `card_type` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `payment_amount`, `sort_code`, `account_no`, `card_type`, `customer_id`) VALUES
(1, 'Card', 11, '123456', '78901234', 'Visa', 1),
(2, 'Card', 16, '234567', '89012345', 'Mastercard', 2),
(3, 'Card', 9, '345678', '90123456', 'Visa', 3),
(4, 'Card', 12, '456789', '01234567', 'American Express', 4),
(5, 'Card', 20, '567890', '12345678', 'Mastercard', 5),
(6, 'Card', 18, '678901', '23456789', 'Visa', 6),
(7, 'Card', 14, '789012', '34567890', 'American Express', 7),
(8, 'Card', 10, '890123', '45678901', 'Visa', 8),
(9, 'Card', 23, '901234', '56789012', 'Mastercard', 9),
(10, 'Card', 17, '012345', '67890123', 'American Express', 10),
(11, 'Card', 14, '123456', '78901234', 'Visa', 11),
(12, 'Card', 12, '234567', '89012345', 'Mastercard', 12),
(13, 'Card', 9, '345678', '90123456', 'Visa', 13),
(14, 'Card', 18, '456789', '01234567', 'American Express', 14),
(15, 'Card', 20, '567890', '12345678', 'Mastercard', 15),
(16, 'Card', 25, '678901', '23456789', 'Visa', 16),
(17, 'Card', 13, '789012', '34567890', 'American Express', 17),
(18, 'Card', 8, '890123', '45678901', 'Visa', 18),
(19, 'Card', 12, '901234', '56789012', 'Mastercard', 19),
(20, 'Card', 30, '012345', '67890123', 'American Express', 20);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_surname` varchar(100) DEFAULT NULL,
  `staff_firstname` varchar(100) DEFAULT NULL,
  `staff_email` varchar(100) DEFAULT NULL,
  `staff_mobile` varchar(100) DEFAULT NULL,
  `staff_role` varchar(100) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_surname`, `staff_firstname`, `staff_email`, `staff_mobile`, `staff_role`, `outlet_id`) VALUES
(1, 'Smith', 'John', 'john.smith@example.com', '1234567890', 'Manager', 1),
(2, 'Doe', 'Jane', 'jane.doe@example.com', '9876543210', 'Chef', 1),
(3, 'Johnson', 'David', 'david.johnson@example.com', '4567890123', 'Server', 1),
(4, 'Williams', 'Emily', 'emily.williams@example.com', '7890123456', 'Server', 1),
(5, 'Brown', 'Michael', 'michael.brown@example.com', '3210987654', 'Driver', 1),
(6, 'Taylor', 'Sarah', 'sarah.taylor@example.com', '6543210987', 'Server', 1),
(7, 'Anderson', 'James', 'james.anderson@example.com', '8901234567', 'Chef', 1),
(8, 'Thomas', 'Emma', 'emma.thomas@example.com', '2345678901', 'Server', 1),
(9, 'Wilson', 'Olivia', 'olivia.wilson@example.com', '6789012345', 'Chef', 2),
(10, 'Martinez', 'Daniel', 'daniel.martinez@example.com', '3456789012', 'Server', 2),
(11, 'Lee', 'Sophia', 'sophia.lee@example.com', '7890123456', 'Driver', 2),
(12, 'Harris', 'Matthew', 'matthew.harris@example.com', '5678901234', 'Server', 2),
(13, 'Garcia', 'Isabella', 'isabella.garcia@example.com', '1234567890', 'Chef', 3),
(14, 'Miller', 'Logan', 'logan.miller@example.com', '8901234567', 'Server', 3),
(15, 'Clark', 'Charlotte', 'charlotte.clark@example.com', '6789012345', 'Server', 3),
(16, 'White', 'Ethan', 'ethan.white@example.com', '3456789012', 'Driver', 3),
(17, 'Lewis', 'Amelia', 'amelia.lewis@example.com', '2345678901', 'Server', 4),
(18, 'Taylor', 'Mason', 'mason.taylor@example.com', '6789012345', 'Chef', 4),
(19, 'Moore', 'Lucas', 'lucas.moore@example.com', '5678901234', 'Server', 4),
(20, 'Walker', 'Harper', 'harper.walker@example.com', '3456789012', 'Server', 4),
(21, 'Young', 'Alexander', 'alexander.young@example.com', '1234567890', 'Driver', 4),
(22, 'Hill', 'Evelyn', 'evelyn.hill@example.com', '8901234567', 'Server', 5),
(23, 'Scott', 'Aiden', 'aiden.scott@example.com', '6789012345', 'Chef', 5),
(24, 'Cooper', 'Abigail', 'abigail.cooper@example.com', '5678901234', 'Server', 5),
(25, 'Adams', 'Ella', 'ella.adams@example.com', '3456789012', 'Server', 10),
(26, 'Howard', 'Leo', 'leo.howard@example.com', '1234567890', 'Driver', 5),
(27, 'Cook', 'Scarlett', 'scarlett.cook@example.com', '8901234567', 'Server', 6),
(28, 'Bailey', 'Gavin', 'gavin.bailey@example.com', '6789012345', 'Chef', 6),
(29, 'Alexander', 'Madison', 'madison.alexander@example.com', '5678901234', 'Server', 6),
(30, 'Foster', 'Grace', 'grace.foster@example.com', '3456789012', 'Server', 6),
(31, 'Ward', 'Liam', 'liam.ward@example.com', '1234567890', 'Driver', 6),
(32, 'Gray', 'Leah', 'leah.gray@example.com', '8901234567', 'Server', 7),
(33, 'Coleman', 'David', 'david.coleman@example.com', '6789012345', 'Chef', 7),
(34, 'Reed', 'Chloe', 'chloe.reed@example.com', '5678901234', 'Server', 7),
(35, 'Gordon', 'Zoey', 'zoey.gordon@example.com', '3456789012', 'Server', 7),
(36, 'Fox', 'Dylan', 'dylan.fox@example.com', '1234567890', 'Driver', 7),
(37, 'Washington', 'Lily', 'lily.washington@example.com', '8901234567', 'Server', 8),
(38, 'Hayes', 'Jackson', 'jackson.hayes@example.com', '6789012345', 'Chef', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `menu_no` (`menu_no`);

--
-- Indexes for table `item_order`
--
ALTER TABLE `item_order`
  ADD PRIMARY KEY (`orderitem_id`),
  ADD KEY `item_id` (`item_id`,`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_no`);

--
-- Indexes for table `ordering`
--
ALTER TABLE `ordering`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`,`staff_id`,`payment_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`outlet_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `outlet_id` (`outlet_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`menu_no`) REFERENCES `menu` (`menu_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_order`
--
ALTER TABLE `item_order`
  ADD CONSTRAINT `item_order_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `ordering` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordering`
--
ALTER TABLE `ordering`
  ADD CONSTRAINT `ordering_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordering_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordering_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`outlet_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
