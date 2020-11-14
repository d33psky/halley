
-- --------------------------------------------------------

--
-- Table structure for table `zonnehelderheid`
--

CREATE TABLE `zonnehelderheid` (
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `zonvalue` double NOT NULL,
  `zonhelderheid` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
