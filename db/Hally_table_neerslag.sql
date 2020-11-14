
-- --------------------------------------------------------

--
-- Table structure for table `neerslag`
--

CREATE TABLE `neerslag` (
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `neerslagvalue` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
