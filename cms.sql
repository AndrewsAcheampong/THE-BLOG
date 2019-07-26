-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2019 at 11:59 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(3, 'Entertainment'),
(21, 'Sports'),
(22, 'Education'),
(23, 'Science/Technology'),
(25, 'Health/Fitness '),
(26, 'Lifestyle');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(12, 6, 'Richlove Afriyie', 'richlove44@yahoo.com', 'This is indeed a paradise in Ghana. We can go for our holidays there.', 'Approved', '2019-07-01'),
(14, 6, 'Christiana Kobiah', 'christianakobiah@gmail.com', 'Yeah! Andy this is just an amazing place for a holiday', 'Approved', '2019-07-01'),
(23, 8, 'Victor', 'vicky@gmail.com', 'Sports is good for the body.', 'Approved', '2019-07-24'),
(25, 16, 'Andrews', 'andrewsacheampong1@gmail.com', 'Hello Students', ' Unapproved ', '2019-07-25'),
(26, 16, 'Andrews', 'andrewsacheampong1@gmail.com', 'Helllw', ' Unapproved ', '2019-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(6, 26, 'Amazing Island Found in Ghana', 'Pascal', '2019-07-24', '1667577-1280x800-[DesktopNexus.com].jpg', ' \r\n                     \r\n    There is no place like this Island. The Island at Aboaso in the Ashanti Region provides a serene environment for relaxing during peoples leisure  times. We have as part of our services a nice restaurant with all the amazing foods one can think of talk of Local , Continental  and International dishes etc. We also provide a Conference Hall for executive meetings and conferences.\r\nThe In each room , there is an 4G speed internet connectivity and a nice furnished   library.', 'Island, Amazing,  Ghana', 4, 'published'),
(7, 21, 'University of Cape Coast Shines in African Universities Olympic Games', 'Victor', '2019-07-24', 'UCCSPORTS.jpg', ' University of Cape coast Shines in African Universities Olympic Games.\r\nThe University of Cape Coast (UCC) were declared overall winners of the 2019 maiden African Universities Games in Cairo, Egypt.\r\n\r\nThe Ghanaian University topped both male and female divisions with 10 gold, 7 silver, and 8 bronze medals to win the students sports festival.\r\n\r\nAstute University of Egypt placed second with 3 gold as the University of Ghana, Legon and University of Development Studies (UDS) at Tamale both grabbed 2 gold medals apiece.\r\n\r\nReports reaching Yours Truly say the UCC team were elated with their victory and promised to defend.\r\n\r\nOne of the students from the University who plays Table Tennis for Ghana, Derek Abrefa said the secret of UCC is hard training as all the sports students are stars in their own rights and make sure they obey instructions of their leaders and trainers.', 'UCC , Olympics , African', 4, 'Published'),
(8, 21, 'Sports As a Game', 'Victor', '2019-07-24', 'SPORTS.jpg', ' SPORTS\r\n\r\nSporting activities are an integral part of the universityï¿½s educational philosophy and policy which many students are encouraged to engage in. There are many sporting competitions held every semester such as the fresherï¿½s games which is a competition held for freshmen to unearth sporting talents for the various teams in the university. The inter-hall sporting competition is another major competition held to engage the various halls in a healthy rivalry for laurels and bragging rights.\r\n\r\nThese competitions which are usually held in an atmosphere of great fun and excitement, afford a great opportunity for social interactions within the university community. Sporting activities include athletics, football, basketball, volley, handball, tennis etc. Apart from these internal competitions, the university also participates in external sporting activities at the national and international levels.\r\n\r\nThe university also trains students to become physical education instructors under its Bachelor of Education in Health, Physical Education and Recreation programme. This programme has been very instrumental in producing quality human resource to drive the growth of sports and physical education in Ghana.', 'Sports , Excercise , soccer', 4, 'Published'),
(9, 23, 'Testing AMDâ€™s new Radeon Anti-Lag Feature', 'Elizabeth', '2019-07-24', 'radeon.jpg', ' The basic goal of Radeon Anti-Lag is to reduce input lag while gaming.\r\n\r\n\r\n\r\nInput lag is a combination of many factors. Some involve your peripheral hardware, like your monitor, mouse and keyboard. Some involve how fast your CPU and GPU are at processing frames. But Radeon Anti-Lag is focused on reducing lag at the driver stage. We think AMD has done a great job at explaining this in better detail, so weâ€™ll quote them here...\r\n\r\nâ€œGames produce frames of animation by pairing work done on the CPU with work done on the GPU. The CPU begins its work first, and it feeds work to the GPU as it works its way through a frame. In most use cases, the GPU workload is the primary performance constraint. We call this a GPU-limited scenario.\r\n\r\nIn such scenarios, games perform the CPU work at least one frame ahead of the GPU work, resulting in two frames of latency in total. The delay between the click of the mouse â€“ registered during the CPU work for the frame â€“ and the response on the screen â€“ produced by the GPU â€“ can expand to cover the time required for the GPU to process two full frames or more. At 60 FPS that delay is 33.3 milliseconds (two frames at 16.7ms each) or more\r\n\r\nIn such cases, Radeon Anti-Lag dynamically improves the pacing of the CPU work, allowing the GPU work to overlap a significant portion of the GPU work, so the CPU doesnâ€™t get too far ahead of the GPU. As a result, Radeon Anti-Lag can, in theory shrink input lag by almost a full frame â€“ nearly 16.7ms at 60 FPS â€“ restoring responsiveness to your game. The impact is quicker response times and a more direct connection between your actions and the results shown on screenâ€\r\n\r\n\r\n\r\nRadeon Anti-Lag can reduce input lag by up to a full frame, according to AMD, when mostly GPU limited. And weâ€™ll get into the implications of this when we put up some beautiful blue graphs. For now, thereâ€™s a few other things to discuss.\r\n\r\nOne is that Radeon Anti-Lag works on any â€œrecentâ€ AMD GPU or APU, so not just new Navi GPUs. However it only works in DirectX 11 titles, unless you have a Navi GPU in which case it also works for DirectX 9. No AMD GPU supports this technology in DirectX 12, Vulkan or OpenGL. A lot of popular competitive games have DX11 modes, but naturally as more games begin to use newer APIs, Radeon Anti-Lag will need to evolve to support them as well.\r\n\r\nThere are three ways to enable Anti-Lag: in the game profile settings, in the Radeon Overlay -- thatâ€™s the method we used the most -- and using a new Alt-L global shortcut. In all three cases itâ€™s just a simple toggle and gets to work right away, even in game.\r\n\r\n\r\n\r\nFor testing, we decided to measure the entire click-to-response input lag using the same methodology as we do for our monitor reviews. We use a photodetector on the screen, as well as a mouse input, both hooked up directly to an oscilloscope. Using this method we can record the precise time we ask a game to do something (like shooting a weapon) and the precise time this action is shown on screen. We expect Radeon Anti-Lag to have the lowest response time numbers over a 20 sample average for each test.\r\n\r\nWe chose fast hardware for testing. On the graphics front we used the new Radeon RX 5700 XT, paired with Intelâ€™s Core i9-9900K which remains the fastest CPU for gaming. We also used the fastest display we have on hand: Pixioâ€™s brand new PX5 Hayabusa -- review coming soon -- which is a 1080p 240Hz display with 0.6ms response times.', 'Technology , Trending , Science', 4, 'Published'),
(10, 23, ' Can Cooperation in Education and Science, Research and Innovation, New technologies be a DRIVER of POSITIVE change', 'Elizabeth', '2019-07-24', 'school.jpg', 'CAN COOPERATION IN EDUCATION AND SCIENCE, RESEARCH AND INNOVATION, NEW TECHNOLOGIES BE A DRIVER OF POSITIVE CHANGE?\r\n\r\n For the first time, a session on cooperation with Europe, organized with the assistance of the Association of European Businesses: â€œRussian-European Relations Today and Tomorrow: Challenges and Opportunities for Businessâ€ was held on the margins of SPIEF-2019.\r\n\r\nBusiness continues to function and achieve results despite the complicated political relations between Russia and the European Union. Economic cooperation between Russia and Europe has great potential given the geographic, historic, and cultural prerequisites. Rapid technological developments, the opening up of new markets, and business opportunities provide additional stimulus. European manufacturers maintain faith in the Russian market; they are expanding their investments in Russia, and searching for new collaborative solutions in partnership with Russian enterprises. Meanwhile Russian companies are actively strengthening their export capabilities.\r\n\r\n How can European and Russian companies best overcome the obstacles they face? What strategies have proven to be the most effective and how do companies view their future prospects? What practical areas of cooperation between Russia and the EU can compensate for the crises in relations between two partners united by a common continent, historic and cultural proximity, and tried-and-tested economic ties? Could cooperation in education and science, research and innovation, and new technologies act as a driver for positive change?\r\n\r\nHere is a short report about the session, its moderator, speakers and experts.\r\n\r\n\r\nModerator of the session was Johan Vanderplaetse, Chairman, Association of European Businesses; President, Russia and CIS, Schneider Electric.\r\n\r\nâ€œThe West and Russia talk a lot about each other, but itâ€™s time to listen to each other and talk to each other.â€ Today we are on the eve of  a revolution in terms of new technologies. We are watching a number of trends that we cannot ignore.\r\n\r\nSpeakers and experts\r\n\r\nFrans van Houten, Chief Executive Officer, Chairman of the Board of Management and the Executive Committee, Royal Philips\r\n\r\nYou need to avoid the graveyard of equipment, whereby equipment is bought but not maintained. I am very much in favour of technology as a service, as a way forward. Many people are involved in data science and academic medical research. We have largest number of medical patents. We are on the second place with AI patents. We invest a great share of proceedings into R&D. \r\nCorporation is responsible for creating new jobs. A global company must have a balanced team all over the world.\r\nWe need to nourish the culture, the culture of innovation, the culture of entrepreneurship, the culture where people would defend their point of view.\r\n\r\n', 'Trending , Science , Technology', 4, 'Published'),
(11, 23, 'Global Code Summer Camp ', 'Elizabeth', '2019-07-24', 'J0nNtm5f.jpg', ' \r\n                     \r\n                     \r\n                     \r\n                     Global Code delivers free but quality IT training to university students in west Africa and beyond. They find students that are already learning to code and boost their knowledge with a rich, focused programme of labs, group work and self-driven learning.\r\n\r\n\r\nGlobalPi: The Raspberry Pi as a teaching computer\r\nIn July 2017, we ran our first Global Code Summer Programme. One of our challenges was finding the right platform for our students. We wanted everyone in the class to have the same opportunity to learn and grow, so it was important that we bring our own hardware, rather than using whatever was available. We also wanted the flexibility to teach what we wanted â€“ meaning an IoT-rich curriculum with plenty of coding time using industry-standard tools.\r\n\r\nWe chose the Raspberry Pi 3B, and this is why.\r\n\r\nCoding\r\nThe Raspberry Pi allowed us to dive straight into Linux and Python â€“ the bedrock of our course and the balance of most of the teaching in week #1. Josh and I did all the setup ourselves on the Sunday before kick-off â€“ plugging in, testing, installing Raspbian, then unplugging 30 Pis was the work of a couple of hours.\r\n\r\n\r\nHardware\r\nThe Pi is underpowered for any kind of heavy lifting â€“ I run a tab-heavy Chrome which simply doesnâ€™t fly here â€“ but itâ€™s great for the kind of work we do in class â€“ editing and running Python, looking up documentation, and fooling around with the shell.\r\n\r\n\r\nAvailability\r\nThe Raspberry Pi foundation has a truly excellent distribution model, meaning their hardware is available globally, with a short lead time, for a reasonable price.\r\n\r\nPortable\r\nThe Pi is tiny â€“ itâ€™s lightweight, comes with a screw-on case so you can throw it in your bag, and itâ€™s low-powered so you can run it from a USB socket on the back of a PC (which is what we did). Itâ€™s great for teaching a student â€“ but more importantly, for our purposes â€“ itâ€™s great for teaching 18 students! The Pi made our get-in cheap and easy.\r\n\r\nDownsides\r\nWhilst our decision was easy, there are a couple of practical downsides to the Raspberry Pi:\r\n\r\n\r\nDigital GPIO â€“ unlike the Arduino Uno, say, the Raspberry Pi can only read digital in â€“ which means the components you use must be set up specially if you need to read more than just 0â€™s and 1â€™s. This was fine for us but if you want to read the room temperature or humidity using commonly available components youâ€™ll have to do some more work.\r\nThe Global Code Summer Programme 2017 finished on July 28. Weâ€™ll be back in Ghana in 2018 â€“ find out more on Twitter and Instagram, or get in touch and buy a Raspberry pi as a gift to a                                                     ', 'Global Code, Summer Camp', 4, 'published'),
(12, 3, 'Mzbels comments on MenzGold Saga', 'Victor', '2019-07-24', 'mzbel.jpg', ' \r\nMzbel, the controversial Ghanaian singer has made a comment which may not sit well with Menzgold customers who are desperate to take back their money from the CEO of Menzgold, Nana Appiah Mensah.\r\n\r\nAccording to the hitmaker of ï¿½16 yearsï¿½, the CEO of Menzgold, Nana Appiah Mensah alias NAM1 dashed her far more than GHï¿½50,000 as a gift during the happy days.\r\n\r\nMzbel explains that she is very happy Nana Appiah Mensah has returned to Ghana because he was a generous person and she still stands by her words that NAM1 is not a fraudster.\r\n\r\nSpeaking on how generous NAM1 was to her, the singer revealed that NAM1 would have given her a car or even house if she had asked for it but she is not the begging type.\r\n\r\nBut on his own free will, he gave her far more than GHï¿½50,000 as a gift with no strings attached. Mzbel also reveled in the interview with Zion Felix that Nana Appiah Mensah wanted to sign her to Zylofon Media.\r\n\r\nMzbel during the interview fired shots at her former best friend, Afia Schwarzenegger, describing her as an insecure woman whom she does not ever want to have anything to do with.', 'Myzbel , Menzgold', 4, 'Published'),
(13, 3, 'Kalybos Comments on Shatta   Beyonce collabo', 'Victor', '2019-07-24', 'kaly.jpg', ' Ghanaian actor, Richard Kwaku Asante, popularly known as Kalybos, has said he is disappointed following Beyoncs collabo with Shatta Wale.\r\n\r\nSpeaking on Hello FM, the comic actor posited that Shatta Wales input on the Already song with Beyonce was not up to par.\r\n\r\nThe hype is that Shatta Wale has done a song with Beyonc  and it has not happened before. Listen to what Beyonce did with Wizkid, Mr Eazi and Tiwa Savage and tell me which one is nice. I am afraid the Nigerians will mock Ghanaians about this. Shatta as Shatta we know didnt improve on this one for me. He could have done better, he stated.\r\n\r\nShatta Wale was belittled because of the many verses he sent before final approval, Kalybos asserted.\r\n\r\nHe stressed that Shatta Wale was tamed and we are promoting Shatta Wale more than the song.\r\n\r\nKalybos also expressed another disappointment because Shatta Wale did not say paaah paah paaah in the song.', 'Shatta Wale , Beyonce , Lion King', 4, 'Published'),
(14, 25, '5 Impressive Benefits of Coconut', 'Victor', '2019-07-24', 'coconut.jpg', ' Coconut is the fruit of the coconut palm (Cocos nucifera).\r\nItâ€™s used for its water, milk, oil, and tasty meat. Coconuts have been grown in tropical regions for more than 4,500 years but recently increased in popularity for their flavor, culinary uses, and potential health benefits (1).\r\nHere are 5 health and nutrition benefits of coconut\r\n\r\n1. Highly nutritious\r\nUnlike many other fruits that are high in carbs, coconuts provide mostly fat (5, 6, 7Trusted Source).They also contain protein, several important minerals, and small amounts of B vitamins. However, theyâ€™re not a significant source of most other vitamins (5, 6).\r\nThe minerals in coconut are involved in many functions in your body. Coconuts are especially high in manganese, which is essential for bone health and the metabolism of carbohydrates, proteins, and cholesterol (8Trusted Source).Theyâ€™re also rich in copper and iron, which help form red blood cells, as well as selenium, an important antioxidant that protects your cells.\r\n', 'Health', 4, 'Published'),
(15, 25, 'Heart Attack Signs Every Woman Should Know', 'Victor', '2019-07-24', 'Hearty.jpg', ' Heart Attack Signs Every Woman Should Know\r\n\r\nSubtle symptoms\r\n\r\nIts true  Women are different from men, not least of all when it comes to heart attack symptoms. Once considered almost strictly a mans problem, we now know that anyone can have a heart attack.\r\n\r\nRosie ODonnell had a heart attack in 2012, and like most women, she didnt experience the classic, chest-clutching Hollywood Heart Attack. Instead she had aching in her arms and chest along with nausea and clammy skin, and like many women didnt realize what was happening.\r\nHeart disease is now the number-one killer of women. Know the signs of heart attack, and call 911 if you or someone you know has one or more of the following symptoms.\r\n\r\nShortness of breath\r\n \r\nOne study found that 42% of women having a heart attack had shortness of breath.\r\nAlthough men also have this symptom, women are more likely to have trouble breathing without concurrent chest pain, says Sharonne Hayes, MD, founder of the Womens Heart Clinic and a cardiologist with the Mayo Clinic in Rochester, Minn.\r\nThe difficulty breathing is usually sudden and may come on for no apparent reason and in the absence of exertion.\r\nUpper body pain\r\n \r\nPain in the neck, back, jaw, teeth, arms (typically the left) and shoulder blades is a frequent symptom of heart attack in women.\r\nThis is called radiating pain and is due to the fact that the heart has many fewer nerve endings than, say, the fingertip, where pain will be localized, Dr. Hayes explains.\r\nWhen the heart is being injured, pain can be felt in other areas, she says. Generally, though, pain related to a heart attack is confined to the upper body. Its not likely to travel below the belly button.\r\nNausea, vomiting, and upset stomach\r\n \r\nAccording to the U.S. Department of Health & Human Services Office on Womens Health, women are twice as likely as men to experience nausea, vomiting, or indigestion like symptoms, such as heartburn, while having a heart attack.\r\nThis is often because the blood supply to the right coronary artery, which extends to the bottom of the heart, is blocked, Dr. Hayes explains. Unless theyre also having chest pain, many women write it off as something they ate when they should be calling 911, she adds.\r\nFatigue and sleep problems\r\n \r\nMany women about half experiencing a heart attack report fatigue that comes on suddenly and has no apparent cause.\r\nOne study of 515 women who had had a heart attack found that 70.7% reported fatigue more than one month before the event.\r\nThis study also found that about half had trouble sleeping. Any abrupt changes in sleep patterns could be a warning sign.\r\nCold sweats\r\n\r\nDizziness or light headedness\r\n \r\nFeeling dizzy or light headed is another almost unknown symptom of heart attack.\r\nOne study found that 39% of women having a heart attack reported feeling this way as the attack progressed. Another study found that women were actually more likely than men not only to feel dizzy, but even to faint.\r\nThis is likely the result of a blockage in one of the blood vessels leading to the heart.\r\n', 'Heart ', 4, 'published'),
(16, 22, 'National Science and Maths Quiz for basic schools unveiled', 'Elizabeth', '2019-07-24', 'quiz.jpg', ' The chase for the 2019 pristine trophy and bragging rights in the National Science and Maths Quiz has begun.\r\n\r\nThe preliminary round began at the University of Ghana on Monday, June 17.\r\n\r\nThere were wins for established schools like TI Ahmadiyya SHS from the Ashanti Region and Apam SHS from the Central Region.\r\n\r\nTwo girls schools â€“ Bolgatanga Girlsâ€™ SHS and Notre Dame Girlsâ€™ SHS â€“ made their intentions to break the jinx of all-male schools dominating the competition known by winning their respective contests.\r\n\r\nChemu SHS won the very first contest at the RS Amegashie Auditorium with 28 points more than Mawuko Girlsâ€™ SHS. St Maryâ€™s Seminary/SHS from Lolobi came third with 22 points.\r\n\r\nApam SHS won the concurrent contest at the New N Block with a total points tally of 62, the highest for the day. They beat Winneba SHS (21pts) and Daboase SHS (5pts).\r\n\r\nWith 24 points at the end of the contest, Bolga Girlsâ€™ SHS beat Greater Accraâ€™s Ashaiman SHS (20pts) and Upper Westâ€™s Lawra SHS (8pts).\r\n\r\nKpando SHS also won their contest over Saviour SHS and Fiaseman SHS. Kpansec amassed 28 points against Saviourâ€™s 22 and Fiasemanâ€™s 15.\r\n\r\nIn the finals contests for the day, Notre Dame Girlsâ€™ came from trailing in Round 1 to beating Uthman Bin Affan SHS and Adaklu SHS. The girls had 36 points, double of what Bin Affan amassed and 20 more than Adakluâ€™s.\r\n\r\nReal Amass stepped up at the New N Block to ensure that they make it to the next stage of the competition.\r\n\r\nWith 55 points, they saw off Berekum SHS (39pts) and Bawku SHS (17pts) to make it.\r\n\r\nAll the winners on Day 1 make it to the one-eighth stage, which begins on Monday, June 24.\r\n\r\nThe defending champions are St Petersâ€™ SHS from the Eastern Region. They beat West Africa SHS and Adisadel College in the final.', 'NMSQ', 4, 'Published'),
(17, 22, 'Government releases new Tertiary Education Policy Reforms', 'Kofi', '2019-07-24', 'download.jpg', ' Government in partnership with the National Council for Tertiary Education has released the new Tertiary Education Policy Reform to improve on the academic performance and governance of tertiary educational institutions.\r\n\r\nThe aim is to provide a clear guideline for the ultimate structure, planning, development, regulation, operations, overall governance and accountability of the tertiary education system.\r\n\r\nThe 80-page policy document covers; Governance and Management, Institutional Level Governance, Appointments and Designations of Principal Officers, Academic Freedom, Accountability of T1313, Equity and Access, Expansion and Establishment of Tertiary Education Institutions, Provision of Flexible and Distributed Learning and Diversification and Differentiation.\r\n\r\nThe reform contains a Draft Bill for Harmonisation of Acts of Public Universities, Centralised Applications and Placements Service, Ghana Tertiary Education Commission, National Research and Innovation Fund, Tertiary Education Management Information System and UDS splitting into UTAS and UBIDS.\r\n\r\nProfessor Mohammed Salifu, the Executive Secretary of the National Council on Tertiary Education, who presented the policy at a national stakeholder forum in Accra, said Academic fraud was a global phenomenon that found its way into all professions.\r\n\r\nHe said the risk of employing wrong people in right businesses undermined the credibility of the educational system, and academic fraud was criminal and needed to be handled by the appropriate agencies and not the educational institutions.\r\n\r\nThe development of new programmes, he said, must have relevant industry stakeholder input and support and asked tertiary educational institutions to seek relevant clearance, approval and accreditation from regulators before introducing new programmes.\r\n\r\nProf Salifu noted that the reforms also contained information on the plans to merge three public communication institutes into the University of Media, Arts and Communications, decision to split the University of Development Studies into three different Universities, and Outsourcing off Halls of Residence in Universities.\r\n\r\nOn accountability, he said, the regulatory body shall have adequate mechanisms in place to demand accountability from tertiary education institutions, which the institutions shall abide by.\r\n\r\nHe said the institutions shall also be subjected to quality assurance and accreditation at both institutional and programme levels.\r\n\r\nWith the appointment of Chancellors, Prof Salifu said existing provisions, post-PNDC empowered the Council to appoint the Chancellors with an exception of the University of Ghana Act 2010 (Act 806).\r\n\r\nThe proposed amendment, he disclosed, was to enable appointment of Chancellor by the President in consultation with the Councils.\r\n\r\nThis, he explained was to ensure clarity in accountability to the appointing authority and resolve the anomaly and contradiction of Council appointing a person who then took precedence over it.\r\n\r\nâ€œIt also reinforces influence and role of Government as the business owner,â€ he said.\r\n\r\nAccording to the reform, the term of office of the Council varied between two and three years for members other than the Vice Chancellor who was an Ex-officio member.\r\n\r\nThe proposal is to harmonise the provision to three years at least, where two years is impractical, given the lead time in appointment of Councils and barely allows enough time for members to have sufficient orientation and acquaint themselves with the university to enable them to become effective, he said.\r\n\r\nOn the Centralised Applications and Placement Services, Prof Salifu said it would promote merit-based admission, equity and convenient access to university and other Tertiary Education institutions, which shall operate on criteria for students to access the courses for which, they applied for.\r\n\r\nOther criteria included; taking affirmative action for disadvantaged groups and persons with disabilities; proposed quota (five per cent) for needy and underprivileged students, including; but not limited to persons with disabilities and other underrepresented groups who demonstrated capacity for advanced learning to ensure the representation of all classes of society in tertiary education.\r\n\r\nHe also said the admission quota for sponsored Ghanaian (fee-paying) students shall not exceed 10 per cent in public institutions and it shall be reviewed from time to time.\r\n\r\nSpeaking about Technical and Vocational Education Training (TVET), Prof Salifu said Technical Universities shall be the apex institutions in TVET for the training of highly-skilled human resource to drive economic growth.', 'Education', 4, 'Published'),
(18, 3, 'Mr Eventuarry joins team of Kejetia Vs Makola as new lawyer', 'Fiona', '2019-07-24', 'eventuary.PNG.png', ' Internet sensation, the man who gave Ghana a new term ï¿½eventuarryï¿½ has landed his first-ever acting job as a lawyer on the comedy series Kejetia vs Makola.\r\n\r\nThe taxi driver turn actor will join the team of lawyers to defend clients on some of the absurd, bizarre and sometimes heartbreaking yet funny stories.\r\n\r\nAn artwork on the official Leizer-Legacy Productions social media page revealed the new actor will be called Lawyer Micheal Jackson.\r\n\r\nKejetia Vs Makola is an unscripted satirical series where actors deliver on sheer skill and talent.\r\n\r\nViewers get to see their favourite characters including Lawyer Nti, Barrister Ignatius, Lawyer Marcelo, A.A Johnson and Barrister Eva Amedziku battle each other in court.\r\n\r\nThe show airs every Saturday and Sunday at 5:30 pm on Joy Prime on MultiTV.', 'Eventuarry', 4, 'Published'),
(19, 3, 'Music is all business to me - Shatta Wale', 'Fiona', '2019-07-24', 'shatta.png', ' Music is all business to me - Shatta Wale\r\n\r\nFor those who do not understand why Charles Nii Armah Mensah known in showbiz as Shatta Wale behaves the way he does in the music industry and still has high charges, he has the answer.\r\n\r\nAccording to him, unlike how others see music as just entertainment, he sees it as a business so he does not joke with money.\r\n\r\nSpeaking on Zylofon TV Shatta Wale said, For me music is business that is why I do what I do, if I am able to create the market for myself, I should be able to feed. \r\n\r\n\"In those days when social media was not around, we had the likes of Michael Jackson taking millions of dollars how much more today that we are all connected.\r\n\r\nIt is about the mentality that some musicians have. I remember when Facebook started, every artiste was opening a Fan Page account which they did not manage but me I opened just one, a personal one where I chat with my fans. \r\n\r\n\"We laugh, they had access to me and that is how we grew in numbers and so if today I am one of the big acts I should make money.\"\r\n\r\nShatta Wale added, let us look at Fela Kuti, you think if he did not work hard, he would be the icon that he is today? I remember a story of how Fela bought a car that the then president also had. It is to tell us that if we work hard we will make it big.\r\n\r\nHe also touched on how some musicians from Zimbabwe are trying hard to beef him but he has no intentions of responding unless there will be financial rewards.', 'Shatta, Lion King', 4, 'Published'),
(20, 26, 'Kwarleyz Residence, Nana Kwame Bediakos 5-star serviced apartments in honour of his mother', 'Victor', '2019-07-24', 'apartment.jpg', ' Kwarleyz Residence, Nana Kwame Bediakoâ€™s 5-star serviced apartments in honour of his mother[/caption] At a Gala held within the Airport Residential Area in Accra, industrialist and visionary Nana Kwame Bediako, proudly and formally launched the Kwarleyz Residence by Kwarleyz Group.https://youtu.be/CVCfY7BAXhU Designed without precedent and with integrity, precision and passion, Kwarleyz Residence serves as a 40-unit, fully furnished serviced estate, located in the prestigious community of the Airport Residential Area. Managed by Ascott Limited and hosting a glass facade overlooking Aviation Road, Kwarleyz Group celebrated at the launch its rich history in combining architectural creative ingenuity with breathtaking natural views, buttressed by a sophisticated living experience.  \r\nKwarleyz Residence is indeed one of the many landmark developments under the wing of the Kwarleyz Group and its subsidiary, Wonda World estates, the latter, a leading real estate enterprise in Ghana, with over 500 homes having been developed in contemporary fashion.  \r\nNana Kwame Bediako, CEO of Kwarleyz Group, Capital Nine Zero and Wonda World, stated: â€œNot only will Kwarleyz Residence be recognized as the first internationally-operated serviced apartments in Ghana, it will also be the ultimate address for individuals, families and businesses seeking a premium lifestyle, previously unavailable, despite Accraâ€™s rich history. For the first time ever, Ghana will play host to a 5-star residential experience.â€     With faculties including a swimming pool, state of the art gym facilities, a detailed spa with adjoining sauna and steam room, a stunning roof garden, coffee shop and cafÃ©, coupled with an exclusive, all-day-dining restaurant and sky bar overlooking Accra, Kwarleyz Residence intends to craft a profound, lasting imprint within the Ghanaian market and beyond.   â€œTodayâ€™s launch of Kwarleyz Residence is in honour of my mother, the woman who has stood behind me and supported my dreams well before they were realized. In Ghanaian culture, people tend to spend more money in celebrating life in past-tense. It is my honour to designate this world-class development to my mother as she is alongside me; a personal blessing for me to be able to honour my mother in this regard, so that she can see the legacy Iâ€™ve created for our family, a symbol of industrialization for others to follow,â€ Bediako continued at the Gala\r\n', 'Estate,Mum', 4, 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`) VALUES
(9, 'Andydorsty', '123', 'Andrews', 'Acheampong', 'andrewsacheampong1@gmail.com', '', 'Subscriber'),
(11, 'Christy', '12', 'Christiana', 'Kobiah', 'christianakobea@gmail.com', '', 'Subscriber');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
