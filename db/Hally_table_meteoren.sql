
-- --------------------------------------------------------

--
-- Table structure for table `meteoren`
--

CREATE TABLE `meteoren` (
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `meteorenaantal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
