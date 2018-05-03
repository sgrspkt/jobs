-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2018 at 09:13 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ckpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `email`, `password`, `ckpassword`) VALUES
(1, 'sgr.sapkota5@gmail.com', 'e6e061838856bf47e1de730719fb2609', 'e6e061838856bf47e1de730719fb2609');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `jobs_id` int(11) NOT NULL,
  `job_category` varchar(55) NOT NULL,
  `portal_id` int(11) NOT NULL,
  `jobs_title` varchar(50) NOT NULL,
  `jobs_url` varchar(200) NOT NULL,
  `company_logo` varchar(50) NOT NULL,
  `jobs_desc` text NOT NULL,
  `jobs_type` varchar(50) NOT NULL,
  `jobs_deadline` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`jobs_id`, `job_category`, `portal_id`, `jobs_title`, `jobs_url`, `company_logo`, `jobs_desc`, `jobs_type`, `jobs_deadline`) VALUES
(127, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(128, 'recent', 1, ' 							Business Leader						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(129, 'recent', 1, ' 							Dispatch Manager (M/F)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(130, 'recent', 1, ' 							CP/CFLG Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(131, 'recent', 1, ' 							Field Officer/ Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(132, 'recent', 1, ' 							Training Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(133, 'recent', 1, ' 							Finance officer							', 'test', 'test', 'testt', ' 						Full Time					', ''),
(134, 'recent', 1, ' 							MEAL Officer							', 'test', 'test', 'testt', ' 						Full Time					', ''),
(135, 'recent', 1, ' 							Project Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(136, 'recent', 1, ' 							Graphic Designer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(137, 'recent', 1, ' 							Office Assistant						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(138, 'recent', 1, ' 							Paid Intern (M/F)						', 'test', 'test', 'testt', ' 						Intern / Trainees					', ''),
(139, 'recent', 1, ' 							Content Writer						', 'test', 'test', 'testt', ' 						Freelance					', ''),
(140, 'recent', 1, ' 							 Case Worker						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(141, 'recent', 1, ' 							Senior Field Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(142, 'recent', 1, ' 							Sub-engineer/ Livestock Technician/ Commun', 'test', 'test', 'testt', ' 						Full Time					', ''),
(143, 'recent', 1, ' 							Advanced PHP Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(144, 'recent', 1, ' 							Web Content Editor/Proofreader						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(145, 'recent', 1, ' 							Test Lead						', 'test', 'test', 'testt', ' 						Contract					', ''),
(146, 'recent', 1, ' 							Mid-level Java developer 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(147, 'recent', 1, ' 							UI/UX Designer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(148, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(149, 'recent', 1, ' 							Case Worker						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(150, 'recent', 1, ' 							Consultant in Otolaryngology 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(151, 'recent', 1, ' 							web Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(152, 'recent', 1, ' 							Livelihood Officer and Sub-Overseer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(153, 'recent', 1, ' 							MHAC Admin Clerk						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(154, 'recent', 1, ' 							Request For Proposal						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(155, 'recent', 1, ' 							Program Officer - Education						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(156, 'recent', 1, ' 							Consultant- Emergency Health Referral Syst', 'test', 'test', 'testt', ' 						Contract					', ''),
(157, 'recent', 1, ' 							WordPress Developer/Theme Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(158, 'recent', 1, ' 							Senior Java Script Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(159, 'recent', 1, ' 							Store Sales assistant (Male)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(160, 'recent', 1, ' 							Software Testing / QA / QC 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(161, 'recent', 1, ' 							PHP Developer - 3 Required						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(162, 'recent', 1, ' 							Web Developer(Freshers)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(163, 'recent', 1, ' 							Sales and Marketing Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(164, 'recent', 1, ' 							Front End Developer						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(165, 'recent', 1, ' 							Senior Fullstack Engineer - JavaScript/Nod', 'test', 'test', 'testt', ' 						Full Time					', ''),
(166, 'recent', 1, ' 							Sales and Marketing Executive						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(167, 'recent', 1, ' 							Counselor						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(168, 'recent', 1, ' 							Project Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(169, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(170, 'recent', 1, ' 							Sales and Marketing Executive						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(171, 'recent', 1, ' 							Software Engineer (Progress OpenEdge / Cor', 'test', 'test', 'testt', ' 						Full Time					', ''),
(172, 'recent', 1, ' 							Project Clerk						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(173, 'recent', 1, ' 							Project Assistant						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(174, 'recent', 1, ' 							Driver 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(175, 'recent', 1, ' 							Senior Finance and Admin Officer						', 'test', 'test', 'testt', ' 						Contract					', ''),
(176, 'recent', 1, ' 							Finance Assistant						', 'test', 'test', 'testt', ' 						Contract					', ''),
(177, 'recent', 1, ' 							Consultancy: Review, explore opportunities', 'test', 'test', 'testt', ' 						Contract					', ''),
(178, 'recent', 1, ' 							Mid Level Front End Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(179, 'recent', 1, ' 							PHP Developers						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(180, 'recent', 1, ' 							IT Support Staff						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(181, 'recent', 1, ' 							Cook						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(182, 'recent', 1, ' 							Kitchen Helper						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(183, 'recent', 1, ' 							Database Specialist(Oracle)						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(184, 'recent', 1, ' 							Reception cum Admin						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(185, 'recent', 1, ' 							Counselor/Admission Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(186, 'recent', 1, ' 							Sr. Developers (.NET , Android & Java)				', 'test', 'test', 'testt', ' 						Full Time					', ''),
(187, 'recent', 1, ' 							Project Coordinator 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(188, 'recent', 1, ' 							Consultancy:Oxfam Safer WASH Construction ', 'test', 'test', 'testt', ' 						Contract					', ''),
(189, 'recent', 1, ' 							Intern Public Health						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(190, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(191, 'recent', 1, ' 							Monitoring & Evaluation Associate						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(192, 'recent', 1, ' 							Associate System Administrator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(193, 'recent', 1, ' 							Human Resource Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(194, 'recent', 1, ' 							Computer Technician						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(195, 'recent', 1, ' 							Field Sales Executive / National IS Manage', 'test', 'test', 'testt', ' 						Full Time					', ''),
(196, 'recent', 1, ' 							Online marketing executive						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(197, 'recent', 1, ' 							Manager, Business Development						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(198, 'recent', 1, ' 							Program Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(199, 'recent', 1, ' 							Program Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(200, 'recent', 1, ' 							Asst. Hotel Manager 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(201, 'recent', 1, ' 							Social Media Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(202, 'recent', 1, ' 							Administrative Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(203, 'recent', 1, ' 							Graphics Designer for Mobile Game Apps				', 'test', 'test', 'testt', ' 						Full / Part Time					', ''),
(204, 'recent', 1, ' 							Electronic Technician						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(205, 'recent', 1, ' 							(Jr.) Software Engineer (Progress OpenEdge', 'test', 'test', 'testt', ' 						Full Time					', ''),
(206, 'recent', 1, ' 							Administrative and Security Assistant					', 'test', 'test', 'testt', ' 						Full Time					', ''),
(207, 'recent', 1, ' 							ASP .NET DEVELOPER (MVC)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(208, 'recent', 1, ' 							Volunteer Management Advisor						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(209, 'recent', 1, ' 							GESI Advisor						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(210, 'recent', 1, ' 							Microsoft Office Teacher						', 'test', 'test', 'testt', ' 						Full / Part Time					', ''),
(211, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(212, 'recent', 1, ' 							Project Director						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(213, 'recent', 1, ' 							Graphic Designer/ Web Designer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(214, 'recent', 1, ' 							Programme Coordinator						', 'test', 'test', 'testt', ' 						Contract					', ''),
(215, 'recent', 1, ' 							JAVA Instructor						', 'test', 'test', 'testt', ' 						Full / Part Time					', ''),
(216, 'recent', 1, ' 							PHP MySQL Instructor						', 'test', 'test', 'testt', ' 						Full / Part Time					', ''),
(217, 'recent', 1, ' 							Web Designing Instructor						', 'test', 'test', 'testt', ' 						Full / Part Time					', ''),
(218, 'recent', 1, ' 							Admin and Finance Associate 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(219, 'recent', 1, ' 							Senior Manager - Correspondence						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(220, 'recent', 1, ' 							Social Safeguard Officer (SSO)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(221, 'recent', 1, ' 							Procurement Officer (PO)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(222, 'recent', 1, ' 							Geographic Information System (GIS) and In', 'test', 'test', 'testt', ' 						Full Time					', ''),
(223, 'recent', 1, ' 							Intern Engineer (Civil)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(224, 'recent', 1, ' 							Front Desk Executive/Ticketing Assistant		', 'test', 'test', 'testt', ' 						Full Time					', ''),
(225, 'recent', 1, ' 							SEO and Digital Marketing Associate						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(226, 'recent', 1, ' 							Technical Specialists						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(227, 'recent', 1, ' 							Operations/Administrative Specialists					', 'test', 'test', 'testt', ' 						Full Time					', ''),
(228, 'recent', 1, ' 							Dishwasher						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(229, 'recent', 1, ' 							Statistician/Environmental and Social Data', 'test', 'test', 'testt', ' 						Full Time					', ''),
(230, 'recent', 1, ' 							Conference Support Staff						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(231, 'recent', 1, ' 							 Conference Secretary						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(232, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(233, 'recent', 1, ' 							Conference Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(234, 'recent', 1, ' 							Restaurant Service Supervisor (Female)				', 'test', 'test', 'testt', ' 						Full Time					', ''),
(235, 'recent', 1, ' 							Python & Django Instructor						', 'test', 'test', 'testt', ' 						Full / Part Time					', ''),
(236, 'recent', 1, ' 							Indian (tandoor) Cook						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(237, 'recent', 1, ' 							Angular Developers						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(238, 'recent', 1, ' 							Graphic Designer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(239, 'recent', 1, ' 							Marketing Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(240, 'recent', 1, ' 							Mid Level PHP Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(241, 'recent', 1, ' 							Sales & Marketing Executive						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(242, 'recent', 1, ' 							Senior Software Developer (ASP.Net)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(243, 'recent', 1, ' 							Web Developer						', 'test', 'test', 'testt', ' 						Intern / Trainees					', ''),
(244, 'recent', 1, ' 							Web Designer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(245, 'recent', 1, ' 							Senior Web Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(246, 'recent', 1, ' 							Finance Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(247, 'recent', 1, ' 							Accountant						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(248, 'recent', 1, ' 							Administration Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(249, 'recent', 1, ' 							Software Quality Analyst						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(250, 'recent', 1, ' 							Business Analyst (Software)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(251, 'recent', 1, ' 							Data Entry Clerk						', 'test', 'test', 'testt', ' 						Contract					', ''),
(252, 'recent', 1, ' 							Civil Engineer/ Data Analyst						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(253, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(254, 'recent', 1, ' 							Accountant						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(255, 'recent', 1, ' 							Sr. WordPress Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(256, 'recent', 1, ' 							iOS - iPhone / iPAD Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(257, 'recent', 1, ' 							Designer / Front End Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(258, 'recent', 1, ' 							Sr MVC .Net Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(259, 'recent', 1, ' 							Digital Marketing Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(260, 'recent', 1, ' 							Software Engineer (.Net)-   R&D						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(261, 'recent', 1, ' 							Business Development Support						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(262, 'recent', 1, ' 							Business Development Associate						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(263, 'recent', 1, ' 							Business Development Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(264, 'recent', 1, ' 							Business Development Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(265, 'recent', 1, ' 							Call for Experts						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(266, 'recent', 1, ' 							Docker Engineer / DevOps / Linux SysOps / ', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(267, 'recent', 1, ' 							Office Boy						', 'test', 'test', 'testt', ' 						Contract					', ''),
(268, 'recent', 1, ' 							Software Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(269, 'recent', 1, ' 							Sr. QC Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(270, 'recent', 1, ' 							.NET programmer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(271, 'recent', 1, ' 							Digital Trader						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(272, 'recent', 1, ' 							Android Developer						', 'test', 'test', 'testt', ' 						Contract					', ''),
(273, 'recent', 1, ' 							WEB CONTENT EDITOR						', 'test', 'test', 'testt', ' 						Full / Part Time					', ''),
(274, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(275, 'recent', 1, ' 							Marketing Executive						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(276, 'recent', 1, ' 							Project Associate						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(277, 'recent', 1, ' 							Accounts Assistant						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(278, 'recent', 1, ' 							UI/ UX Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(279, 'recent', 1, ' 							Mid level JSP Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(280, 'recent', 1, ' 							Creative Writer						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(281, 'recent', 1, ' 							Web Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(282, 'recent', 1, ' 							Associate Manager, Business Development			', 'test', 'test', 'testt', ' 						Full Time					', ''),
(283, 'recent', 1, ' 							Producer / Presenter/ Driver						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(284, 'recent', 1, ' 							Research Associate						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(285, 'recent', 1, ' 							Business Development Associate						', 'test', 'test', 'testt', ' 						Contract					', ''),
(286, 'recent', 1, ' 							Senior DOT NET Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(287, 'recent', 1, ' 							Quality Assurance Lead						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(288, 'recent', 1, ' 							C#,.NET, Desktop Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(289, 'recent', 1, ' 							Senior QA Automation Engineer 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(290, 'recent', 1, ' 							System Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(291, 'recent', 1, ' 							Consultant						', 'test', 'test', 'testt', ' 						Contract					', ''),
(292, 'recent', 1, ' 							Admin/ Finance Assistant Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(293, 'recent', 1, ' 							Senior Quality Assurance Analyst						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(294, 'recent', 1, ' 							Business Development Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(295, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(296, 'recent', 1, ' 							Intern						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(297, 'recent', 1, ' 							Software Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(298, 'recent', 1, ' 							Computer Technician						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(299, 'recent', 1, ' 							Training Specialist						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(300, 'recent', 1, ' 							e-LMIS Quality Assurance Analyst						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(301, 'recent', 1, ' 							Health System Strengthening (HSS) Director', 'test', 'test', 'testt', ' 						Full Time					', ''),
(302, 'recent', 1, ' 							Commodity Security Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(303, 'recent', 1, ' 							Business Analyst						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(304, 'recent', 1, ' 							Data Analyst						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(305, 'recent', 1, ' 							Procurement & Logistic Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(306, 'recent', 1, ' 							iOS Developer (Mobile Machine Learning Eng', 'test', 'test', 'testt', ' 						Full Time					', ''),
(307, 'recent', 1, ' 							Front Desk Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(308, 'recent', 1, ' 							JavaScript Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(309, 'recent', 1, ' 							Branding and Promotion Officer						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(310, 'recent', 1, ' 							Graphics Designer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(311, 'recent', 1, ' 							Software QA Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(312, 'recent', 1, ' 							Software Engineer -  IOS Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(313, 'recent', 1, ' 							Software Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(314, 'recent', 1, ' 							Call Center Officer						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(315, 'recent', 1, ' 							Accountant						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(316, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(317, 'recent', 1, ' 							Civil Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(318, 'recent', 1, ' 							 Supervisor cum Accounts Executive						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(319, 'recent', 1, ' 							Kindergarten (KG) Teacher/ Play Group (PG)', 'test', 'test', 'testt', ' 						Full Time					', ''),
(320, 'recent', 1, ' 							.NET - Technical Lead						', 'test', 'test', 'testt', ' 						Contract					', ''),
(321, 'recent', 1, ' 							Front Desk Sales and Service Representativ', 'test', 'test', 'testt', ' 						Full Time					', ''),
(322, 'recent', 1, ' 							Dance Teacher/ Nepali Teacher						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(323, 'recent', 1, ' 							EPH / Social studies Teacher/ Dance Teache', 'test', 'test', 'testt', ' 						Full Time					', ''),
(324, 'recent', 1, ' 							Senior Software Engineer (Dot Net)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(325, 'recent', 1, ' 							Web Designer (UI) 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(326, 'recent', 1, ' 							Sr. Oracle PL/SQL Developer						', 'test', 'test', 'testt', ' 						Contract					', ''),
(327, 'recent', 1, ' 							Marketing						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(328, 'recent', 1, ' 							Graphic Designer || Laravel Developer					', 'test', 'test', 'testt', ' 						Full Time					', ''),
(329, 'recent', 1, ' 							Graduate Researchers / Writers						', 'test', 'test', 'testt', ' 						Contract					', ''),
(330, 'recent', 1, ' 							Technical Writer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(331, 'recent', 1, ' 							Data Scientist						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(332, 'recent', 1, ' 							Senior Data Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(333, 'recent', 1, ' 							Front-end Web Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(334, 'recent', 1, ' 							Article Writer						', 'test', 'test', 'testt', ' 						Full / Part Time					', ''),
(335, 'recent', 1, ' 							Sales Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(336, 'recent', 1, ' 							Marketing Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(337, 'recent', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(338, 'recent', 1, ' 							Sr. Developer, PHP						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(339, 'recent', 1, ' 							Science Teacher						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(340, 'recent', 1, ' 							Office Staff/Receptionist   						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(341, 'recent', 1, ' 							Maths Teacher						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(342, 'recent', 1, ' 							Games Teacher						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(343, 'recent', 1, ' 							English Teacher						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(344, 'recent', 1, ' 							Project Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(345, 'recent', 1, ' 							à¤²à¥‡à¤–à¤¾ à¤…à¤§à¤¿à¤•à¥ƒà¤¤/ à¤–à¤°à¤¿', 'test', 'test', 'testt', ' 						Full Time					', ''),
(346, 'recent', 1, ' 							Website Designer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(347, 'recent', 1, ' 							Teacher						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(348, 'recent', 1, ' 							QC Engineers						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(349, 'recent', 1, ' 							Web Developer 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(350, 'recent', 1, ' 							Laravel PHP Framework Web Developer Needed', 'test', 'test', 'testt', ' 						Full Time					', ''),
(351, 'recent', 1, ' 							PHP Developers						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(352, 'recent', 1, ' 							PHP / Javascript Developer						', 'test', 'test', 'testt', ' 						Full / Part Time					', ''),
(353, 'recent', 1, ' 							Web UI/Graphics Designer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(354, 'recent', 1, ' 							Private Sector Consultant						', 'test', 'test', 'testt', ' 						Contract					', ''),
(355, 'recent', 1, ' 							Sr. Java Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(356, 'recent', 1, ' 							Dot NET technologies using C#						', 'test', 'test', 'testt', ' 						Contract					', ''),
(357, 'recent', 1, ' 							Frontend Developers / WordPress Experts			', 'test', 'test', 'testt', ' 						Full Time					', ''),
(358, 'hot', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(359, 'hot', 1, ' 							Sponsorship Field Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(360, 'hot', 1, ' 							Sponsorship Data Entry Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(361, 'hot', 1, ' 							.NET â€“ Senior Software Engineer						', 'test', 'test', 'testt', ' 						Contract					', ''),
(362, 'hot', 1, ' 							Sponsorship Field Mobilizer Team Leader			', 'test', 'test', 'testt', ' 						Full Time					', ''),
(363, 'hot', 1, ' 							Filed Officer/ Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(364, 'hot', 1, ' 							CP/CFLG Field Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(365, 'hot', 1, ' 							Finance and Admin Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(366, 'hot', 1, ' 							Training Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(367, 'hot', 1, ' 							MEAL Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(368, 'hot', 1, ' 							Project Coordinator 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(369, 'hot', 1, ' 							CP/CFLG Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(370, 'hot', 1, ' 							Field Officer/ Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(371, 'hot', 1, ' 							Training Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(372, 'hot', 1, ' 							Finance officer							', 'test', 'test', 'testt', ' 						Full Time					', ''),
(373, 'hot', 1, ' 							MEAL Officer							', 'test', 'test', 'testt', ' 						Full Time					', ''),
(374, 'hot', 1, ' 							Project Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(375, 'hot', 1, ' 							 Case Worker						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(376, 'hot', 1, ' 							Senior Field Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(377, 'hot', 1, ' 							Advanced PHP Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(378, 'hot', 1, ' 							Test Lead						', 'test', 'test', 'testt', ' 						Contract					', ''),
(379, 'hot', 1, ' 							Consultant in Otolaryngology 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(380, 'hot', 1, ' 							web Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(381, 'hot', 1, ' 							Request For Proposal						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(382, 'hot', 1, ' 							WordPress Developer/Theme Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(383, 'hot', 1, ' 							Senior Java Script Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(384, 'hot', 1, ' 							Front End Developer						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(385, 'hot', 1, ' 							Counselor						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(386, 'hot', 1, ' 							Project Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(387, 'hot', 1, ' 							Software Engineer (Progress OpenEdge / Cor', 'test', 'test', 'testt', ' 						Full Time					', ''),
(388, 'hot', 1, ' 							Consultancy: Review, explore opportunities', 'test', 'test', 'testt', ' 						Contract					', ''),
(389, 'hot', 1, ' 							PHP Developers						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(390, 'hot', 1, ' 							Database Specialist(Oracle)						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(391, 'hot', 1, ' 							Project Coordinator 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(392, 'hot', 1, ' 							Consultancy:Oxfam Safer WASH Construction ', 'test', 'test', 'testt', ' 						Contract					', ''),
(393, 'hot', 1, ' 							Intern Public Health						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(394, 'hot', 1, ' 							Online marketing executive						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(395, 'hot', 1, ' 							Manager, Business Development						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(396, 'hot', 1, ' 							Program Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(397, 'hot', 1, ' 							Program Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(398, 'hot', 1, ' 							Asst. Hotel Manager 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(399, 'hot', 1, ' 							Social Media Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(400, 'hot', 1, ' 							Administrative Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(401, 'hot', 1, ' 							Electronic Technician						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(402, 'hot', 1, ' 							(Jr.) Software Engineer (Progress OpenEdge', 'test', 'test', 'testt', ' 						Full Time					', ''),
(403, 'hot', 1, ' 							ASP .NET DEVELOPER (MVC)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(404, 'hot', 1, ' 							Volunteer Management Advisor						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(405, 'hot', 1, ' 							GESI Advisor						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(406, 'hot', 1, ' 							Senior Manager - Correspondence						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(407, 'hot', 1, ' 							Social Safeguard Officer (SSO)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(408, 'hot', 1, ' 							Procurement Officer (PO)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(409, 'hot', 1, 'Job Title', 'test', 'test', 'testt', ' 						<a id="JobPositionName" href="http://www.jo', ''),
(410, 'hot', 1, ' 							Sponsorship Field Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(411, 'hot', 1, ' 							Sponsorship Data Entry Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(412, 'hot', 1, ' 							.NET â€“ Senior Software Engineer						', 'test', 'test', 'testt', ' 						Contract					', ''),
(413, 'hot', 1, ' 							Sponsorship Field Mobilizer Team Leader			', 'test', 'test', 'testt', ' 						Full Time					', ''),
(414, 'hot', 1, ' 							Filed Officer/ Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(415, 'hot', 1, ' 							CP/CFLG Field Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(416, 'hot', 1, ' 							Finance and Admin Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(417, 'hot', 1, ' 							Training Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(418, 'hot', 1, ' 							MEAL Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(419, 'hot', 1, ' 							Project Coordinator 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(420, 'hot', 1, ' 							CP/CFLG Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(421, 'hot', 1, ' 							Field Officer/ Mobilizer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(422, 'hot', 1, ' 							Training Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(423, 'hot', 1, ' 							Finance officer							', 'test', 'test', 'testt', ' 						Full Time					', ''),
(424, 'hot', 1, ' 							MEAL Officer							', 'test', 'test', 'testt', ' 						Full Time					', ''),
(425, 'hot', 1, ' 							Project Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(426, 'hot', 1, ' 							 Case Worker						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(427, 'hot', 1, ' 							Senior Field Engineer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(428, 'hot', 1, ' 							Advanced PHP Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(429, 'hot', 1, ' 							Test Lead						', 'test', 'test', 'testt', ' 						Contract					', ''),
(430, 'hot', 1, ' 							Consultant in Otolaryngology 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(431, 'hot', 1, ' 							web Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(432, 'hot', 1, ' 							Request For Proposal						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(433, 'hot', 1, ' 							WordPress Developer/Theme Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(434, 'hot', 1, ' 							Senior Java Script Developer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(435, 'hot', 1, ' 							Front End Developer						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(436, 'hot', 1, ' 							Counselor						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(437, 'hot', 1, ' 							Project Officer						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(438, 'hot', 1, ' 							Software Engineer (Progress OpenEdge / Cor', 'test', 'test', 'testt', ' 						Full Time					', ''),
(439, 'hot', 1, ' 							Consultancy: Review, explore opportunities', 'test', 'test', 'testt', ' 						Contract					', ''),
(440, 'hot', 1, ' 							PHP Developers						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(441, 'hot', 1, ' 							Database Specialist(Oracle)						', 'test', 'test', 'testt', ' 						Contract to Perm					', ''),
(442, 'hot', 1, ' 							Project Coordinator 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(443, 'hot', 1, ' 							Consultancy:Oxfam Safer WASH Construction ', 'test', 'test', 'testt', ' 						Contract					', ''),
(444, 'hot', 1, ' 							Intern Public Health						', 'test', 'test', 'testt', ' 						Full Time / Contract					', ''),
(445, 'hot', 1, ' 							Online marketing executive						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(446, 'hot', 1, ' 							Manager, Business Development						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(447, 'hot', 1, ' 							Program Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(448, 'hot', 1, ' 							Program Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(449, 'hot', 1, ' 							Asst. Hotel Manager 						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(450, 'hot', 1, ' 							Social Media Manager						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(451, 'hot', 1, ' 							Administrative Coordinator						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(452, 'hot', 1, ' 							Electronic Technician						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(453, 'hot', 1, ' 							(Jr.) Software Engineer (Progress OpenEdge', 'test', 'test', 'testt', ' 						Full Time					', ''),
(454, 'hot', 1, ' 							ASP .NET DEVELOPER (MVC)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(455, 'hot', 1, ' 							Volunteer Management Advisor						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(456, 'hot', 1, ' 							GESI Advisor						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(457, 'hot', 1, ' 							Senior Manager - Correspondence						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(458, 'hot', 1, ' 							Social Safeguard Officer (SSO)						', 'test', 'test', 'testt', ' 						Full Time					', ''),
(459, 'hot', 1, ' 							Procurement Officer (PO)						', 'test', 'test', 'testt', ' 						Full Time					', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kumarijob`
--

CREATE TABLE `tbl_kumarijob` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kumarijob`
--

INSERT INTO `tbl_kumarijob` (`id`, `category`, `title`, `url`, `company`, `time`, `deadline`, `logo`) VALUES
(1, 'recent', 'Global Village Assistant                                   ', 'https://www.kumarijob.com/company/habitat-for-humanity-nepal', 'Habitat for  Humanity Nepal                                        ', 'FULL TIME', '10 days left', ' '),
(2, 'recent', 'Marketing Representative                                   ', 'javascript:void(0);', 'Tara International Education                                        ', 'FULL TIME', '6 days left', ' '),
(3, 'recent', 'Site Engineer                                   ', 'https://www.kumarijob.com/company/habitat-for-humanity-nepal', 'Habitat for  Humanity Nepal                                        ', 'FULL TIME', '10 days left', ' '),
(4, 'recent', 'Senior Manager- Housing Suppor                                   ', 'https://www.kumarijob.com/company/habitat-for-humanity-nepal', 'Habitat for  Humanity Nepal                                        ', 'FULL TIME', '10 days left', ' '),
(5, 'recent', 'Fundraising Manager                                   ', 'https://www.kumarijob.com/company/action-aid-nepal', 'Action Aid Nepal                                        ', 'FULL TIME', '6 days left', ' '),
(6, 'recent', ' Senior Research & Advocacy Of                                   ', 'https://www.kumarijob.com/company/ipas-nepal', 'Ipas Nepal                                        ', 'FULL TIME', '6 days left', ' '),
(7, 'recent', ' Outreach and Communications O                                   ', 'https://www.kumarijob.com/company/ipas-nepal', 'Ipas Nepal                                        ', 'FULL TIME', '6 days left', ' '),
(8, 'recent', 'Program Officer                                   ', 'https://www.kumarijob.com/company/ipas-nepal', 'Ipas Nepal                                        ', 'FULL TIME', '6 days left', ' '),
(9, 'recent', 'Delivery Boy                                   ', 'https://www.kumarijob.com/company/onlinezeal', 'OnlineZeal                                        ', 'FULL TIME', '6 days left', ' '),
(10, 'recent', 'Customer support                                   ', 'https://www.kumarijob.com/company/onlinezeal', 'OnlineZeal                                        ', 'FULL TIME', '6 days left', ' '),
(11, 'recent', 'Accountant                                   ', 'https://www.kumarijob.com/company/young-group-of-companies', 'Young Group Of Companies                                        ', 'FULL TIME', '5 days left', ' '),
(12, 'recent', 'Office Executive                                   ', 'https://www.kumarijob.com/company/babyshopnepal-com', 'babyshopnepal.com                                        ', 'FULL TIME', '5 days left', ' '),
(13, 'recent', 'Marketing Representative                                   ', 'https://www.kumarijob.com/company/kamana-news-publications-pvt-ltd', 'Kamana News Publications Pvt.                                         ', 'FULL TIME', '5 days left', ' '),
(14, 'recent', 'Cashier                                   ', 'https://www.kumarijob.com/company/galaxy-public-school', 'Galaxy Public School                                        ', 'FULL TIME', '13 days left', ' '),
(15, 'recent', 'Receptionist(Female)                                   ', 'https://www.kumarijob.com/company/galaxy-public-school', 'Galaxy Public School                                        ', 'FULL TIME', '13 days left', ' '),
(16, 'recent', 'Telephone Operator                                   ', 'https://www.kumarijob.com/company/galaxy-public-school', 'Galaxy Public School                                        ', 'FULL TIME', '13 days left', ' '),
(17, 'recent', 'Sales Executive                                   ', 'https://www.kumarijob.com/company/easy-mobile-care', 'Easy Mobile Care                                        ', 'FULL TIME', '8 days left', ' '),
(18, 'recent', 'Graphic designer                                   ', 'https://www.kumarijob.com/company/easy-mobile-care', 'Easy Mobile Care                                        ', 'FULL TIME', '8 days left', ' '),
(19, 'recent', 'Finance Manager                                    ', 'https://www.kumarijob.com/company/world-link-communication', 'Worldlink Communications Pvt.                                         ', 'FULL TIME', '12 days left', ' '),
(20, 'recent', 'Customer Care                                   ', 'https://www.kumarijob.com/company/slr-techno-trade-pvt-ltd', 'SLR Techno & Trade Pvt. Ltd                                        ', 'FULL TIME', '22 days left', ' '),
(21, 'recent', 'Enterprise Sales Executive                                   ', 'https://www.kumarijob.com/company/world-link-communication', 'Worldlink Communications Pvt.                                         ', 'FULL TIME', '3 days left', ' '),
(22, 'recent', 'Delivery Boy                                   ', 'https://www.kumarijob.com/company/nepalpharmacy-com', 'NepalPharmacy.com                                        ', 'FULL TIME', '4 days left', ' '),
(23, 'recent', 'IT Incharge                                   ', 'https://www.kumarijob.com/company/premier-international-school', 'Premier International School                                        ', 'FULL TIME', '4 days left', ' '),
(24, 'recent', 'Australian Based Counselor                                   ', 'https://www.kumarijob.com/company/residency-guide', 'Residency Guide                                        ', 'FULL TIME', '3 days left', ' '),
(25, 'recent', 'Machine Operator                                   ', 'https://www.kumarijob.com/company/tectron-pvt-ltd', 'Tectron Pvt.Ltd                                        ', 'FULL TIME', '3 days left', ' '),
(26, 'recent', 'Graphic designer                                   ', 'https://www.kumarijob.com/company/yakamoz-technology', 'Yakamoz Technology                                        ', 'FULL TIME', '3 days left', ' '),
(27, 'recent', 'Human Resource Assistant                                   ', 'https://www.kumarijob.com/company/shangrila-spirits-private-limited', 'Trading Company                                        ', 'FULL TIME', '24 days left', ' '),
(28, 'recent', 'Executive Chef                                   ', 'https://www.kumarijob.com/company/king-ring-lounge', 'King Ring Lounge                                        ', 'FULL TIME', '10 days left', ' '),
(29, 'recent', 'Agriculture Technician                                   ', 'https://www.kumarijob.com/company/nyayik-sansar', 'Nyayik Sansar                                        ', 'FULL TIME', '3 days left', ' '),
(30, 'recent', 'Finance and Operations Officer                                   ', 'https://www.kumarijob.com/company/hki-ingo', 'Helen Keller International (IN                                        ', 'FULL TIME', '3 days left', ' '),
(31, 'recent', 'Sales & Marketing                                   ', 'https://www.kumarijob.com/company/cottage-craft', 'Cottage Craft                                        ', 'FULL TIME', '8 days left', ' '),
(32, 'recent', 'Fiber Technicians                                   ', 'https://www.kumarijob.com/company/vianet', 'Vianet Communications                                        ', 'FULL TIME', '23 days left', ' '),
(33, 'recent', 'Area Sales Representative                                   ', 'https://www.kumarijob.com/company/vianet', 'Vianet Communications                                        ', 'FULL TIME', '13 days left', ' '),
(34, 'recent', 'Receptionist(Female)                                   ', 'https://www.kumarijob.com/company/digi-flex-pvt-ltd', 'Digi Flex Pvt. Ltd                                        ', 'FULL TIME', '1 day left', ' '),
(35, 'recent', 'Graphic designer                                   ', 'https://www.kumarijob.com/company/digi-flex-pvt-ltd', 'Digi Flex Pvt. Ltd                                        ', 'FULL TIME', '1 day left', ' '),
(36, 'recent', 'Account Manager                                   ', 'https://www.kumarijob.com/company/maa-bhagwati-multipurpose-co-operative-limited', 'Maa Bhagwati Multipurpose Co-o                                        ', 'FULL TIME', '1 day left', ' '),
(37, 'recent', 'Teller                                   ', 'https://www.kumarijob.com/company/maa-bhagwati-multipurpose-co-operative-limited', 'Maa Bhagwati Multipurpose Co-o                                        ', 'FULL TIME', '1 day left', ' '),
(38, 'recent', 'Project Manager                                   ', 'https://www.kumarijob.com/company/global-digital-pvt-ltd', 'Global Digital Pvt. Ltd                                        ', 'FULL TIME', '1 day left', ' '),
(39, 'recent', 'Staff Engineers(SE) & Civil En                                   ', 'https://www.kumarijob.com/company/build-change', 'Build Change                                        ', 'FULL TIME', '8 days left', ' '),
(40, 'recent', 'Sales and Marketing Officer                                    ', 'https://www.kumarijob.com/company/career-nepal-skill-development-training-center-pvt-ltd', 'Career Nepal  skill Developmen                                        ', 'FULL TIME', '8 days left', ' '),
(41, 'recent', 'Webmaster                                   ', 'https://www.kumarijob.com/company/amnesty-international', 'Amnesty International Nepal                                        ', 'FULL TIME', '8 days left', ' '),
(42, 'recent', 'Marketing Officer                                   ', 'https://www.kumarijob.com/company/focus-fox', 'Focus Fox                                        ', 'FULL TIME', '2 days left', ' '),
(43, 'recent', 'Graphic Designer                                   ', 'https://www.kumarijob.com/company/focus-fox', 'Focus Fox                                        ', 'FULL TIME', '2 days left', ' '),
(44, 'recent', 'District Project Coordinator                                   ', 'https://www.kumarijob.com/company/helvetas-nepal-ingo', 'HELVETAS Nepal(INGO)                                        ', 'FULL TIME', '2 days left', ' '),
(45, 'recent', 'MIS Officer                                   ', 'https://www.kumarijob.com/company/shangrila-spirits-private-limited', 'Trading Company                                        ', 'FULL TIME', '24 days left', ' '),
(46, 'recent', 'Sales Support executive                                   ', 'https://www.kumarijob.com/company/vivo-communication-pvt-ltd', 'Vivo Communication Pvt.Ltd                                        ', 'FULL TIME', '2 days left', ' '),
(47, 'hot', 'Global Village Assis...', 'https://www.kumarijob.com/hotjob/global-village-assistant/14176', 'Habitat for  Humanity Nepal                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Habitat-For-Humanity-Logo.png '),
(48, 'hot', 'Senior Manager- Hous...', 'https://www.kumarijob.com/hotjob/senior-manager-housing-support-services/14173', 'Habitat for  Humanity Nepal                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Habitat-For-Humanity-Logo.png '),
(49, 'hot', 'Marketing Representa...', 'https://www.kumarijob.com/hotjob/marketing-representative/14174', 'Tara International Education                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/1117834762_1436090197.gif '),
(50, 'hot', 'Fundraising Manager', 'https://www.kumarijob.com/hotjob/fundraising-manager/14172', 'Action Aid Nepal                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/ACTION-AID-LOGO.png '),
(51, 'hot', ' Senior Research & A...', 'https://www.kumarijob.com/hotjob/senior-research-advocacy-officer/14169', 'Ipas Nepal                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/IPASlogo-min.png '),
(52, 'hot', 'Program Officer', 'https://www.kumarijob.com/hotjob/program-officer/14171', 'Ipas Nepal                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/IPASlogo-min.png '),
(53, 'hot', 'Delivery Boy', 'https://www.kumarijob.com/hotjob/delivery-boy/14165', 'OnlineZeal                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/online_zeallogo-min.png '),
(54, 'hot', 'Accountant', 'https://www.kumarijob.com/hotjob/accountant/14168', 'Young Group Of Companies                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Younggroupofcompanieslogo.png '),
(55, 'hot', 'Office Executive', 'https://www.kumarijob.com/hotjob/office-executive/14167', 'babyshopnepal.com                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Babyshopnepallogo.png '),
(56, 'hot', 'Marketing Representa...', 'https://www.kumarijob.com/hotjob/marketing-representative/14164', 'Kamana News Publications Pvt. Ltd                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Kamanalogo-min.png '),
(57, 'hot', 'Cashier', 'https://www.kumarijob.com/hotjob/cashier/14161', 'Galaxy Public School                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Galaxyschoollogo.png '),
(58, 'hot', 'Telephone Operator', 'https://www.kumarijob.com/hotjob/telephone-operator/14163', 'Galaxy Public School                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Galaxyschoollogo.png '),
(59, 'hot', 'Sales Executive', 'https://www.kumarijob.com/hotjob/sales-executive/14158', 'Easy Mobile Care                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/EasyMobilecarelogo-min.png '),
(60, 'hot', 'Customer Care', 'https://www.kumarijob.com/hotjob/customer-care/14154', 'SLR Techno & Trade Pvt. Ltd                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Autolife-Logo.png '),
(61, 'hot', 'Delivery Boy', 'https://www.kumarijob.com/hotjob/delivery-boy/14152', 'NepalPharmacy.com                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/NepalPharmacylogol.png '),
(62, 'hot', 'IT Incharge', 'https://www.kumarijob.com/hotjob/it-incharge/14151', 'Premier International School                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Premierschoollogo.png '),
(63, 'hot', 'Australian Based Cou...', 'https://www.kumarijob.com/hotjob/australian-based-counselor/14148', 'Residency Guide                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Residencyguidelogo.png '),
(64, 'hot', 'Machine Operator', 'https://www.kumarijob.com/hotjob/machine-operator/14147', 'Tectron Pvt.Ltd                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Tectronlogo.png '),
(65, 'hot', 'Graphic designer', 'https://www.kumarijob.com/hotjob/graphic-designer/14145', 'Yakamoz Technology                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Yakamoztechnologylogo.png '),
(66, 'hot', 'Human Resource Assis...', 'https://www.kumarijob.com/hotjob/human-resource-assistant/14146', 'Trading Company                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/trading-company-logo.png '),
(67, 'hot', 'Executive Chef', 'https://www.kumarijob.com/hotjob/executive-chef/14142', 'King Ring Lounge                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Kingringlogo.png '),
(68, 'hot', 'Agriculture Technici...', 'https://www.kumarijob.com/hotjob/agriculture-technician/14144', 'Nyayik Sansar                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Nyayik-logo.png '),
(69, 'hot', 'Finance and Operatio...', 'https://www.kumarijob.com/hotjob/finance-and-operations-officerfield-base/14143', 'Helen Keller International (INGO)                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Helen-Keller-International-logo.png '),
(70, 'hot', 'Sales & Marketing', 'https://www.kumarijob.com/hotjob/sales-marketing/14139', 'Cottage Craft                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/COTTAGE-CRAFT-LOGO.png '),
(71, 'hot', 'Fiber Technicians', 'https://www.kumarijob.com/hotjob/fiber-technicians/14140', 'Vianet Communications                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Vianetlogo9.png '),
(72, 'hot', 'Receptionist(Female)', 'https://www.kumarijob.com/hotjob/receptionistfemale/14137', 'Digi Flex Pvt. Ltd                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Difi-Flex-Logo.png '),
(73, 'hot', 'Account Manager', 'https://www.kumarijob.com/hotjob/account-manager/14135', 'Maa Bhagwati Multipurpose Co-operat...                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/MaaBhagawatimultipurposecooperativelogo-min.png '),
(74, 'hot', 'Project Manager', 'https://www.kumarijob.com/hotjob/project-manager/14134', 'Global Digital Pvt. Ltd                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/GlobalDigitallogo.png '),
(75, 'hot', 'Staff Engineers(SE) ...', 'https://www.kumarijob.com/hotjob/staff-engineersse-civil-engineersce/14133', 'Build Change                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Build-Change-logo.png '),
(76, 'hot', 'Webmaster', 'https://www.kumarijob.com/hotjob/webmaster/14121', 'Amnesty International Nepal                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/Amnesty-International-logo.png '),
(77, 'hot', 'Marketing Officer', 'https://www.kumarijob.com/hotjob/marketing-officer/14092', 'Focus Fox                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/FocusFoxlogo-min.png '),
(78, 'hot', 'District Project Coo...', 'https://www.kumarijob.com/hotjob/district-project-coordinator/14051', 'HELVETAS Nepal(INGO)                                                                                                         ', ' ', ' ', 'https://www.kumarijob.com/assets/uploads/profilepics/HELVETAS-NEPAL-LOGO.png ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merocareer`
--

CREATE TABLE `tbl_merocareer` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_merocareer`
--

INSERT INTO `tbl_merocareer` (`id`, `category`, `title`, `url`, `description`, `company`) VALUES
(109, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1143.html', 'THE FULBARI RESORT, the only Five Star Deluxe Resort of Nepal, invites applications for the following positions.Positions:1. General Manager (Pokhara)2. Food and Beverage Manager (Pokhara)3. Executive Housekeeper (Pokhara)4. Marketing/Sales Managers ...', '<div class="company-wrap">THE FULBARI RESORT</div>'),
(110, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1142.html', 'Palpa Cement Industries Pvt. Ltd, an upcoming cement plant, announces vacancies in following Positions:Positions:1. Mines Manager - 3Bachelor in Mining, Mechanical, Civil Engineering, Geology having at least 5 years experience ...', '<div class="company-wrap">Yatri Suites & Spa Pvt Ltd</div>'),
(111, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1141.html', 'Vacancy Announcement for Yatri Suites &amp; Spa Pvt Ltd!!Positions:1. Operation Manager - 1Minimum 5-10 years of working experienceQualification: BHM/Bachelor Degree2. Reservation Assistant - 2Minimum 3 years of working experienceQualification: Bachelor ...', '<div class="company-wrap">Yatri Suites & Spa Pvt Ltd</div>'),
(112, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1140.html', 'Sindhu Bikash Bank Ltd. is a first development bank opened at Sindhupalchok district of Nepal is looking forward for the various positions for its corporate office, existing branches and upcoming ...', '<div class="company-wrap">Sindhu Bikash Bank</div>'),
(113, 'recent', '<h4 class="no-margin results-job-title">Project Associate </h4>', 'job-project-associate-1139.html', 'The National Information Commission (NIC) which is an independent statutory body has worked since 2008 for the protection, promotion and enforcement of the Right to Information (RTI) Act in Nepal. ...', '<div class="company-wrap">The National Information Commission (NIC)</div>'),
(114, 'recent', '<h4 class="no-margin results-job-title">Promoter</h4>', 'job-promoter-1138.html', 'Vividtech Impex Pvt. Ltd., an authorized dealer of UMIDIGI Smartphone for Nepal, is introducing one of the most valued and awaited Smartphone brand as such we are looking following employees:Position: ...', '<div class="company-wrap">Vividtech Impex Pvt. Ltd.</div>'),
(115, 'recent', '<h4 class="no-margin results-job-title">Trainees/Quantity Surveyor/Civil Engineer</h4>', 'job-traineesquantity-surveyorcivil-engineer-1137.html', 'Civil Homes Pvt. Ltd. is a Pioneer, an ISO 9001:2008 certified Leading and Reputed Real Estate Company in Nepal with a legacy of 17 years of excellence in providing comfort ...', '<div class="company-wrap">Civil Group</div>'),
(116, 'recent', '<h4 class="no-margin results-job-title">Accountant/PRO/Front Desk Officer</h4>', 'job-accountantprofront-desk-officer-1136.html', 'Anjali Group of Company Invites application from competent Nepali citizen for the following vacant position.Positions:1. Accountant - 2 M/F2. Front Desk Officer - 2 F3. Public Relation Officer - 2 ...', '<div class="company-wrap">Anjali Group of Company</div>'),
(117, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1135.html', 'We a prominent importer and distributor of Medical equipment, Surgical Sutures, Orthopedic Implants and Consumables are looking for candidates for the following posts:Positions:1. Marketing Executive ( Suture / Medical Equipment.) ...', '<div class="company-wrap">A Distributor</div>'),
(118, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1135.html', 'We a prominent importer and distributor of Medical equipment, Surgical Sutures, Orthopedic Implants and Consumables are looking for candidates for the following posts:Positions:1. Marketing Executive ( Suture / Medical Equipment.) ...', '<div class="company-wrap">A Reputed Company</div>'),
(119, 'recent', '<h4 class="no-margin results-job-title">Documentation Officer </h4>', 'job-documentation-officer-1134.html', 'A well established foreign employment company is looking for the following staffs.Position:&nbsp;Documentation Officer - 2Requirements:Above +2 or Bachelorâ€™s running preferred.Should have good Computer knowledge (Email, Internet, Photoshop, correspond, good typing ...', '<div class="company-wrap">Destiny Human Resource Nepal Pvt. Ltd.</div>'),
(120, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1133.html', 'Sunaulo Parivar Nepal (SPN) is a well-established NGO delivering Family Planning and Sexual Reproductive Health services through-out the country via centres, mobile outreach teams to remote areas and social marketing. ...', '<div class="company-wrap">Sunaulo Parivar Nepal</div>'),
(121, 'recent', '<h4 class="no-margin results-job-title">Office Assistant </h4>', 'job-office-assistant-1132.html', 'Vacancy Announcement for&nbsp;Collective Campaign for Peace (COCAP)Position: Office Assistant - 1 (Kathmandu)Duration: 1 year with possibility of extensionSalary: NPR 14500 per monthMinimum Qualification and Competencies:SLC passed with at least one ...', '<div class="company-wrap">Collective Campaign for Peace (COCAP)</div>'),
(122, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1131.html', 'Nepal Cancer Hospital &amp; Research Center (NCHRC) is the first comprehensive Cancer hospital run by private sector in Nepal in association with Rajiv Gandhi cancer Institute &amp; Research Center, New ...', '<div class="company-wrap">Nepal Cancer Hospital & Research Center (NCHRC) Pvt. Ltd</div>'),
(123, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1131.html', 'Nepal Cancer Hospital &amp; Research Center (NCHRC) is the first comprehensive Cancer hospital run by private sector in Nepal in association with Rajiv Gandhi cancer Institute &amp; Research Center, New ...', '<div class="company-wrap">Nepal Cancer Hospital & Research Center (NCHRC)</div>'),
(124, 'recent', '<h4 class="no-margin results-job-title">Finance Officer/Finance Assistant </h4>', 'job-finance-officerfinance-assistant-1130.html', 'Good Neighbors International (GNI) Nepal is an international non-government organization working in Nepal since 2002 with the objective of improving lives of people, especially children through education, income generating activities, ...', '<div class="company-wrap">Good Neighbors International</div>'),
(125, 'recent', '<h4 class="no-margin results-job-title">Teller/Receptionist/BDO/Branch Head</h4>', 'job-tellerreceptionistbdobranch-head-1129.html', 'Civil Group announces vacancies for Reputed finance and Cooperative institution for following positions:Positions:1. Teller - 1Qualification:10+2 or Bachelorâ€™s Degree in management or equivalentAt least 2 years â€˜experience in any financial ...', '<div class="company-wrap">Civil Group</div>'),
(126, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1128.html', 'Reliance Public School, Kapan, Kathmandu invites the application for the following post. Application along CV should reach School by 27 Kartik, 2074.Positions:1. Lower Secondary English and Science TeacherBachelor in related ...', '<div class="company-wrap">Reliance Public School</div>'),
(127, 'recent', '<h4 class="no-margin results-job-title">Sales Manager/Translator</h4>', 'job-sales-managertranslator-1127.html', 'Nepal â€“China joint venture Company, the largest FDI in Nepal that aims to build 600tpd line has vacancy in the following positions.Positions:&nbsp;1.Sales Manager - 9 (M)Requirements:Minimum Bachelors degree or Master ...', '<div class="company-wrap">HONGSHI SHIVAM CEMENT PVT. LTD.</div>'),
(128, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1126.html', 'If you are looking to take your career to the next level, here is the right opportunity, a prominent player in the field of communications management, is seeking to recruit ...', '<div class="company-wrap">A Reputed Company</div>'),
(129, 'recent', '<h4 class="no-margin results-job-title">Credit Officer/Marketing Representative</h4>', 'job-credit-officermarketing-representative-1125.html', 'Manipur Saving &amp; Credit Co-operative Ltd.&nbsp;located at Kathmandu-9, Battisputali offers career opportunity for dynamic, qualified and result oriented candidates for the following posts.Positions:1. Credit Officer - 1Qualification:Candidates Should have Bachelor ...', '<div class="company-wrap">Manipur Saving & Credit Co-operative Ltd.</div>'),
(130, 'recent', '<h4 class="no-margin results-job-title">Customer Service Representative </h4>', 'job-customer-service-representative-1124.html', 'Dream Education Consultancy Pvt. Ltd. is committed in providing quality and reliable services in the field of abroad studies counseling, consulting and recruitment. We are growing and expanding our services ...', '<div class="company-wrap">Dream Education Consultancy Pvt. Ltd.</div>'),
(131, 'recent', '<h4 class="no-margin results-job-title">Teachers</h4>', 'job-teachers-1123.html', 'GEMS SCHOOL/COLLEGE is looking for experience candidates possessing an excellent command of written and spoken English for the following positions.Positions:1. Mathematics Teacher&nbsp;Qualification:Bachelorâ€™s degree with successful teaching practice or experience of ...', '<div class="company-wrap">Gems HS School</div>'),
(132, 'recent', '<h4 class="no-margin results-job-title">Assistant Sub Engineer</h4>', 'job-assistant-sub-engineer-1122.html', 'Government of Nepal and the Government of Switzerland have signed a bilateral agreement to initiate a SMALL IRRIGATION PROGRAMME (SIP) â€“ PHASE I, in nine districts of Nepal namely Ramechhap, ...', '<div class="company-wrap">SMALL IRRIGATION PROGRAMME (SIP)</div>'),
(133, 'recent', '<h4 class="no-margin results-job-title">Office Assistant</h4>', 'job-office-assistant-1121.html', 'Emerging Nepal Limited, Established under Public Private&nbsp;Partnership (PPP) model company where the main promoters&nbsp;are Government of Nepal, renowned private sector leaders&nbsp;and bankers and having the motive of providing vital economic,&nbsp;social ...', '<div class="company-wrap">Emerging Nepal Limited</div>'),
(134, 'recent', '<h4 class="no-margin results-job-title">General Manager/PRO</h4>', 'job-general-managerpro-1120.html', 'A reputed, well established Manpower Agency is looking for qualified individuals with good communication skills for following positions:Positions:1. General Manager (Male) - 1Qualification: Bachelor degree &amp; at least 5-years experience ...', '<div class="company-wrap">A Manpower Agency</div>'),
(135, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1119.html', 'Bajra Group Kathmandu invites some energetic, qualified, visionary and dynamic candidates for the following posts.Position:1. Sales &amp; Marketing Head - 1Qualification: Bachelor/Master/Excel/Power Point + Own VehicleExperience: Minimum 10 years&nbsp;Salary: 60K+2. ...', '<div class="company-wrap">BAJRA GROUP </div>'),
(136, 'recent', '<h4 class="no-margin results-job-title">Branch Manager</h4>', 'job-branch-manager-1118.html', 'Deva Bikas Bank Ltd., a National level â€œE Class Financial Institution is looking for qualified, dynamic &amp; career oriented Branch Managers for the upcoming branches in Nepalgunj, Kohalpur, Birgunj and ...', '<div class="company-wrap">Deva Bikas Bank Ltd.</div>'),
(137, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1117.html', 'Jagdamba Steels Pvt. Ltd. is a flagship company Of US 5 700 Million Shanker Group, one of the leading and largest Steel manufacturing Companies in Nepal. For more than 80 ...', '<div class="company-wrap">Jagdamba Steels Pvt. Ltd.</div>'),
(138, 'recent', '<h4 class="no-margin results-job-title">Civil Engineer/Accountant</h4>', 'job-civil-engineeraccountant-1116.html', 'A well reputed growing Property Developer Company is looking committed, innovative and dynamic individuals for the following positions:Position: Civil Engineer - 1 (Kathmandu)Job Description:Monitoring the site progress to ensure that ...', '<div class="company-wrap">A Property Developer Company</div>'),
(139, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1115.html', 'A time-honored industry seeks applications from potential candidates to fill the following vacancies in major cities of the nation:Positions:1. Computer Operators - 4Qualification: +2 passedSalary: Rs. 15,0002. Operation Head - ...', '<div class="company-wrap">Nature Nest Pvt. Ltd.</div>'),
(140, 'recent', '<h4 class="no-margin results-job-title">Electrician</h4>', 'job-electrician-1113.html', 'Vacancy Announcement for&nbsp;Dish Media Network!!!!Position: Electrician - 1Job Location: Earth Station, Bhaisepati, LalitpurRequirements:Diploma in Electrical Engineering or sub-overseer with 1 year experience in the related fieldShould be flexible working in ...', '<div class="company-wrap">Dish Media Network</div>'),
(141, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1112.html', 'Aakarshan Intl Pvt. Ltd., one of the leading foreign employment organizations in Nepal seeking qualified candidates for the followings positions:Positions:1. Accounts Assistant - 2 (F)2. Correspondence Officer - 3 (F)3. ...', '<div class="company-wrap">Aakarshan Intl Pvt. Ltd</div>'),
(142, 'recent', '<h4 class="no-margin results-job-title">District Program Officer/Gender and Social Inclusion Coordinator</h4>', 'job-district-program-officergender-1111.html', 'Center for Agro-Ecology and Development (CAED) broadly works in social justice inssues with marginalized groups, dalit, women and indigenous people, it is looking for component candidates for the following positions ...', '<div class="company-wrap">Center for Agro-Ecology and Development (CAED)</div>'),
(143, 'recent', '<h4 class="no-margin results-job-title">Project Director</h4>', 'job-project-director-1104.html', 'World Education, Inc., an International NGO working with disadvantaged communities and vulnerable populations, seeks highly motivated and qualified candidates for the position of Project Director for an upcoming 3-year child ...', '<div class="company-wrap">World Education</div>'),
(144, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1103.html', 'We are a team of young and motivated professionals planning to soon launch a Nepali Daily Broadsheet Newspaper along with online news portal which will be based in Kathmandu As ...', '<div class="company-wrap">Nepal National Daily Broadsheet Newspaper & Online News Portal</div>'),
(145, 'recent', '<h4 class="no-margin results-job-title">Junior Officer/Officer </h4>', 'job-junior-officerofficer-1102.html', 'VACANCY ANNOUNCEMENT!!!!Position : Junior Officer/Officer - FewResponsibilitiesShall be engaged in different financial scope of the bank and support in strengthening the financial Performance of the bank keeping intact with accounting ...', '<div class="company-wrap">Garima Bikas Bank Ltd</div>'),
(146, 'recent', '<h4 class="no-margin results-job-title">Marketing Representative</h4>', 'job-marketing-representative-1101.html', 'Vacancy Announcement!!!Position: Marketing Representative - 2 FQualification: +2 or Bachelor in Science/Commerce from reputed university and having good command of EnglishSalary &amp; Benefits: NegotiableOther Specific Requirements: Must have own Bike ...', '<div class="company-wrap">Metro Radiology & Imaging Pvt. Ltd.</div>'),
(147, 'recent', '<h4 class="no-margin results-job-title">Sales and Marketing Managers</h4>', 'job-sales-and-marketing-1100.html', 'Business I.T. Alignment Pvt. Ltd., an entrepreneurial venture that comes together after 5-7 years of work experience in the field of Office automation, computing, telecommunication and IT hardware for working ...', '<div class="company-wrap">Business I.T. Alignment Pvt. Ltd</div>'),
(148, 'recent', '<h4 class="no-margin results-job-title">Sr. Accountant/Accountant</h4>', 'job-sr-accountantaccountant-1098.html', 'Vacancy Announcement for iCapital!!!iCapital invites applications from qualified candidates for the following positions:Positions:1. Sr. AccountantJob Descriptions:Handle Accounts of parent company as well as subsidiary companiesKeep book of accounts (Journal, ledger, ...', '<div class="company-wrap">iCAPITAL</div>'),
(149, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1097.html', 'Grande International Hospital LTD., Dhapasi, Kathmandu us seeking applications from highly motivated, professionals for the following post:Positions:1. Biomedical Engineer â€“ 22. Manager/Assistant Manager, Account â€“ 13. Marketing Officer â€“ 14. ...', '<div class="company-wrap">Grande International Hospital </div>'),
(150, 'recent', '<h4 class="no-margin results-job-title">Program Specialist/Program Officer </h4>', 'job-program-specialistprogram-officer-1096.html', 'CARE Nepal is an international humanitarian organization working in the country for the past 39 years. It currently works in 60 districts through various programs on issues relating to improving ...', '<div class="company-wrap">CARE Nepal</div>'),
(151, 'recent', '<h4 class="no-margin results-job-title">Project Manager/Civil Engineer/Accountant</h4>', 'job-project-managercivil-engineeraccountant-1090.html', 'Tundi Construction Pvt. Ltd is one of the reputed construction companies working in different parts of the country in projects like water treatment plant, High Rise Buildings, Bridges, Hydropower etc. ...', '<div class="company-wrap">CICO Kalika Tundi JV</div>'),
(152, 'recent', '<h4 class="no-margin results-job-title">Project Manager/Civil Engineer/Accountant</h4>', 'job-project-managercivil-engineeraccountant-1090.html', 'Tundi Construction Pvt. Ltd is one of the reputed construction companies working in different parts of the country in projects like water treatment plant, High Rise Buildings, Bridges, Hydropower etc. ...', '<div class="company-wrap">Tundi Construction</div>'),
(153, 'recent', '<h4 class="no-margin results-job-title">Project Manager/Civil Engineer/Accountant</h4>', 'job-project-managercivil-engineeraccountant-1090.html', 'Tundi Construction Pvt. Ltd is one of the reputed construction companies working in different parts of the country in projects like water treatment plant, High Rise Buildings, Bridges, Hydropower etc. ...', '<div class="company-wrap">Tundi Contruction Pvt. Ltd</div>'),
(154, 'recent', '<h4 class="no-margin results-job-title">Receptionist/Admin Officer</h4>', 'job-receptionistadmin-officer-1089.html', 'A reputed manpower company requires candidates for the following positions:Positions:1. ReceptionistQualifications:Minimum +2 pass with good English communication skills and computer knowledge.&nbsp;2. Admin and Account OfficerQualification:Minimum Bachelors with 4 years experience ...', '<div class="company-wrap">Muktinath Overseas</div>'),
(155, 'recent', '<h4 class="no-margin results-job-title">Energy Specialist</h4>', 'job-energy-specialist-1088.html', 'Everest Equity Pvt. Ltd., a private equity/venture capital company having portfolios at development stages, seeks an Energy Specialist (Engineer), who will be playing major role as part of the project ...', '<div class="company-wrap">Everest Equity Pvt. Ltd</div>'),
(156, 'recent', '<h4 class="no-margin results-job-title">Sr. Construction Manager</h4>', 'job-sr-construction-manager-1087.html', 'Miyamoto International, a global earthquake and structural engineering company, is in business to make the world a better, safer place. In order to accelerate holistic growth of the company, we ...', '<div class="company-wrap">Miyamoto International Nepal Pvt. ltd</div>'),
(157, 'recent', '<h4 class="no-margin results-job-title">Operation Manager/Sales Executive</h4>', 'job-operation-managersales-executive-1086.html', 'Nepali Juttaghar Pvt. Ltd. is the one of the growing footwear chain store. Youâ€™ll find styles for men, woman and kids from brands like Shikhar, BF Dearhill, Sky Shoes, Coseli, ...', '<img class="img-responsive logo-results" src="thumbnails/79994378.jpg" alt="MeroCareer"/>'),
(158, 'recent', '<h4 class="no-margin results-job-title">Operation Manager/Sales Executive</h4>', 'job-operation-managersales-executive-1086.html', 'Nepali Juttaghar Pvt. Ltd. is the one of the growing footwear chain store. Youâ€™ll find styles for men, woman and kids from brands like Shikhar, BF Dearhill, Sky Shoes, Coseli, ...', '<div class="company-wrap">MeroCareer</div>'),
(159, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1084.html', 'Sunaulo Parivar Nepal (SPN) is a well-established NGO delivering Family Planning and Sexual Reproductive Health services through-out Nepal via different service delivery channels: centres, mobile outreach, Marie Stopes Ladies (MS ...', '<div class="company-wrap">Sunaulo Parivar Nepal</div>'),
(160, 'recent', '<h4 class="no-margin results-job-title">Pharmacy Assistant</h4>', 'job-pharmacy-assistant-1081.html', 'Nepal Eye Program, Tilganga Institute of Ophthalmology (TIO), a centre of excellence in comprehensive eye care service delivery including training, research, intraocular lens manufacturing facility, community program, is currently looking ...', '<div class="company-wrap">Tilganga Institute of Ophthalmology</div>'),
(161, 'recent', '<h4 class="no-margin results-job-title">Various Positions</h4>', 'job-various-positions-1080.html', 'PHASE Nepal is a not for profit NGO established in 2006 by a group of development professionals dedicated to supporting poor communities in remote areas of Nepal. For the last ...', '<div class="company-wrap">PHASE Nepal</div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ramrojob`
--

CREATE TABLE `tbl_ramrojob` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ramrojob`
--

INSERT INTO `tbl_ramrojob` (`id`, `category`, `title`, `url`, `company`, `deadline`, `logo`) VALUES
(30, 'hot', ' Service Coordinator ', 'https://www.ramrojob.com/jobs/service-coordinator-24398', 'Service Centre - Customer Care', '', 'https://www.ramrojob.com/profilePics/1083418886_1512579754.png'),
(31, 'hot', ' Sales Representatives ', 'https://www.ramrojob.com/jobs/sales-representatives-24395', 'Nepal Digital Cable Pvt Ltd', '', 'https://www.ramrojob.com/profilePics/81032906_1511330377.jpg'),
(32, 'hot', ' Entry Level Web Developer ', 'https://www.ramrojob.com/jobs/entry-level-web-developer-24389', 'Intesol Nepal', '', 'https://www.ramrojob.com/profilePics/461589190_1512540787.jpg'),
(33, 'hot', ' Abroad education counselor ', 'https://www.ramrojob.com/jobs/abroad-education-counselor-24388', 'Einstein International', '', 'https://www.ramrojob.com/profilePics/1185179416_1512540055.jpg'),
(34, 'hot', ' Various Positions ', 'https://www.ramrojob.com/jobs/various-positions-24380', 'Nepal Cancer Hospital and Research Center', '', 'https://www.ramrojob.com/profilePics/588824642_1428293359.jpg'),
(35, 'hot', ' Recovery Officer ', 'https://www.ramrojob.com/jobs/recovery-officer-24379', 'UN Volunteers Nepal', '', 'https://www.ramrojob.com/profilePics/122520194_1436433645.jpg'),
(36, 'hot', ' Project Manager ', 'https://www.ramrojob.com/jobs/project-manager-24377', 'Population Services International Nepal', '', 'https://www.ramrojob.com/profilePics/460104712_1425452150.jpg'),
(37, 'hot', ' Programme Associate ', 'https://www.ramrojob.com/jobs/programme-associate-24376', 'ICIMOD', '', 'https://www.ramrojob.com/profilePics/2057423082_1426222536.jpg'),
(38, 'hot', ' Communication Officer ', 'https://www.ramrojob.com/jobs/communication-officer-24363', 'Swisscontact', '', 'https://www.ramrojob.com/profilePics/791424618_1443588562.jpg'),
(39, 'hot', ' Operation Manager ', 'https://www.ramrojob.com/jobs/operation-manager-24373', 'Summit Hotel', '', 'https://www.ramrojob.com/profilePics/1631836855_1432700101.jpg'),
(40, 'hot', ' Program Officer ', 'https://www.ramrojob.com/jobs/program-officer-24345', 'Ipas', '', 'https://www.ramrojob.com/profilePics/113095239_1466489914.png'),
(41, 'hot', ' Sales Executive - Sales ', 'https://www.ramrojob.com/jobs/sales-executive-sales-24337', 'APCA Nepal', '', 'https://www.ramrojob.com/profilePics/448163600_1426136842.jpg'),
(42, 'hot', ' Fundraising Manager ', 'https://www.ramrojob.com/jobs/fundraising-manager-24335', 'ActionAid Nepal', '', 'https://www.ramrojob.com/profilePics/1563525124_1434516177.png'),
(43, 'hot', ' Senior Executive - Tender ', 'https://www.ramrojob.com/jobs/senior-executive-tender-24330', 'GO FORD, GO Automobiles Pvt. Ltd.', '', 'https://www.ramrojob.com/profilePics/158359003_1483465490.jpg'),
(44, 'hot', ' Asst. Facility Manager ', 'https://www.ramrojob.com/jobs/asst-facility-manager-24396', 'Team Quest Pvt. Ltd', '', 'https://www.ramrojob.com/profilePics/1030076933_1504678573.png'),
(45, 'hot', ' Global Village Assistant ', 'https://www.ramrojob.com/jobs/global-village-assistant-24333', 'Habitat for Humanity', '', 'https://www.ramrojob.com/profilePics/1846443507_1504251866.png'),
(46, 'hot', ' Engineer ', 'https://www.ramrojob.com/jobs/engineer-24322', 'Yeti Airlines', '', 'https://www.ramrojob.com/profilePics/1058051420_1488775024.png'),
(47, 'hot', ' CA/ACCA ', 'https://www.ramrojob.com/jobs/ca-acca-24316', 'Hulas Iron Industries Pvt. Ltd.', '', 'https://www.ramrojob.com/profilePics/1018960011_1512369264.png'),
(48, 'hot', ' Sub Engineer ', 'https://www.ramrojob.com/jobs/sub-engineer-24393', 'Community Self Reliance Centre', '', 'https://www.ramrojob.com/profilePics/1014709384_1510119272.png'),
(49, 'hot', ' Dealer Customer Relation Center ', 'https://www.ramrojob.com/jobs/dealer-customer-relation-center-24325', 'GO AUTOCARE PRIVATE LIMITED', '', 'https://www.ramrojob.com/profilePics/1626513963_1458712160.jpg'),
(50, 'hot', ' Management Trainee ', 'https://www.ramrojob.com/jobs/management-trainee-24312', 'Classic Tech Pvt. Ltd', '', 'https://www.ramrojob.com/profilePics/1094814866_1492425632.png'),
(51, 'hot', ' Shipping Coordinator ', 'https://www.ramrojob.com/jobs/shipping-coordinator-24311', 'Purnaa Enterprises', '', 'https://www.ramrojob.com/profilePics/1150683356_1468294697.jpg'),
(52, 'hot', ' Receptionist/ Secretary ', 'https://www.ramrojob.com/jobs/receptionist-secretary-24309', 'CEDB Hydro Fund Ltd', '', 'https://www.ramrojob.com/profilePics/267778543_1487054105.jpg'),
(53, 'hot', ' Office Boy ', 'https://www.ramrojob.com/jobs/office-boy-24308', 'Tayal Brothers', '', 'https://www.ramrojob.com/profilePics/97486223_1510218720.jpg'),
(54, 'hot', ' Accountant ', 'https://www.ramrojob.com/jobs/accountant-24307', 'Axis Medibiz', '', 'https://www.ramrojob.com/profilePics/1088772510_1451215101.jpg'),
(55, 'hot', ' Research Associate ', 'https://www.ramrojob.com/jobs/research-associate-24306', 'ADRA Nepal', '', 'https://www.ramrojob.com/profilePics/1129124494_1427255905.jpg'),
(56, 'hot', ' Head of Project ', 'https://www.ramrojob.com/jobs/head-of-project-24304', 'Welthungerhilfe', '', 'https://www.ramrojob.com/profilePics/893049224_1446010029.png'),
(57, 'hot', ' Assistant, Sr. Assistant and Jr. Officer ', 'https://www.ramrojob.com/jobs/assistant-sr-assistant-and-jr-officer-24302', 'Kalika Microcredit Development Bank', '', 'https://www.ramrojob.com/profilePics/726658180_1488779077.jpg'),
(58, 'hot', ' Finance and Operations Officer ', 'https://www.ramrojob.com/jobs/finance-and-operations-officer-24300', 'Helen Keller International', '', 'https://www.ramrojob.com/profilePics/2120639066_1426999601.jpg'),
(97, 'recent', 'Job Title', 'Job Title', 'Company', 'Deadline', ' '),
(98, 'recent', ' Service Coordinator', 'https://www.ramrojob.com/jobs/service-coordinator-24398', 'Service Centre - Customer Care', '<span class="label label-warning">                                          <span>23 days left</span>                                    </span>                                  ', ' '),
(99, 'recent', ' Office Assistant', 'https://www.ramrojob.com/jobs/office-assistant-24397', 'Vriddhi Incorporation', '<span class="label label-warning">                                          <span>13 days left</span>                                    </span>                                  ', ' '),
(100, 'recent', ' Asst. Facility Manager', 'https://www.ramrojob.com/jobs/asst-facility-manager-24396', 'Team Quest Pvt. Ltd', '<span class="label label-warning">                                          <span>30 days left</span>                                    </span>                                  ', ' '),
(101, 'recent', ' Sales Representatives', 'https://www.ramrojob.com/jobs/sales-representatives-24395', 'Nepal Digital Cable Pvt Ltd', '<span class="label label-warning">                                          <span>8 days left</span>                                    </span>                                  ', ' '),
(102, 'recent', ' Account Runner', 'https://www.ramrojob.com/jobs/account-runner-24394', 'Nepal Digital Cable Pvt Ltd', '<span class="label label-warning">                                          <span>8 days left</span>                                    </span>                                  ', ' '),
(103, 'recent', ' Sub Engineer', 'https://www.ramrojob.com/jobs/sub-engineer-24393', 'Community Self Reliance Centre', '<span class="label label-warning">                                          <span>6 days left</span>                                    </span>                                  ', ' '),
(104, 'recent', ' Front Desk Officer', 'https://www.ramrojob.com/jobs/front-desk-officer-24392', 'Sharda IT Service Pvt. Ltd.', '<span class="label label-warning">                                          <span>22 days left</span>                                    </span>                                  ', ' '),
(105, 'recent', ' Pastry Chef', 'https://www.ramrojob.com/jobs/pastry-chef-24391', 'Nana Hotels', '<span class="label label-warning">                                          <span>18 days left</span>                                    </span>                                  ', ' '),
(106, 'recent', ' Manager', 'https://www.ramrojob.com/jobs/manager-24390', 'Nana Hotels', '<span class="label label-warning">                                          <span>18 days left</span>                                    </span>                                  ', ' '),
(107, 'recent', ' Entry Level Web Developer', 'https://www.ramrojob.com/jobs/entry-level-web-developer-24389', 'Intesol Nepal', '<span class="label label-warning">                                          <span>13 days left</span>                                    </span>                                  ', ' '),
(108, 'recent', ' Abroad education counselor', 'https://www.ramrojob.com/jobs/abroad-education-counselor-24388', 'Einstein International', '<span class="label label-warning">                                          <span>13 days left</span>                                    </span>                                  ', ' '),
(109, 'recent', ' Marketing Executives', 'https://www.ramrojob.com/jobs/marketing-executives-24386', 'NIC Asia Bank', '<span class="label label-warning">                                          <span>1 days left</span>                                    </span>                                  ', ' '),
(110, 'recent', ' Head - CASA (Officer/ Senior Officer)', 'https://www.ramrojob.com/jobs/head-casa-officer-senior-officer--24384', 'NIC Asia Bank', '<span class="label label-warning">                                          <span>6 days left</span>                                    </span>                                  ', ' '),
(111, 'recent', ' Deputy Head - CASA (Supervisor/ Junior Officer)', 'https://www.ramrojob.com/jobs/deputy-head-casa-supervisor-junior-officer--24382', 'NIC Asia Bank', '<span class="label label-warning">                                          <span>6 days left</span>                                    </span>                                  ', ' '),
(112, 'recent', ' Various Positions', 'https://www.ramrojob.com/jobs/various-positions-24380', 'Nepal Cancer Hospital and Research Center', '<span class="label label-warning">                                          <span>6 days left</span>                                    </span>                                  ', ' '),
(113, 'recent', ' Recovery Officer', 'https://www.ramrojob.com/jobs/recovery-officer-24379', 'UN Volunteers Nepal', '<span class="label label-warning">                                          <span>9 days left</span>                                    </span>                                  ', ' '),
(114, 'recent', ' Project Manager', 'https://www.ramrojob.com/jobs/project-manager-24377', 'Population Services International Nepal', '<span class="label label-warning">                                          <span>13 days left</span>                                    </span>                                  ', ' '),
(115, 'hot', ' MIS Manager ', 'https://www.ramrojob.com/jobs/mis-manager-28002', 'Swabalamban Laghubitta Bikas Bank Ltd.', '', 'https://www.ramrojob.com/profilePics/325533245_1425794829.jpg'),
(116, 'hot', ' Laundry Manager/Asst. Laundry Manager ', 'https://www.ramrojob.com/jobs/laundry-manager-asst-laundry-manager-28000', 'Radisson Hotel', '', 'https://www.ramrojob.com/profilePics/1208587406_1435726152.jpg'),
(117, 'hot', ' Various Positions ', 'https://www.ramrojob.com/jobs/various-positions-27993', 'Excel Development Bank Limited', '', 'https://www.ramrojob.com/profilePics/637973259_1502257987.png'),
(118, 'hot', ' Loader ', 'https://www.ramrojob.com/jobs/loader-27991', 'DAV Sushil Kedia Vishwa Bharati Higher Secondary School', '', 'https://www.ramrojob.com/profilePics/614220800_1523336287.jpg'),
(119, 'hot', ' IT Executive ', 'https://www.ramrojob.com/jobs/it-executive-27989', 'GO Auto Care Private Limited', '', 'https://www.ramrojob.com/profilePics/1433199699_1516099727.jpg'),
(120, 'hot', ' Junior Officer ', 'https://www.ramrojob.com/jobs/junior-officer-27987', 'Karma Dee', '', 'https://www.ramrojob.com/profilePics/173201786_1484141129.PNG'),
(121, 'hot', ' Project Supervisior ', 'https://www.ramrojob.com/jobs/project-supervisior-27984', 'Team Quest Pvt. Ltd', '', 'https://www.ramrojob.com/profilePics/1030076933_1504678573.png'),
(122, 'hot', ' Radio Mentor ', 'https://www.ramrojob.com/jobs/radio-mentor-27982', 'BBC Media Action', '', 'https://www.ramrojob.com/profilePics/724781653_1523252408.png'),
(123, 'hot', ' JAPANESE LANGUAGE TEACHER ', 'https://www.ramrojob.com/jobs/japanese-language-teacher-27978', 'fly world international education consultancy p.', '', 'https://www.ramrojob.com/profilePics/'),
(124, 'hot', ' Sales Officer ', 'https://www.ramrojob.com/jobs/sales-officer-27976', 'DV Group Companies', '', 'https://www.ramrojob.com/profilePics/1484956350_1459419477.jpg'),
(125, 'hot', ' Area Sales Manager - CG Foods ', 'https://www.ramrojob.com/jobs/area-sales-manager-cg-foods-27970', 'Chaudhary Group', '', 'https://www.ramrojob.com/profilePics/1424802869_1467710213.png'),
(126, 'hot', ' Assistant-Media Marketing ', 'https://www.ramrojob.com/jobs/assistant-media-marketing-27969', 'CEDB Hydro Fund Ltd', '', 'https://www.ramrojob.com/profilePics/267778543_1487054105.jpg'),
(127, 'hot', ' Program Manager ', 'https://www.ramrojob.com/jobs/program-manager-27968', 'Sunrise Orphange Nepal', '', 'https://www.ramrojob.com/profilePics/522138657_1524467382.jpg'),
(128, 'hot', ' Registrar & Share Transfer Services ', 'https://www.ramrojob.com/jobs/registrar-and-amp-share-transfer-services-27961', 'Radhi Bidyut Company Limited', '', 'https://www.ramrojob.com/profilePics/946345188_1516518275.png'),
(129, 'hot', ' Office boy com residential staff ', 'https://www.ramrojob.com/jobs/office-boy-com-residential-staff-27960', 'Jade Consult Pvt Ltd', '', 'https://www.ramrojob.com/profilePics/434401620_1483465933.jpg'),
(130, 'hot', ' Manager - Sales (Biratnagar, Birgunj, Narayanghat, Nepalgunj, Butwal) ', 'https://www.ramrojob.com/jobs/manager-sales-biratnagar-birgunj-narayanghat-nepalgunj-butwal--27959', 'Laxmi Intercontinental Pvt. Ltd.', '', 'https://www.ramrojob.com/profilePics/2013822883_1500020844.JPG'),
(131, 'hot', ' Assistant Chemist ', 'https://www.ramrojob.com/jobs/assistant-chemist-27965', 'Advance Group of Companies', '', 'https://www.ramrojob.com/profilePics/1377026069_1520832446.png'),
(132, 'hot', ' Assistant ', 'https://www.ramrojob.com/jobs/assistant-27979', 'GO FORD, GO Automobiles Pvt. Ltd.', '', 'https://www.ramrojob.com/profilePics/158359003_1483465490.jpg'),
(133, 'hot', ' Jr Officer/Sr. Assistant Level ', 'https://www.ramrojob.com/jobs/jr-officer-sr-assistant-level-27955', 'Siddhartha Bank Limited (SBL)', '', 'https://www.ramrojob.com/profilePics/400571256_1460957611.jpg'),
(134, 'hot', ' Program Manager ', 'https://www.ramrojob.com/jobs/program-manager-27948', 'Antenna Foundation Nepal', '', 'https://www.ramrojob.com/profilePics/271397810_1426652245.jpg'),
(135, 'hot', ' Marketing Officer ', 'https://www.ramrojob.com/jobs/marketing-officer-27947', 'Jagdamba Motors Pvt. Ltd', '', 'https://www.ramrojob.com/profilePics/1937908240_1504761629.png'),
(136, 'hot', ' ACCOUNTANT ', 'https://www.ramrojob.com/jobs/accountant-27942', 'KIRTI IMPEX PVT. LTD.', '', 'https://www.ramrojob.com/profilePics/1000246672_1427303173.jpg'),
(137, 'hot', ' Project Manager (Software) ', 'https://www.ramrojob.com/jobs/project-manager-software--27940', 'Innox technomania Pvt.Ltd.', '', 'https://www.ramrojob.com/profilePics/1355860335_1524462762.JPG'),
(138, 'hot', ' Compliance Officer ', 'https://www.ramrojob.com/jobs/compliance-officer-27939', 'IME Group', '', 'https://www.ramrojob.com/profilePics/611731882_1433311470.jpg'),
(139, 'hot', ' Intern - Network Engineer ', 'https://www.ramrojob.com/jobs/intern-network-engineer-27933', 'Cloud Tech Solutions', '', 'https://www.ramrojob.com/profilePics/9850811_1524731352.png'),
(140, 'hot', ' Human Resource Officer ', 'https://www.ramrojob.com/jobs/human-resource-officer-27929', 'Hulas Iron Industries Pvt. Ltd.', '', 'https://www.ramrojob.com/profilePics/1018960011_1512369264.png'),
(141, 'hot', ' VB.Net/mvc Programmer ', 'https://www.ramrojob.com/jobs/vb-net-mvc-programmer-27927', 'Smartway Technologies', '', 'https://www.ramrojob.com/profilePics/2046661351_1524720631.png'),
(142, 'hot', ' Web Developer ', 'https://www.ramrojob.com/jobs/web-developer-27926', 'Gerer InfoTech', '', 'https://www.ramrojob.com/profilePics/499672536_1440163688.png'),
(143, 'hot', ' Accountant ', 'https://www.ramrojob.com/jobs/accountant-27925', 'Jheegu Cable Net Pvt. Ltd.', '', 'https://www.ramrojob.com/profilePics/1132854977_1524715398.jpg'),
(144, 'hot', ' Cashier ', 'https://www.ramrojob.com/jobs/cashier-27921', 'Greenline Center Pvt. Ltd.', '', 'https://www.ramrojob.com/profilePics/1561301303_1523871942.png'),
(145, 'hot', ' Sr. Manager - Human Resources ', 'https://www.ramrojob.com/jobs/sr-manager-human-resources-27915', 'Tilganga Institute of Ophthalmology', '', 'https://www.ramrojob.com/profilePics/953003470_1426399502.jpg'),
(146, 'hot', ' Senior Engineering Manager ', 'https://www.ramrojob.com/jobs/senior-engineering-manager-27912', 'Versend', '', 'https://www.ramrojob.com/profilePics/1424425606_1491978804.jpg'),
(147, 'hot', ' Human Resource Officer ', 'https://www.ramrojob.com/jobs/human-resource-officer-27909', 'Nepal Hydro & Electric Ltd', '', 'https://www.ramrojob.com/profilePics/1887375110_1462519975.gif'),
(148, 'hot', ' Programme Coordinator ', 'https://www.ramrojob.com/jobs/programme-coordinator-27903', 'GEOCE Consultants (P) Ltd', '', 'https://www.ramrojob.com/profilePics/1158864158_1524640234.png'),
(149, 'hot', ' Steward ', 'https://www.ramrojob.com/jobs/steward-27891', 'Hyatt Regency', '', 'https://www.ramrojob.com/profilePics/1452966041_1426657128.jpg'),
(150, 'hot', ' A Level Faculty & Plus Two Faculty ', 'https://www.ramrojob.com/jobs/a-level-faculty-and-amp-plus-two-faculty-27867', 'Gems HS School', '', 'https://www.ramrojob.com/profilePics/625065834_1425281115.png'),
(151, 'hot', ' Primary Level English Teacher ', 'https://www.ramrojob.com/jobs/primary-level-english-teacher-27855', 'Eyelens English High School', '', 'https://www.ramrojob.com/profilePics/1566094986_1490407794.PNG'),
(152, 'hot', ' Waiter and waitress ', 'https://www.ramrojob.com/jobs/waiter-and-waitress-27852', 'Langham Hotel', '', 'https://www.ramrojob.com/profilePics/1751737820_1524578519.png'),
(153, 'hot', ' Receptionist ', 'https://www.ramrojob.com/jobs/receptionist-27848', 'Platform Education Foundation (P).Ltd', '', 'https://www.ramrojob.com/profilePics/647802441_1524676422.png'),
(154, 'hot', ' Brand Officer ', 'https://www.ramrojob.com/jobs/brand-officer-27846', 'Asian Thai Foods', '', 'https://www.ramrojob.com/profilePics/1888897990_1519113403.jpg'),
(155, 'hot', ' Quality Assurance Officer ', 'https://www.ramrojob.com/jobs/quality-assurance-officer-27843', 'SAKCHYAMTA Project (CTEVT)', '', 'https://www.ramrojob.com/profilePics/1553669038_1524551187.jpg'),
(156, 'hot', ' Officer / Assistant/ Jr Assistant ', 'https://www.ramrojob.com/jobs/officer-assistant-jr-assistant-27839', 'Gurans Laghubitta Bittiya Sanstha Ltd', '', 'https://www.ramrojob.com/profilePics/2050102019_1497596024.jpg'),
(157, 'hot', ' Share Analyst ', 'https://www.ramrojob.com/jobs/share-analyst-27838', 'Leading Investment Company', '', 'https://www.ramrojob.com/profilePics/1886100314_1524549379.png'),
(158, 'hot', ' Marketing Executive ', 'https://www.ramrojob.com/jobs/marketing-executive-27832', 'Universal Construction Pvt. Ltd.', '', 'https://www.ramrojob.com/profilePics/1756555315_1514183257.png'),
(159, 'hot', ' Sr. Officer-Marketing & PR ', 'https://www.ramrojob.com/jobs/sr-officer-marketing-and-amp-pr-27831', 'A Reputed Airline Company', '', 'https://www.ramrojob.com/profilePics/74440669_1524458066.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ckpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`jobs_id`),
  ADD KEY `portal_id` (`portal_id`),
  ADD KEY `portal_id_2` (`portal_id`);

--
-- Indexes for table `tbl_kumarijob`
--
ALTER TABLE `tbl_kumarijob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_merocareer`
--
ALTER TABLE `tbl_merocareer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ramrojob`
--
ALTER TABLE `tbl_ramrojob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `jobs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;
--
-- AUTO_INCREMENT for table `tbl_kumarijob`
--
ALTER TABLE `tbl_kumarijob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tbl_merocareer`
--
ALTER TABLE `tbl_merocareer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `tbl_ramrojob`
--
ALTER TABLE `tbl_ramrojob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
