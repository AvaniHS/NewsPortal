-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2019 at 03:26 PM
-- Server version: 5.7.21
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'avanirao0811@gmail.com', 1, '2018-05-27 17:51:00', '2019-11-17 01:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(9, 'International ', 'International News', '2019-11-17 23:18:54', '2019-11-20 00:06:32', 1),
(10, 'Sports', 'Sorts News', '2019-11-18 05:02:03', NULL, 1),
(11, 'Entertainment', 'Entertainment News', '2019-11-18 05:02:24', NULL, 1),
(13, 'Business', 'Business news', '2019-11-18 05:03:01', NULL, 1),
(14, 'Regional ', 'Regional News', '2019-11-18 05:03:34', NULL, 1),
(15, 'National', 'National News', '2019-11-20 00:16:14', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

DROP TABLE IF EXISTS `tblcomments`;
CREATE TABLE IF NOT EXISTS `tblcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 0),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 1),
(6, '10', 'xyz', 'kujyfdgh@mjghf', 'mkjugytdsxcvhjgyt', '2019-11-17 01:55:43', 1),
(8, '15', 'asgh', 'zsdfgh@dsh', 'Test Comment', '2019-11-19 04:27:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">News Portal is developed by Enthusiastic and passionate college students, studying BE in Computer Science and Engineering at Vidyavardhaka College of Engineering.&nbsp;</span></font></p><p><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\"><br></span></font><br></p>', '2018-06-30 18:01:03', '2019-11-16 09:46:29'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; Vidyavardhaka College of Engineering, Mysore.</b></p><p><b>Phone Number : +91 8762083313, +91 9611014960,+91&nbsp;</b><b>7892148386</b></p><p><b>Email -id : avanirao0811@gmail.com ,turkarayushi@gmail.com, contactneha@gmail.com</b></p>', '2018-06-30 18:01:36', '2019-11-18 03:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

DROP TABLE IF EXISTS `tblposts`;
CREATE TABLE IF NOT EXISTS `tblposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(14, 'No truck with Dalai Lama please, China to India', 9, 11, '<ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size:18.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;;color:#222222;mso-fareast-language:EN-IN\">China\r\n     officially reminded India yet again this month that any interaction which\r\n     senior Indian&nbsp;leaders or government functionaries might have\r\n     with&nbsp;the Dalai Lama was going to be detrimental to the bilateral\r\n     relationship</span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:EN-IN\"><o:p></o:p></span></li>\r\n <li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size:18.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;;color:#222222;mso-fareast-language:EN-IN\">China strongly\r\n     opposes any contact between Dalai Lama and leaders and officials of India\r\n     or any other country</span><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\n     mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:EN-IN\"><o:p></o:p></span></li>\r\n</ul>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nmargin-left:36.0pt;line-height:normal\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<ul type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"line-height: normal;\"><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;;mso-fareast-language:EN-IN\">Know More:</span><a href=\"https://timesofindia.indiatimes.com/india/no-truck-with-dalai-lama-please-china-to-india/articleshow/72100758.cms\" target=\"_blank\"> https://timesofindia.indiatimes.com/india/no-truck-with-dalai-lama-please-china-to-india/articleshow/72100758.cms</a><span style=\"font-size:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\n     &quot;Times New Roman&quot;;mso-fareast-language:EN-IN\"><o:p></o:p></span></li>\r\n</ul>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>', '2019-11-18 04:46:43', '2019-11-18 04:58:09', 1, 'No-truck-with-Dalai-Lama-please,-China-to-India', '814b6b0b04f22bda7cbc877c5447469c.png'),
(15, 'â€˜Hundreds of restaurants will shut down in Bengaluruâ€™  ', 14, 18, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n18.0pt\"><span style=\"font-size:14.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#222222;mso-fareast-language:\r\nEN-IN\">BENGALURU: Over the past two years quality eateries and pubs&nbsp;have\r\nbeen shutting down in the city. After The Smoke Co, Bflat Bar and Restaurant\r\nand The Humming Tree, the&nbsp;latest is Monkey Bar, Indiranagar, which will\r\nwind up on November 24</span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n18.0pt\"><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#222222;mso-fareast-language:\r\nEN-IN\">Read more at:<br>\r\n<a href=\"http://timesofindia.indiatimes.com/articleshow/72091379.cms?utm_source=contentofinterest&amp;utm_medium=text&amp;utm_campaign=cppst\"><span style=\"color: rgb(0, 116, 194);\">http://timesofindia.indiatimes.com/articleshow/72091379.cms?utm_source=contentofinterest&amp;utm_medium=text&amp;utm_campaign=cppst</span></a><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>', '2019-11-19 02:22:39', NULL, 1, 'â€˜Hundreds-of-restaurants-will-shut-down-in-Bengaluruâ€™--', 'ecb0954398ab126f932bac7084eb9c8e.png'),
(16, 'Dua Lipa thanks Shah Rukh Khan for teaching her Bollywood moves', 11, 15, '<div class=\"story-kicker\" style=\"margin: 0px; padding: 0px; color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><h2 style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; font-family: &quot;Open Sans&quot;, sans-serif; overflow-wrap: break-word; color: rgb(17, 17, 17); font-size: 18px; line-height: 25px; font-style: italic;\">Dua Lipa, who recently met Shah Rukh Khan in Mumbai before her concert, took to Twitter to thank him for teaching her Bollywood moves.</h2><p style=\"line-height: 21.75pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black\">nging sensation Dua Lipa who\r\nposed for a picture with romance king Shah Rukh Khan ahead of her performance\r\nin Mumbai, thanked the star for teaching her some Bollywood moves. The singer\r\nshared a picture where both the stars can be seen striking a picture-perfect\r\npose.<o:p></o:p></span></p><p style=\"margin-bottom: 15px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-size: 18px; line-height: 25px; font-style: italic;\">\r\n\r\n</p><p style=\"line-height: 21.75pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.8rem; overflow-wrap: break-word; max-height: 800px; overflow: hidden;\">\r\n\r\n<iframe data-google-container-id=\"4\" data-load-complete=\"true\" frameborder=\"0\" height=\"1\" id=\"google_ads_iframe_/6516239/outofpage_1x1_desktop_0\" marginheight=\"0\" marginwidth=\"0\" name=\"google_ads_iframe_/6516239/outofpage_1x1_desktop_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"1\" style=\"margin: 0px; padding: 0px;\">\r\n</iframe>\r\n\r\n<span style=\"font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black\">The\r\nactor sported a casual look in a blue shirt and jeans along with a white\r\nt-shirt, while the 24-year-old singer looked chic in a tan crop top paired well\r\nwith black denim.<o:p></o:p></span></p><p style=\"line-height: 21.75pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0.8rem; overflow-wrap: break-word; max-height: 800px; overflow: hidden;\"><span style=\"font-size:13.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:black\">\"So fun hanging with @iamsrk today! Thank you for teaching me\r\nyour Bollywood moves!!\" she captioned the picture on Twitter.<o:p></o:p></span></p><p style=\"margin-bottom: 15px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-size: 18px; line-height: 25px; font-style: italic;\">\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; font-family: &quot;Open Sans&quot;, sans-serif; overflow-wrap: break-word; color: rgb(17, 17, 17); font-size: 18px; line-height: 25px; font-style: italic;\">Read more:&nbsp;<a href=\"https://www.indiatoday.in/lifestyle/celebrity/story/dua-lipa-thanks-shah-rukh-khan-for-teaching-her-bollywood-moves-1619800-2019-11-17\" target=\"_blank\" style=\"font-family: &quot;Hind Madurai&quot;, sans-serif; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255);\">https://www.indiatoday.in/lifestyle/celebrity/story/dua-lipa-thanks-shah-rukh-khan-for-teaching-her-bollywood-moves-1619800-2019-11-17</a></p></div>', '2019-11-19 02:26:11', '2019-11-19 02:30:31', 1, 'Dua-Lipa-thanks-Shah-Rukh-Khan-for-teaching-her-Bollywood-moves', '631ec22921d91556eabcdcafc91f88e3.png'),
(17, 'J&K lockdown led to Rs 12,000 crore loss: Kashmir business body', 15, 19, '<p><span style=\"font-size:13.5pt;line-height:107%;\r\nfont-family:&quot;proximanova&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">SRINAGAR:&nbsp;</span><span style=\"font-size:11.0pt;line-height:107%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\"><a href=\"https://timesofindia.indiatimes.com/india/jammu-and-kashmir\" styleobj=\"[object Object]\" data-ga=\"within_article-topic_link|topic_https://timesofindia.indiatimes.com/india/jammu-and-kashmir\"><span style=\"font-size: 13.5pt; line-height: 107%; font-family: proximanova, serif; color: rgb(51, 51, 51);\">Kashmir</span></a></span><span style=\"color: rgba(0, 0, 0, 0.8);\"><span style=\"font-size:13.5pt;line-height:107%;font-family:\r\n&quot;proximanova&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">&nbsp;trade\r\nand local businesses have suffered a loss of approximately Rs 12,000 crore\r\nduring the shutdown of the last three months following the nullification of&nbsp;</span></span><span style=\"font-size:11.0pt;line-height:107%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-IN;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\"><a href=\"https://timesofindia.indiatimes.com/topic/article-370\" styleobj=\"[object Object]\" data-ga=\"within_article-topic_link|topic_article-370\"><span style=\"font-size: 13.5pt; line-height: 107%; font-family: proximanova, serif; color: rgb(51, 51, 51);\">Article\r\n370</span></a></span><span style=\"color: rgba(0, 0, 0, 0.8);\"><span style=\"font-size:13.5pt;line-height:107%;font-family:\r\n&quot;proximanova&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">,\r\naccording to the Kashmir Chamber of Commerce and Industry</span></span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\"><span style=\"font-size:13.5pt;line-height:107%;font-family:\r\n&quot;proximanova&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Read more:</span></span></p><p><a href=\"https://timesofindia.indiatimes.com/india/jk-lockdown-led-to-rs-12000-crore-loss-kashmir-business-body/articleshow/72134403.cms\" target=\"_blank\">https://timesofindia.indiatimes.com/india/jk-lockdown-led-to-rs-12000-crore-loss-kashmir-business-body/articleshow/72134403.cms</a><span style=\"color: rgba(0, 0, 0, 0.8);\"><span style=\"font-size:13.5pt;line-height:107%;font-family:\r\n&quot;proximanova&quot;,&quot;serif&quot;;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-IN;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\"><br></span></span><br></p>', '2019-11-20 00:19:23', NULL, 1, 'J&K-lockdown-led-to-Rs-12,000-crore-loss:-Kashmir-business-body', 'f095135a2ba7aafa73a32a1578b248d5.png'),
(18, ' Blood banks in Mumbai stare at severe shortage', 14, 20, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"color: rgb(34, 34, 34); font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt;\">MUMBAI: The city has been reeling\r\nunder a shortage of blood since the past few weeks, prompting the State Blood Transfusion\r\nCouncil (SBTC) to ask religious institutions, noon-profits, corporates,\r\ngovernment offices and housing societies to organize camps. Activists said the\r\nscarcity of blood units, which begins post-Diwali and continues till the end of\r\nNovember, has become an annual affair.</span><br></p><p class=\"MsoNormal\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:#222222;mso-fareast-language:EN-IN\">\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:\r\nEN-IN\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:14.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#222222;mso-fareast-language:\r\nEN-IN\">Read more at:</span><span style=\"font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#222222;mso-fareast-language:\r\nEN-IN\"><br>\r\n<a href=\"http://timesofindia.indiatimes.com/articleshow/72118286.cms?utm_source=contentofinterest&amp;utm_medium=text&amp;utm_campaign=cppst\" target=\"_blank\"><span style=\"color: rgb(0, 116, 194);\">http://timesofindia.indiatimes.com/articleshow/72118286.cms?utm_source=contentofinterest&amp;utm_medium=text&amp;utm_campaign=cppst</span></a><o:p></o:p></span></p><p class=\"MsoNormal\"><br></p>', '2019-11-20 00:29:48', '2019-11-20 00:38:27', 1, '-Blood-banks-in-Mumbai-stare-at-severe-shortage', '213fb9b92c75fc4f763abbd085c0dca8.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

DROP TABLE IF EXISTS `tblsubcategory`;
CREATE TABLE IF NOT EXISTS `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  PRIMARY KEY (`SubCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `postingDate`, `UpdationDate`, `Is_Active`) VALUES
(11, 9, 'Political', 'International Political News', '2019-11-18 04:27:55', NULL, 1),
(12, 10, 'Cricket', 'Cricket News', '2019-11-18 05:04:47', NULL, 1),
(13, 10, 'Football', 'Football news', '2019-11-18 05:05:09', NULL, 1),
(14, 11, 'Television', 'Television News', '2019-11-18 05:05:39', NULL, 1),
(15, 11, 'Movies', 'Movie news (New Releases)', '2019-11-18 05:06:12', NULL, 1),
(18, 14, 'Bengaluru', 'Regional news ', '2019-11-19 02:21:42', NULL, 1),
(19, 15, 'J&K', 'Kashmira news', '2019-11-20 00:17:28', NULL, 1),
(20, 14, 'Mumbai', 'Mumbai news', '2019-11-20 00:30:26', NULL, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
