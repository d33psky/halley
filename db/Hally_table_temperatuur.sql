
-- --------------------------------------------------------

--
-- Table structure for table `temperatuur`
--

CREATE TABLE `temperatuur` (
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `tempvalue` double NOT NULL,
  `tempgevoel` double DEFAULT NULL,
  `dauwpunt` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
