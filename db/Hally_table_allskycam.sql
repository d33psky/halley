
-- --------------------------------------------------------

--
-- Table structure for table `allskycam`
--

CREATE TABLE `allskycam` (
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `allskyvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
