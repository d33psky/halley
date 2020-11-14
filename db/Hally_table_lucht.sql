
-- --------------------------------------------------------

--
-- Table structure for table `lucht`
--

CREATE TABLE `lucht` (
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `luchtvocht` double NOT NULL,
  `luchtdruk` double NOT NULL,
  `windspeed` double DEFAULT NULL,
  `hoogtebewolking` double DEFAULT NULL,
  `fijnstofmeting` double DEFAULT NULL,
  `windrichting` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lucht`
--

-- INSERT INTO `lucht` (`datetime`, `luchtvocht`, `luchtdruk`, `windspeed`, `hoogtebewolking`, `fijnstofmeting`, `windrichting`) VALUES
-- ('2020-08-13 22:10:10', 20, 20, 20, 20, 20, 'zuidoost'),
-- ('2020-08-13 22:10:10', 20, 20, 20, 20, 20, 'zuidoost');
