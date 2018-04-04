--
-- Table structure for table `#__jvlike`
--
CREATE TABLE IF NOT EXISTS `#__jvlike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `itemid` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT COLLATE=utf8_general_ci;


