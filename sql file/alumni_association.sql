-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 09:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET
SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET
time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_association`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni`
(
    `student_id`      int(11) NOT NULL,
    `department`      varchar(255) NOT NULL,
    `cgpa`            varchar(255) DEFAULT NULL,
    `photo`           text         DEFAULT NULL,
    `company_id_fk`   int(11) DEFAULT NULL,
    `company_name`    text         DEFAULT NULL,
    `company_website` text         DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumni`
--

-- INSERT INTO `alumni` (`student_id`, `department`, `cgpa`, `photo`, `company_id_fk`, `company_name`, `company_website`)
-- VALUES (11181112, ''cse'', ''3.84 '', NULL, NULL, ''Codeshaper'', ''https://www.codeshaper.net/''),
--        (11181171, ''cse'', ''3.67 '', NULL, NULL, ''Codeshaper'', ''https://www.codeshaper.net/''),
--        (11192014, ''cse'', ''3.90 '', ''b422018be56edcb753e3d78b7987bf252022_05_18_17_41_IMG_1025.JPG'', NULL,
--         ''United International University'', ''https://www.uiu.ac.bd/''),
--        (11201168, ''cse'', ''3.67 '',
--         ''35fd67f160a86793cd92551e2b98912f7f861f0c30ff32555cd1730e0db3e3947f057fd7fe69a4a58fce386e4e59ff1a.jpg'', NULL,
--         ''Destiny Tran'', ''www.Destinytran.com'');

-- --------------------------------------------------------

--
-- Table structure for table `company_review`
--

CREATE TABLE `company_review`
(
    `company_name`    text NOT NULL,
    `company_website` text NOT NULL,
    `review`          text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_review`
--

-- INSERT INTO `company_review` (`company_name`, `company_website`, `review`)
-- VALUES (''Codeshaper'', ''https://www.codeshaper.net/'', ''erqwereqwr''),
--        (''Destiny Tran'', ''www.Destinytran.com'', ''eafrdsafasdfas''),
--        (''Codeshaper'', ''https://www.codeshaper.net/'', ''tumi valo compnay na''),
--        (''Codeshaper'', ''https://www.codeshaper.net/'', ''na ami mittha kotha bolsi valo company ''),
--        (''Destiny Tran'', ''www.Destinytran.com'', ''jfdsajflkjasl''),
--        (''Destiny Tran'', ''www.Destinytran.com'', ''tmn nam kharap''),
--        (''United International University'', ''https://www.uiu.ac.bd/'', ''dflkfjasfj valo na'');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info`
(
    `c_id`          int(11) NOT NULL,
    `student_id_fk` int(11) NOT NULL,
    `name`          varchar(255) NOT NULL,
    `email`         text         NOT NULL,
    `phone`         int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events`
(
    `event_id`          int(11) NOT NULL,
    `event_name`        varchar(255) NOT NULL,
    `date`              date         NOT NULL,
    `alumni_id_fk`      int(11) DEFAULT NULL,
    `photos_3`          text DEFAULT NULL,
    `photos_1`          text DEFAULT NULL,
    `photos_2`          text DEFAULT NULL,
    `event_description` text         NOT NULL,
    `location`          text         NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

-- INSERT INTO `events` (`event_id`, `event_name`, `date`, `alumni_id_fk`, `photos_3`, `photos_1`, `photos_2`,
--                       `event_description`, `location`)
-- VALUES (11, ''Get Together'', ''2022 - 05 - 28 '', 11181171,
--         ''42758c5ded2ad36144fbd2f2d94f9b38e173bb7be6af7dbe50597efd58f4de6a34af996ddff444391edab94abcf3c7f3.png'',
--         ''22201cb6e4401a1db358fb96bf5317bduiu.png'',
--         ''6efe777a4d5513d207616bb3874ae68039e0ecafa5f625968ea34f3ab05e9145pexels-julian-paolo-dayag-1673973.jpg'',
--         '' < p > Lets have a fun time.</p>'', ''UIU Campus''),
--        (14, ''IFTAR PARTY'', ''2022 - 05 - 29 '', 11181112,
--         ''9b0d250163719090e7e070c7f9f16e94280682707_10228237449230670_4040943097853722992_n.jpg'',
--         ''fbc74afb07109ff62f25da1054266bffdownload.jpg'', ''3c5041767fb808b3006b1b2689029d30images.jpg'',
--         '' < p > You All are invited before Esha Salah.</p>'', ''UIU CAMPUS''),
--        (15, ''UIU CSE Graduates’ Get-together'', ''2022 - 05 - 28 '', 11181112,
--         ''fe7421aa718d4f60c78e30c7c14a084f280682707_10228237449230670_4040943097853722992_n.jpg'',
--         ''927302ac220996bf7378db66bc833da8images.jpg'',
--         ''8cdf441ad5f8b4f70517ed11b089c1b9280682707_10228237449230670_4040943097853722992_n.jpg'',
--         '' < p > You All Are Invited</p>'', ''97 Doinikbarta Complex, Alupotti, Ghoramara, Boalia, Rajshahi⁣⁣⁣'');

-- --------------------------------------------------------

--
-- Table structure for table `event_scheduling`
--

CREATE TABLE `event_scheduling`
(
    `scheduling_id`        int(11) NOT NULL,
    `start_time`           time         NOT NULL,
    `end_time`             time         NOT NULL,
    `schedule_title`       text         NOT NULL,
    `schedule_description` text         NOT NULL,
    `schedule_speaker`     varchar(255) NOT NULL,
    `event_id_fk`          int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs`
(
    `job_id`                   int(11) NOT NULL,
    `created_at`               date         NOT NULL,
    `designation`              varchar(255) NOT NULL,
    `salary`                   int(11) NOT NULL,
    `last_date_of_application` date         NOT NULL,
    `skill_requirement`        text         NOT NULL,
    `contact_info`             text         NOT NULL,
    `photo`                    text DEFAULT NULL,
    `alumni_id_fk`             int(11) DEFAULT NULL,
    `responsibilities`         text         NOT NULL,
    `job_nature`               text         NOT NULL,
    `apply_link`               text DEFAULT NULL,
    `company_name`             varchar(255) NOT NULL,
    `job_location`             text         NOT NULL,
    `experience`               varchar(100) NOT NULL,
    `no_of_vacancy`            int(11) NOT NULL,
    `joining_date`             date         NOT NULL,
    `email_for_online_cv`      text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

-- INSERT INTO `jobs` (`job_id`, `created_at`, `designation`, `salary`, `last_date_of_application`, `skill_requirement`,
--                     `contact_info`, `photo`, `alumni_id_fk`, `responsibilities`, `job_nature`, `apply_link`,
--                     `company_name`, `job_location`, `experience`, `no_of_vacancy`, `joining_date`,
--                     `email_for_online_cv`)
-- VALUES (8, ''2022 - 05 - 22 '', '' Web Developers'', 25000, ''2022 - 05 - 28 '', '' < p > Laravel&nbsp;
-- </p>
-- \r
-- \n<p>c++</p>
-- \r
-- \n<p>python</p>
-- \r
-- \n<p>java</p>
-- \r
-- \n<p>&nbsp;
-- </p>'', ''<p>01711111111</p>'', ''62eb1510bea4184de9cdc83c67c11058280682707_10228237449230670_4040943097853722992_n.jpg'', 11181112, ''<p>Junior Developer</p>'', ''Full time- Office work (not a home-based remote job or part-time job)
-- ⁣⁣'', ''https://makehub.com.bd/appl'', ''Make Hub'', ''Rampura, Dhaka'', ''
-- 1'', 2, ''
-- 2022-05-31
-- '', ''hr@makehub.com.bd''),
-- (10, ''
-- 2022-05-23
-- '', ''UI/UX Designer Needed'', 30000, ''
-- 2022-05-24
-- '', ''<p>&nbsp;Python</p>
-- \r
-- \n<p>C++</p>
-- \r
-- \n<p>&nbsp;Java</p>
-- \r
-- \n<p>view js</p>
-- \r
-- \n<p>htms</p>
-- \r
-- \n<p>php</p>
-- \r
-- \n<p>javascript</p>'', ''<p>01722222222</p>'', ''8c25dc7cb039ceecefc68721f0999ae4281742774_5073958586057611_4362332436136459911_n.jpg'', 11181112, ''<p>web developer</p>'', ''Full time- Office work (not a home-based remote job or part-time job)
-- ⁣⁣'', ''project.ihadis@gmail.com'', ''Creative IT'', ''Rampura, Dhaka'', ''
-- 2'', 2, ''
-- 2022-06-01
-- '', ''project1.ihadis@gmail.com'');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews`
(
    `review_id`           int(11) NOT NULL,
    `comment`             text NOT NULL,
    `question_attachment` text NOT NULL,
    `company_id _fk`      int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `success_story`
--

CREATE TABLE `success_story`
(
    `id`          int(11) NOT NULL,
    `title`       varchar(255) NOT NULL,
    `content`     text         NOT NULL,
    `cover_photo` varchar(255) NOT NULL,
    `user_id_fk`  int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `success_story`
--

-- INSERT INTO `success_story` (`id`, `title`, `content`, `cover_photo`, `user_id_fk`)
-- VALUES (5, ''Meet the Alumni - Hussain KMR Behestee - Hussain KMR Behestee'', '' < div class=\"desc\">\r\n<p dir=\"ltr\">Currently, Hussain KMR Behestee is holding the position of Mobile Device Specialist in a Japanese Company named K.K. Innovative Solutions. He has several years of experience in the Software Development Arena. He worked at Banglafire Solution Ltd. as Lead Software Engineer, The Jaxara IT Ltd. (Dhaka office of Most Investment LLC.), bGlobal Sourcing LLC, Dhaka Office. He has been involved with project management and development of several U.S. and Japan-based Projects. Already, He has developed and managed several websites and mobile applications which are being used by a large number of communities from different countries, such as USA, Canada, Australia, U.K., Japan and Bangladesh.&nbsp;</p>\r\n<p dir=\"ltr\">Behestee involved in developing Mobile Applications for Android and iOS. Besides this, he is also well experienced with third party multi-platform deployment environments like Genexus, Corona SDK, Sencha Touch and Ionic with Cordova. He has developed several plugins for Cordova. In a word, he is an all-rounder with a key set of skills in the field of mobile/web application development.&nbsp;</p>\r\n<p dir=\"ltr\">He completed his BSc in CSE with a major in Software Engineering from United International University, Bangladesh. His teachers and fellows loved Behestee a lot because of his proactiveness and passion. He was very interested in involving himself in several co-curricular activities such as he worked as a volunteer at ICCIT Council. Behestee obtained the Advanced Certificate For Management Professionals (ACMP) degree from the Institute of Business Administration (IBA), University of Dhaka in 2018.&nbsp;</p>\r\n<p dir=\"ltr\">Behestee is a very productive person. He is a forward-thinking natural-born leader. Lots of work and little talk- thats his way! He is a real team player who possesses very strong logic and analytical ability with a well organized and very goal-oriented person.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\">He is closely related to the UIU CSE Alumni association and plays a vital role to co-operate and help each other to reach their goals.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"post-by\">\r\n<p class=\"text-gray\">Posted On : 03-Jan-2020</p>\r\n</div>'', ''10ed0f2a880da245d08be35e19c5bad69sMDvBitKvHqrM5mrn3tU88ymW6kWybRjVEIyniH.jpeg'', 12),
-- (7, ''Meet The Alumni - Md. Tazbir Ur Rahman Bhuiyan - Md. Tazbir Ur Rahman Bhuiyan'', ''<div class=\"desc\">\r\n<p dir=\"ltr\">Md. Tazbir Ur Rahman Bhuiyan is currently working as a Lead Engineer at Brain Station 23 Limited. He has been working here for almost 4 years as a Senior Software Engineer from April 2016, and is promoted to Lead Engineer.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">He started his career with Proggasoft in January 2011 as a Software Engineer. After that, he was promoted to Deputy team leader position gradually. After working for almost five years, he moved to Jijoty Inc. and joined as Senior Software Engineer in November 2015.&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">Tazbir is an excellent programmer with skill and dedication. He tries to follow international coding techniques &amp; tries to maintain standards. He has a strong cover over .net stack and capable of working in out of box stacks such as Linux, mobile platform and desktop application. He also explored techs such as kubernetes, docker and block chain.&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">He completed his Bachelor of Science(BS) in Computer Science and Engineering at United International University in 2010. Faculties and his senior fellows of UIU loved him for his honesty and outstanding thinking capability. He was a brilliant student, and he has an in-depth knowledge of multiple technology stacks from his student life. He also involved with voluntary activities such as he worked as a Technical Trainer on IBM HyperLedger Fabric in Brain Station 23 Limited.&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">Tazbir is&nbsp; productive, a multi-skilled person and he is an enthusiastic leader. He is a careful, self-motivated team player. With the understanding of design principles and software architecture, Tazbir can design and develop large scale projects, maintaining a professional relationship with fellow team members. He digs deep into a problem, and always seeks out the best solution available across multiple technology stacks. He has an excellent understanding of his work and is capable of handling technical difficulties.</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">He is a family centric guy. He loves to read quran and other book daily. He loves to run after Fazr and also loves to do cycling occasionally. He gives thanks to Allah for his success and grateful to UIU CSE faculty teachers.&nbsp; In his early days in university he got his motivation to pursue programming career from honorable faculty teachers, friends and many tech figures. His immense passion to solve problems and hunger to make an impact using programming leads where he is today.&nbsp;</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p dir=\"ltr\">He always pushes his juniors to explore new things and motivate them to build up their career. Tazbir can be a great asset for the upcoming technological world.</p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\">Tazbir is closely related to UIU CSE Alumni Association and involved in various activities of association to develop the community.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"post-by\">\r\n<p class=\"text-gray\">Posted On : 02-Feb-2020</p>\r\n</div>'', ''834c086d385bbeec5bcaa56c1b12b9a8KK8hkqVeVTcCGnEt2JgBYa1UCefCsWTIqKrkRfw7.jpeg'', 12),
-- (11, ''Achia Nila'', ''<p>Achia Nila is the founder, &lsquo;Women In Digital - Empowerment through Technology&rsquo;. As a skilled professional of digital production; she has set a remarkable footprint in the emerging technology market of Bangladesh. She has also been working as a Country Director on &lsquo;Woman Who Code&rsquo; since August 2018 and also working as an International IT Specialist at the International Telecommunication Union (ITU), as a Lead Product Manager at NIM, as a Project Manager at World-Soft Ltd., and she worked at many leading companies.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>She also has served in some of the internationally recognized organizations such as Dell, Microsoft, HP, Epson, Colgate, HillsPet, J&amp;J, HTC, HSBC, Vodafone, Sony, Unilever, Betfair and Nokia etc. As a local product, she successfully launched Maya apa Mobile application. She specializes in IT product development (like web, mobile app and game) and Product management, project management, team lead etc. She also has over 10+ years of creative background, enabling added Fashion Designing and Strategic value and 5+ Years Experience in Digital Marketing. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Achia graduated from United International University in Computer Science and engineering. Later on, she received her M.Sc in Computer Science and Engineering from Daffodil International University. She was involved with several voluntary activities, for example, she served as a mentor at the Jaago Foundation and Spreeha Foundation. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>She has vast experience in Web-based technology, which makes her lead an Interactive Web-based solution provider. As a leading technological professional, Achia is one of the inspiring role models for women in the engineering education sector of Bangladesh. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>At 2019 she has selected for International Visitor Leadership Program (IVLP) in the U.S. &nbsp;The International Visitor Leadership Program is designed to provide foreign leaders and scholars with the opportunity to meet American colleagues and become better acquainted with the United States, its culture, and its people. &nbsp;One of the program\''s major goals is to promote the development of friendly relations between the United States and other countries of the world. This is the top prestigious program from United State Department.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>She intimately involves herself with UIU CSE Alumni Association and plays a vital role as an advisor and mentor to take the association to the next level.&nbsp;</p>'', ''d5c5fe0031eaf6471f367682fe76da075.jpeg'', 15),
-- (12, ''Meet the Alumni - Saifur Rahman Sazib'', ''<p>Saifur Rahman Sazib is a Lead Engineer at Objectstream Inc, USA. He is actively working with his client Oklahoma Workers Compensation Commission (OKWCC) to automate their 20 years old systems. Federal Aviation Administration USA (FAA) is one of his other clients.</p>\r\n<p>&nbsp;</p>\r\n<p>Saif has a vast experience of application development for US Federal, State, Healthcare, Retailer industries. In 2005, he started his career as a Software Engineer with Millennium Information Solution Ltd (MISLBD) followed by United IT GlobalNet Ltd (UIGN, a Japan-Bangladesh joint venture startup). Then in 2007, he moved to a Sr. Software Engineer role at Integrated Software LLC. As a guest industry expert, he also taught several programming courses at United International University (UIU). After six years of successful contribution, in 2011, he moved to the USA to pursue his MSc degree at Maharishi University of Management. Later he obtained his MSc in Computer Science and Engineering (CSE) in 2013. While he was in his ongoing MSc course abroad, he also continued his career with FedEx World Tech Center, LifeWay Christian Resources, Podiatry Insurance Company of America (PICA). He also worked for HCA Healthcare for 2 years, and finally in 2018, he got an offer to join as a Lead Engineer/Architect at Objectstream Inc.</p>\r\n<p>&nbsp;</p>\r\n<p>Saif was one of the pioneers in the Department of Computer Science and Engineering (CSE) at UIU. He has completed his BSc in CSE in 2005. He used to involve himself in various co-curricular activities. While his was in campus, Saif got enormous support and guidance from his beloved teachers and fellows.</p>\r\n<p>&nbsp;</p>\r\n<p>Professionally, Saif is a cloud developer. Dealing with challenges is a part of his everyday life. He believes in solving problems in &ldquo;pen and paper&rdquo; first, then to determine optimum solutions as per his team&rsquo;s capacity. Saif possesses a real professional attitude, and a \"think outside the box\" ability that surely makes him differentiate from the crowd.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>He intimately involves himself with UIU CSE Alumni Association and co-operates, and plays a vital role as an advisor and mentor to take the association to the next level.</p>'', ''72537057398573be0cd0bb2997c02a397.jpeg'', 15),
-- (13, ''Meet the Alumni - Md Faisal Kabir'', ''<p>Md Faisal Kabir is currently a PhD student in the department of Computer Science at North Dakota State University (NDSU), USA where he is involved in several clubs/organizations as well as diverse leadership activities. He is also working at NDSU as a Teaching/Research Assistant. His broad research interest is in machine learning and data mining, with a goal to develop and apply these techniques in various fields like healthcare, bio-medical, geo-spatial, and so forth. He is also interested in applying his knowledge, and design technologies for unprivileged health communities.&nbsp;</p>\r\n<p>Faisal was the first batch student in the department of Computer Science and Engineering (CSE) at United International University (UIU). He obtained his BSc in CSE from United International University, Bangladesh. As a student Faisal got lots of support and guidance from his beloved teachers and fellows. He was very interested in involving himself in several co-curricular activities.</p>\r\n<p>Faisal got inspiration of pursuing higher studies during his undergrad from his beloved teachers, especially from Chowdhury Mofizur Rahman sir, Late Dr. Habibur Rahman sir, Suman Ahmed sir and other faculties.</p>\r\n<p>He was motivated to do research during his undergraduate studies by his beloved professor Chowdhury Mofizur Rahman sir, who was also his supervisor and learned fundamental of research at an early stage. Faisal believes it really helped him to enhance his further research/studies. &nbsp;&nbsp;</p>\r\n<p>After completion of undergrad degree Faisal joined UIU as a lecturer where he contributed a lot in the CSE department as well as different clubs/organizations. He was the moderator of UIU computer club and UIU social services club. Currently, Faisal holds position of Assistant Professor (On-study leave) at CSE, UIU. &nbsp;</p>\r\n<p>Faisal would like to emphasize existing students of UIU to focus on their studies. Involving in different co-curricular and social activities are essential to enhance communication skills, he added. Obviously, students need to follow the suggestions from teachers. However, Faisal thinks that students need to pursue what interest them the most. Accordingly, they need to prepare themselves to reach their goals.</p>\r\n<p>Faisal is looking forward to utilize the Alumni network to co-operate and help each other to reach their goals or resolve any other issues related to UIU CSE students.</p>'', ''171123008fb7cfb52ee15682af7dfcd58.jpeg'', 15);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `account_type` int(1) NOT NULL COMMENT "0= admin, 1= alumni comitee, 2= general user",
  `dob` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `alumni_id_fk` int(11) DEFAULT NULL,
  `company_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

-- INSERT INTO `users` (`id`, `email`, `password`, `name`, `account_type`, `dob`, `gender`, `address`, `phone`, `alumni_id_fk`, `company_name`) VALUES
-- (15, ''mrhedoy181112@bscse.uiu.ac.bd'', ''$2y$10$f1XMTRWoqlJI.f7T6kBK1uk8U.ZWiHZTWVZuzAURAJFLe1QaouPsG'', ''Md.Nourose Naim Rhedoy'', 0, ''1999-12-13'', ''male'', ''Saidnagar'', ''01707079061'', 11181112, NULL),
-- (25, ''msarker192014@bscse.uiu.ac.bd'', ''$2y$10$aev/xt0JBJnMawQPoVrOHe36K.Gmt.twteCVpl16jt3RLMYU4po4y'', ''Md. Siam Hossain Sarker'', 2, ''2022-05-23'', ''male'', ''4A, Behind Abinta Kabir foundation school, 100 feet road, Madani Avenue, East Vatara, Dhaka-1212'', ''01826557650'', 11192014, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `company_id_fk` (`company_id_fk`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `consnt_fk1` (`student_id_fk`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD UNIQUE KEY `event_id` (`event_id`),
  ADD KEY `student_id` (`alumni_id_fk`);

--
-- Indexes for table `event_scheduling`
--
ALTER TABLE `event_scheduling`
  ADD PRIMARY KEY (`scheduling_id`),
  ADD KEY `consnt_fk` (`event_id_fk`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `student_id` (`alumni_id_fk`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `company_id` (`company_id _fk`);

--
-- Indexes for table `success_story`
--
ALTER TABLE `success_story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `alumni_id_fk` (`alumni_id_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `event_scheduling`
--
ALTER TABLE `event_scheduling`
  MODIFY `scheduling_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `success_story`
--
ALTER TABLE `success_story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD CONSTRAINT `consnt_fk1` FOREIGN KEY (`student_id_fk`) REFERENCES `alumni` (`student_id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`alumni_id_fk`) REFERENCES `alumni` (`student_id`);

--
-- Constraints for table `event_scheduling`
--
ALTER TABLE `event_scheduling`
  ADD CONSTRAINT `consnt_fk` FOREIGN KEY (`event_id_fk`) REFERENCES `events` (`event_id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`alumni_id_fk`) REFERENCES `alumni` (`student_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`alumni_id_fk`) REFERENCES `alumni` (`student_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`alumni_id_fk`) REFERENCES `alumni` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
