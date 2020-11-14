
-- --------------------------------------------------------

--
-- Table structure for table `satelietkaartnl`
--

CREATE TABLE `satelietkaartnl` (
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `satelietkaartvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
