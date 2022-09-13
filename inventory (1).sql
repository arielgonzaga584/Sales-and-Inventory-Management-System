-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 10:42 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtocart`
--

CREATE TABLE `addtocart` (
  `cust_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_Id` int(20) NOT NULL,
  `price` double NOT NULL,
  `num_order` int(10) NOT NULL,
  `payable` double NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addtocart`
--

INSERT INTO `addtocart` (`cust_id`, `item_name`, `item_Id`, `price`, `num_order`, `payable`, `status`) VALUES
(5, 'bato', 139, 30, 2, 60, 'NOT YET PAID'),
(5, 'sand', 140, 1300, 3, 3900, 'NOT YET PAID'),
(5, 'bato', 139, 30, 4, 120, 'NOT YET PAID'),
(5, 'bato', 139, 30, 2, 60, 'NOT YET PAID');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `question` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`, `question`, `answer`) VALUES
(1, 'janjo', 'janjo', 'janjo', 'gwapo ka?', 'o');

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `name`, `username`, `password`) VALUES
(1, 'agent', 'agent', 'agent');

-- --------------------------------------------------------

--
-- Table structure for table `agentlog`
--

CREATE TABLE `agentlog` (
  `alog_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `login` varchar(20) NOT NULL,
  `logout` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agentlog`
--

INSERT INTO `agentlog` (`alog_id`, `date`, `name`, `login`, `logout`) VALUES
(1, '13-05-2021', 'agent', '10:19:05 PM', '10:19:28 PM');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `balance_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `balance` double NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `balancedetails`
--

CREATE TABLE `balancedetails` (
  `BD_id` int(11) NOT NULL,
  `balance_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `payment` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `balancepaid`
--

CREATE TABLE `balancepaid` (
  `bp_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `Paid` double NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `balancereport`
--

CREATE TABLE `balancereport` (
  `bReport_id` int(11) NOT NULL,
  `costumer_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `balance` double NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `totalbalance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `cashier_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`cashier_id`, `username`, `password`, `name`) VALUES
(5, 'cashier', 'cashier', 'ARIEL');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `categories_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `changeitem`
--

CREATE TABLE `changeitem` (
  `change_id` int(11) NOT NULL,
  `cashier_name` varchar(50) NOT NULL,
  `beforeprod_id` int(11) NOT NULL,
  `qty_b` int(11) NOT NULL,
  `afterprod_id` int(11) NOT NULL,
  `qty_a` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `invoiceId` varchar(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discount_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total` double NOT NULL,
  `discount` double NOT NULL,
  `totaldis` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discountedtable`
--

CREATE TABLE `discountedtable` (
  `dt_id` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `discount` double NOT NULL,
  `dicounted` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discountlist`
--

CREATE TABLE `discountlist` (
  `d_id` int(11) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incomming`
--

CREATE TABLE `incomming` (
  `comming_id` int(11) NOT NULL,
  `invoiceId` varchar(255) NOT NULL,
  `categories` varchar(20) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `produnit` varchar(100) NOT NULL,
  `brandname` varchar(100) NOT NULL,
  `prodname` varchar(50) NOT NULL,
  `bar_code` varchar(50) NOT NULL,
  `amount` int(20) NOT NULL,
  `price` int(11) NOT NULL,
  `no_of_items` int(11) NOT NULL,
  `availability` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `warranty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemrequested`
--

CREATE TABLE `itemrequested` (
  `request_id` int(11) NOT NULL,
  `invoiceId` varchar(255) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `produnit` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` double NOT NULL,
  `allQuantity` int(11) NOT NULL,
  `allTotalCost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permmission_table`
--

CREATE TABLE `permmission_table` (
  `per_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `invoiceId` varchar(255) NOT NULL,
  `categories` varchar(20) NOT NULL,
  `supplier` varchar(50) NOT NULL,
  `produnit` varchar(100) NOT NULL,
  `brandname` varchar(100) NOT NULL,
  `prodname` varchar(50) NOT NULL,
  `bar_code` varchar(100) NOT NULL,
  `amount` int(20) NOT NULL,
  `price` int(15) NOT NULL,
  `no_of_items` int(10) NOT NULL,
  `availability` varchar(20) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` varchar(20) NOT NULL,
  `warranty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchased`
--

CREATE TABLE `purchased` (
  `purchased_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `amount` int(20) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `warranty_date` varchar(20) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salesreport`
--

CREATE TABLE `salesreport` (
  `sales_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `fromdate` varchar(15) NOT NULL,
  `todate` varchar(15) NOT NULL,
  `overalltotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soldbalance`
--

CREATE TABLE `soldbalance` (
  `sold_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `sold` double NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `totalsold` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `order_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `customer_id` int(50) NOT NULL,
  `prod_id` int(50) NOT NULL,
  `amount` int(20) NOT NULL,
  `price` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `total` double NOT NULL,
  `date` varchar(20) NOT NULL,
  `warranty_date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `agentlog`
--
ALTER TABLE `agentlog`
  ADD PRIMARY KEY (`alog_id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`balance_id`);

--
-- Indexes for table `balancedetails`
--
ALTER TABLE `balancedetails`
  ADD PRIMARY KEY (`BD_id`);

--
-- Indexes for table `balancepaid`
--
ALTER TABLE `balancepaid`
  ADD PRIMARY KEY (`bp_id`);

--
-- Indexes for table `balancereport`
--
ALTER TABLE `balancereport`
  ADD PRIMARY KEY (`bReport_id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`cashier_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `changeitem`
--
ALTER TABLE `changeitem`
  ADD PRIMARY KEY (`change_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `discountedtable`
--
ALTER TABLE `discountedtable`
  ADD PRIMARY KEY (`dt_id`);

--
-- Indexes for table `discountlist`
--
ALTER TABLE `discountlist`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `incomming`
--
ALTER TABLE `incomming`
  ADD PRIMARY KEY (`comming_id`);

--
-- Indexes for table `itemrequested`
--
ALTER TABLE `itemrequested`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `permmission_table`
--
ALTER TABLE `permmission_table`
  ADD PRIMARY KEY (`per_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `purchased`
--
ALTER TABLE `purchased`
  ADD PRIMARY KEY (`purchased_id`);

--
-- Indexes for table `salesreport`
--
ALTER TABLE `salesreport`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `soldbalance`
--
ALTER TABLE `soldbalance`
  ADD PRIMARY KEY (`sold_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agentlog`
--
ALTER TABLE `agentlog`
  MODIFY `alog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `balance_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `balancedetails`
--
ALTER TABLE `balancedetails`
  MODIFY `BD_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `balancepaid`
--
ALTER TABLE `balancepaid`
  MODIFY `bp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `balancereport`
--
ALTER TABLE `balancereport`
  MODIFY `bReport_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `cashier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `changeitem`
--
ALTER TABLE `changeitem`
  MODIFY `change_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `discountedtable`
--
ALTER TABLE `discountedtable`
  MODIFY `dt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `discountlist`
--
ALTER TABLE `discountlist`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `incomming`
--
ALTER TABLE `incomming`
  MODIFY `comming_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `itemrequested`
--
ALTER TABLE `itemrequested`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permmission_table`
--
ALTER TABLE `permmission_table`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchased`
--
ALTER TABLE `purchased`
  MODIFY `purchased_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salesreport`
--
ALTER TABLE `salesreport`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soldbalance`
--
ALTER TABLE `soldbalance`
  MODIFY `sold_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
