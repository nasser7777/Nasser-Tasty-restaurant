--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `foodtype` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `deleted`, `foodtype`) VALUES
(1, 'Breakfast With a Snack', 3500, 0, 'breakfast'),
(2, 'Breakfast Without a Snack', 2000, 0, 'breakfast'),
(3, 'Simple', 15000, 0, 'dinner'),
(4, 'Buffet', 34000, 0, 'dinner'),
(5, 'Item 5', 20, 0, ''),
(6, 'Goat''s stew', 3500, 0, 'lunch'),
(7, 'Beef', 3000, 0, 'lunch'),
(8, 'Chicken', 4500, 0, 'lunch'),
(9, 'Beans', 2000, 0, 'lunch'),
(10, 'Soda', 2000, 0, 'drink'),
(11, 'Mineral water', 1500, 0, 'drink'),
(12, 'Minutemaid', 3000, 0, 'drink');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'Customer',
  `name` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `password`, `email`, `address`, `contact`, `verified`, `deleted`) VALUES
(1, 'Administrator', 'Admin 1', 'root', 'toor', '', 'Address 1', 9898000000, 1, 0),
(2, 'Customer', 'Fahadi BD', 'user1', 'pass1', 'mail2@example.com', 'Address 2', 9898000001, 1, 0),
(3, 'Customer', 'Dendi', 'user2', 'pass2', 'mail3@example.com', 'Address 3', 9898000002, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
