
-- --------------------------------------------------------

--
-- Table structure for table `weersverwachting`
--

CREATE TABLE `weersverwachting` (
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `weersvwvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
