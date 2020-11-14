
-- --------------------------------------------------------

--
-- Table structure for table `magnetometer`
--

CREATE TABLE `magnetometer` (
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `magnetometerx` double NOT NULL,
  `magnetometery` double NOT NULL,
  `magnetometerz` double NOT NULL,
  `totaalmagnetometer` double NOT NULL,
  `sqm-value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `magnetometer`
--

-- INSERT INTO `magnetometer` (`datetime`, `magnetometerx`, `magnetometery`, `magnetometerz`, `totaalmagnetometer`, `sqm-value`) VALUES
-- ('2020-08-13 22:27:02', 2, 2, 2, 2, 2),
-- ('2020-08-13 22:27:02', 2, 2, 2, 2, 2),
-- ('2020-08-13 22:27:02', 2, 2, 2, 2, 2);
