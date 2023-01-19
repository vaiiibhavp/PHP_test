-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 10:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_test_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_validator`
--

CREATE TABLE `address_validator` (
  `id` int(11) NOT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `zip_code` int(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `state_id`, `city_name`, `active`) VALUES
(5709, 1521, 'Birmingham', 1),
(5710, 1521, 'Montgomery', 1),
(5711, 1521, 'Mobile', 1),
(5712, 1521, 'Huntsville', 1),
(5713, 1522, 'Anchorage', 1),
(5714, 1523, 'Phoenix', 1),
(5715, 1523, 'Tucson', 1),
(5716, 1523, 'Mesa', 1),
(5717, 1523, 'Glendale', 1),
(5718, 1523, 'Scottsdale', 1),
(5719, 1523, 'Chandler', 1),
(5720, 1523, 'Tempe', 1),
(5721, 1523, 'Gilbert', 1),
(5722, 1523, 'Peoria', 1),
(5723, 1524, 'Little Rock', 1),
(5724, 1525, 'Los Angeles', 1),
(5725, 1525, 'San Diego', 1),
(5726, 1525, 'San Jose', 1),
(5727, 1525, 'San Francisco', 1),
(5728, 1525, 'Long Beach', 1),
(5729, 1525, 'Fresno', 1),
(5730, 1525, 'Sacramento', 1),
(5731, 1525, 'Oakland', 1),
(5732, 1525, 'Santa Ana', 1),
(5733, 1525, 'Anaheim', 1),
(5734, 1525, 'Riverside', 1),
(5735, 1525, 'Bakersfield', 1),
(5736, 1525, 'Stockton', 1),
(5737, 1525, 'Fremont', 1),
(5738, 1525, 'Glendale', 1),
(5739, 1525, 'Huntington Beach', 1),
(5740, 1525, 'Modesto', 1),
(5741, 1525, 'San Bernardino', 1),
(5742, 1525, 'Chula Vista', 1),
(5743, 1525, 'Oxnard', 1),
(5744, 1525, 'Garden Grove', 1),
(5745, 1525, 'Oceanside', 1),
(5746, 1525, 'Ontario', 1),
(5747, 1525, 'Santa Clarita', 1),
(5748, 1525, 'Salinas', 1),
(5749, 1525, 'Pomona', 1),
(5750, 1525, 'Santa Rosa', 1),
(5751, 1525, 'Irvine', 1),
(5752, 1525, 'Moreno Valley', 1),
(5753, 1525, 'Pasadena', 1),
(5754, 1525, 'Hayward', 1),
(5755, 1525, 'Torrance', 1),
(5756, 1525, 'Escondido', 1),
(5757, 1525, 'Sunnyvale', 1),
(5758, 1525, 'Fontana', 1),
(5759, 1525, 'Orange', 1),
(5760, 1525, 'Rancho Cucamonga', 1),
(5761, 1525, 'East Los Angeles', 1),
(5762, 1525, 'Fullerton', 1),
(5763, 1525, 'Corona', 1),
(5764, 1525, 'Concord', 1),
(5765, 1525, 'Lancaster', 1),
(5766, 1525, 'Thousand Oaks', 1),
(5767, 1525, 'Vallejo', 1),
(5768, 1525, 'Palmdale', 1),
(5769, 1525, 'El Monte', 1),
(5770, 1525, 'Inglewood', 1),
(5771, 1525, 'Simi Valley', 1),
(5772, 1525, 'Costa Mesa', 1),
(5773, 1525, 'Downey', 1),
(5774, 1525, 'West Covina', 1),
(5775, 1525, 'Daly City', 1),
(5776, 1525, 'Citrus Heights', 1),
(5777, 1525, 'Norwalk', 1),
(5778, 1525, 'Berkeley', 1),
(5779, 1525, 'Santa Clara', 1),
(5780, 1525, 'San Buenaventura', 1),
(5781, 1525, 'Burbank', 1),
(5782, 1525, 'Mission Viejo', 1),
(5783, 1525, 'El Cajon', 1),
(5784, 1525, 'Richmond', 1),
(5785, 1525, 'Compton', 1),
(5786, 1525, 'Fairfield', 1),
(5787, 1525, 'Arden-Arcade', 1),
(5788, 1525, 'San Mateo', 1),
(5789, 1525, 'Visalia', 1),
(5790, 1525, 'Santa Monica', 1),
(5791, 1525, 'Carson', 1),
(5792, 1526, 'Denver', 1),
(5793, 1526, 'Colorado Springs', 1),
(5794, 1526, 'Aurora', 1),
(5795, 1526, 'Lakewood', 1),
(5796, 1526, 'Fort Collins', 1),
(5797, 1526, 'Arvada', 1),
(5798, 1526, 'Pueblo', 1),
(5799, 1526, 'Westminster', 1),
(5800, 1526, 'Boulder', 1),
(5801, 1527, 'Bridgeport', 1),
(5802, 1527, 'New Haven', 1),
(5803, 1527, 'Hartford', 1),
(5804, 1527, 'Stamford', 1),
(5805, 1527, 'Waterbury', 1),
(5806, 1528, 'Washington', 1),
(5807, 1529, 'Jacksonville', 1),
(5808, 1529, 'Miami', 1),
(5809, 1529, 'Tampa', 1),
(5810, 1529, 'Saint Petersburg', 1),
(5811, 1529, 'Hialeah', 1),
(5812, 1529, 'Orlando', 1),
(5813, 1529, 'Fort Lauderdale', 1),
(5814, 1529, 'Tallahassee', 1),
(5815, 1529, 'Hollywood', 1),
(5816, 1529, 'Pembroke Pines', 1),
(5817, 1529, 'Coral Springs', 1),
(5818, 1529, 'Cape Coral', 1),
(5819, 1529, 'Clearwater', 1),
(5820, 1529, 'Miami Beach', 1),
(5821, 1529, 'Gainesville', 1),
(5822, 1530, 'Atlanta', 1),
(5823, 1530, 'Augusta-Richmond County', 1),
(5824, 1530, 'Columbus', 1),
(5825, 1530, 'Savannah', 1),
(5826, 1530, 'Macon', 1),
(5827, 1530, 'Athens-Clarke County', 1),
(5828, 1531, 'Honolulu', 1),
(5829, 1532, 'Boise City', 1),
(5830, 1533, 'Chicago', 1),
(5831, 1533, 'Rockford', 1),
(5832, 1533, 'Aurora', 1),
(5833, 1533, 'Naperville', 1),
(5834, 1533, 'Peoria', 1),
(5835, 1533, 'Springfield', 1),
(5836, 1533, 'Joliet', 1),
(5837, 1533, 'Elgin', 1),
(5838, 1534, 'Indianapolis', 1),
(5839, 1534, 'Fort Wayne', 1),
(5840, 1534, 'Evansville', 1),
(5841, 1534, 'South Bend', 1),
(5842, 1534, 'Gary', 1),
(5843, 1535, 'Des Moines', 1),
(5844, 1535, 'Cedar Rapids', 1),
(5845, 1535, 'Davenport', 1),
(5846, 1536, 'Wichita', 1),
(5847, 1536, 'Overland Park', 1),
(5848, 1536, 'Kansas City', 1),
(5849, 1536, 'Topeka', 1),
(5850, 1537, 'Lexington-Fayette', 1),
(5851, 1537, 'Louisville', 1),
(5852, 1538, 'New Orleans', 1),
(5853, 1538, 'Baton Rouge', 1),
(5854, 1538, 'Shreveport', 1),
(5855, 1538, 'Metairie', 1),
(5856, 1538, 'Lafayette', 1),
(5857, 1539, 'Baltimore', 1),
(5858, 1540, 'Boston', 1),
(5859, 1540, 'Worcester', 1),
(5860, 1540, 'Springfield', 1),
(5861, 1540, 'Lowell', 1),
(5862, 1540, 'Cambridge', 1),
(5863, 1540, 'New Bedford', 1),
(5864, 1540, 'Brockton', 1),
(5865, 1540, 'Fall River', 1),
(5866, 1541, 'Detroit', 1),
(5867, 1541, 'Grand Rapids', 1),
(5868, 1541, 'Warren', 1),
(5869, 1541, 'Flint', 1),
(5870, 1541, 'Sterling Heights', 1),
(5871, 1541, 'Lansing', 1),
(5872, 1541, 'Ann Arbor', 1),
(5873, 1541, 'Livonia', 1),
(5874, 1542, 'Minneapolis', 1),
(5875, 1542, 'Saint Paul', 1),
(5876, 1543, 'Jackson', 1),
(5877, 1544, 'Kansas City', 1),
(5878, 1544, 'Saint Louis', 1),
(5879, 1544, 'Springfield', 1),
(5880, 1544, 'Independence', 1),
(5881, 1545, 'Billings', 1),
(5882, 1546, 'Omaha', 1),
(5883, 1546, 'Lincoln', 1),
(5884, 1547, 'Las Vegas', 1),
(5885, 1547, 'Reno', 1),
(5886, 1547, 'Henderson', 1),
(5887, 1547, 'Paradise', 1),
(5888, 1547, 'North Las Vegas', 1),
(5889, 1547, 'Sunrise Manor', 1),
(5890, 1548, 'Manchester', 1),
(5891, 1549, 'Newark', 1),
(5892, 1549, 'Jersey City', 1),
(5893, 1549, 'Paterson', 1),
(5894, 1549, 'Elizabeth', 1),
(5895, 1550, 'Albuquerque', 1),
(5896, 1551, 'New York', 1),
(5897, 1551, 'Buffalo', 1),
(5898, 1551, 'Rochester', 1),
(5899, 1551, 'Yonkers', 1),
(5900, 1551, 'Syracuse', 1),
(5901, 1551, 'Albany', 1),
(5902, 1552, 'Charlotte', 1),
(5903, 1552, 'Raleigh', 1),
(5904, 1552, 'Greensboro', 1),
(5905, 1552, 'Durham', 1),
(5906, 1552, 'Winston-Salem', 1),
(5907, 1552, 'Fayetteville', 1),
(5908, 1552, 'Cary', 1),
(5909, 1553, 'Columbus', 1),
(5910, 1553, 'Cleveland', 1),
(5911, 1553, 'Cincinnati', 1),
(5912, 1553, 'Toledo', 1),
(5913, 1553, 'Akron', 1),
(5914, 1553, 'Dayton', 1),
(5915, 1554, 'Oklahoma City', 1),
(5916, 1554, 'Tulsa', 1),
(5917, 1554, 'Norman', 1),
(5918, 1555, 'Portland', 1),
(5919, 1555, 'Eugene', 1),
(5920, 1555, 'Salem', 1),
(5921, 1556, 'Philadelphia', 1),
(5922, 1556, 'Pittsburgh', 1),
(5923, 1556, 'Allentown', 1),
(5924, 1556, 'Erie', 1),
(5925, 1557, 'Providence', 1),
(5926, 1558, 'Columbia', 1),
(5927, 1558, 'Charleston', 1),
(5928, 1559, 'Sioux Falls', 1),
(5929, 1560, 'Memphis', 1),
(5930, 1560, 'Nashville-Davidson', 1),
(5931, 1560, 'Knoxville', 1),
(5932, 1560, 'Chattanooga', 1),
(5933, 1560, 'Clarksville', 1),
(5934, 1561, 'Houston', 1),
(5935, 1561, 'Dallas', 1),
(5936, 1561, 'San Antonio', 1),
(5937, 1561, 'Austin', 1),
(5938, 1561, 'El Paso', 1),
(5939, 1561, 'Fort Worth', 1),
(5940, 1561, 'Arlington', 1),
(5941, 1561, 'Corpus Christi', 1),
(5942, 1561, 'Plano', 1),
(5943, 1561, 'Garland', 1),
(5944, 1561, 'Lubbock', 1),
(5945, 1561, 'Irving', 1),
(5946, 1561, 'Laredo', 1),
(5947, 1561, 'Amarillo', 1),
(5948, 1561, 'Brownsville', 1),
(5949, 1561, 'Pasadena', 1),
(5950, 1561, 'Grand Prairie', 1),
(5951, 1561, 'Mesquite', 1),
(5952, 1561, 'Abilene', 1),
(5953, 1561, 'Beaumont', 1),
(5954, 1561, 'Waco', 1),
(5955, 1561, 'Carrollton', 1),
(5956, 1561, 'McAllen', 1),
(5957, 1561, 'Wichita Falls', 1),
(5958, 1561, 'Midland', 1),
(5959, 1561, 'Odessa', 1),
(5960, 1562, 'Salt Lake City', 1),
(5961, 1562, 'West Valley City', 1),
(5962, 1562, 'Provo', 1),
(5963, 1562, 'Sandy', 1),
(5964, 1563, 'Virginia Beach', 1),
(5965, 1563, 'Norfolk', 1),
(5966, 1563, 'Chesapeake', 1),
(5967, 1563, 'Richmond', 1),
(5968, 1563, 'Newport News', 1),
(5969, 1563, 'Arlington', 1),
(5970, 1563, 'Hampton', 1),
(5971, 1563, 'Alexandria', 1),
(5972, 1563, 'Portsmouth', 1),
(5973, 1563, 'Roanoke', 1),
(5974, 1564, 'Seattle', 1),
(5975, 1564, 'Spokane', 1),
(5976, 1564, 'Tacoma', 1),
(5977, 1564, 'Vancouver', 1),
(5978, 1564, 'Bellevue', 1),
(5979, 1565, 'Milwaukee', 1),
(5980, 1565, 'Madison', 1),
(5981, 1565, 'Green Bay', 1),
(5982, 1565, 'Kenosha', 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `active`) VALUES
(1521, 'Alabama', 1),
(1522, 'Alaska', 1),
(1523, 'Arizona', 1),
(1524, 'Arkansas', 1),
(1525, 'California', 1),
(1526, 'Colorado', 1),
(1527, 'Connecticut', 1),
(1528, 'District of Columbia', 1),
(1529, 'Florida', 1),
(1530, 'Georgia', 1),
(1531, 'Hawaii', 1),
(1532, 'Idaho', 1),
(1533, 'Illinois', 1),
(1534, 'Indiana', 1),
(1535, 'Iowa', 1),
(1536, 'Kansas', 1),
(1537, 'Kentucky', 1),
(1538, 'Louisiana', 1),
(1539, 'Maryland', 1),
(1540, 'Massachusetts', 1),
(1541, 'Michigan', 1),
(1542, 'Minnesota', 1),
(1543, 'Mississippi', 1),
(1544, 'Missouri', 1),
(1545, 'Montana', 1),
(1546, 'Nebraska', 1),
(1547, 'Nevada', 1),
(1548, 'New Hampshire', 1),
(1549, 'New Jersey', 1),
(1550, 'New Mexico', 1),
(1551, 'New York', 1),
(1552, 'North Carolina', 1),
(1553, 'Ohio', 1),
(1554, 'Oklahoma', 1),
(1555, 'Oregon', 1),
(1556, 'Pennsylvania', 1),
(1557, 'Rhode Island', 1),
(1558, 'South Carolina', 1),
(1559, 'South Dakota', 1),
(1560, 'Tennessee', 1),
(1561, 'Texas', 1),
(1562, 'Utah', 1),
(1563, 'Virginia', 1),
(1564, 'Washington', 1),
(1565, 'Wisconsin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_validator`
--
ALTER TABLE `address_validator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_validator`
--
ALTER TABLE `address_validator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5983;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
