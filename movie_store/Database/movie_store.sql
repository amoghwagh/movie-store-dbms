-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2017 at 09:58 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_store`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `display` ()  NO SQL
select * from movies$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(3) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'ENGLISH'),
(2, 'HINDI'),
(3, 'KANNADA'),
(4, 'TELUGU'),
(5, 'TAMIL');

--
-- Triggers `category`
--
DELIMITER $$
CREATE TRIGGER `mytr` BEFORE INSERT ON `category` FOR EACH ROW SET NEW.cat_name=UPPER(NEW.cat_name)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(3) NOT NULL,
  `con_name` varchar(20) NOT NULL,
  `con_email` varchar(30) NOT NULL,
  `con_query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `con_name`, `con_email`, `con_query`) VALUES
(1, 'Akhilesh', 'akhi123@gmail.com', 'How can I access the movie?');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `mov_id` int(4) NOT NULL,
  `mov_name` varchar(30) NOT NULL,
  `mov_cat` int(4) NOT NULL,
  `mov_desc` longtext NOT NULL,
  `mov_dir` varchar(20) NOT NULL,
  `mov_year` int(4) NOT NULL,
  `mov_duration` time NOT NULL,
  `mov_buy_price` int(3) NOT NULL,
  `mov_rent_price` int(3) NOT NULL,
  `mov_img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`mov_id`, `mov_name`, `mov_cat`, `mov_desc`, `mov_dir`, `mov_year`, `mov_duration`, `mov_buy_price`, `mov_rent_price`, `mov_img`) VALUES
(1, ' The Equalizer', 1, 'McCall, having given up a life of violence, wishes to lead a quiet and undisturbed life. However, brutal events force him to once again take up the fight for justice.', 'Antoine Fuqua', 2014, '02:12:00', 200, 30, 'upload_image/equalizer.jpg'),
(2, ' Mad Max: Fury Road', 1, 'In an apocalyptic world, a tyrant rules over a stark desert, controlling every drop of water. Two rebels, one escaping grief and the other reaching out to her childhood, are the last hope for a few.', 'George Miller', 2015, '02:00:00', 200, 30, 'upload_image/madmax.jpg'),
(3, 'Logan', 1, 'In the near future, a weary Logan (Hugh Jackman) cares for an ailing Professor X (Patrick Stewart) at a remote outpost on the Mexican border. His plan to hide from the outside world gets upended when he meets a young mutant (Dafne Keen) who is very much like him. Logan must now protect the girl and battle the dark forces that want to capture her.', 'James Mangold', 2017, '02:21:00', 200, 30, 'upload_image/logan.jpg'),
(4, 'Dunkirk', 1, 'In May 1940, Germany advanced into France, trapping Allied troops on the beaches of Dunkirk. Under air and ground cover from British and French forces, troops were slowly and methodically evacuated from the beach using every serviceable naval and civilian vessel that could be found. At the end of this heroic mission, 330,000 French, British, Belgian and Dutch soldiers were safely evacuated.', 'Christopher Nolan', 2017, '02:00:00', 200, 30, 'upload_image/dunkirk.jpg'),
(5, 'Star Wars: The Force Awakens', 2, 'A new order threatens to destroy the New Republic. Finn, Rey and Poe, backed by the Resistance and the Republic, must find a way to stop them and find Luke, the last surviving Jedi.', 'J.J. Abrams', 2015, '02:15:00', 200, 30, 'upload_image/starwars.jpg'),
(6, 'Deadpool', 2, 'Wade Wilson (Ryan Reynolds) is a former Special Forces operative who now works as a mercenary. His world comes crashing down when evil scientist Ajax (Ed Skrein) tortures, disfigures and transforms him into Deadpool. The rogue experiment leaves Deadpool with accelerated healing powers and a twisted sense of humor. With help from mutant allies Colossus and Negasonic Teenage Warhead (Brianna Hildebrand), Deadpool uses his new skills to hunt down the man who nearly destroyed his life.', 'Tim Miller', 2016, '01:48:00', 200, 30, 'upload_image/deadpool.jpg\r\n'),
(7, 'Guardians of the Galaxy', 2, 'Peter escapes from the planet Morag with a valuable orb that Ronan the Accuser wants. He eventually forms a group with unwilling heroes to stop Ronan.', 'James Gunn', 2014, '02:02:00', 200, 30, 'upload_image/guardians.jpg'),
(8, 'Avatar', 2, 'Jake, a paraplegic marine, replaces his brother on the Na\'vi inhabited Pandora for a corporate mission. He is accepted by the natives as one of their own but he must decide where his loyalties lie.', 'James Cameron', 2009, '02:42:00', 200, 30, 'upload_image/avatar.jpg'),
(9, 'Hacksaw Ridge', 3, 'The true story of Pfc. Desmond T. Doss (Andrew Garfield), who won the Congressional Medal of Honor despite refusing to bear arms during WWII on religious grounds. Doss was drafted and ostracized by fellow soldiers for his pacifist stance but went on to earn respect and adoration for his bravery, selflessness and compassion after he risked his life -- without firing a shot -- to save 75 men in the Battle of Okinawa.', 'Mel Gibson', 2016, '02:19:00', 200, 30, 'upload_image/hacksaw.jpg'),
(10, 'The Wolf of Wall Street', 3, 'Introduced to life in the fast lane through stockbroking, Jordan Belfort takes a hit after a Wall Street crash. He teams up with Donnie Azoff, cheating his way to the top as his relationships slide.', 'Martin Scorsese', 2013, '03:00:00', 200, 30, 'upload_image/wolf.jpg'),
(11, 'Spotlight', 3, 'Martin \'Marty\' Baron joins the Boston Globe as an editor and pushes four journalists, Michael, Walter, Sacha and Matt, to pursue a story about the child molestation charges against the local church.', 'Tom McCarthy', 2015, '02:09:00', 200, 30, 'upload_image/spotlight.jpg'),
(12, 'Lion', 3, 'Saroo gets separated from his family at the age of five and ends up being adopted by an Australian couple. However, he returns to India 25 years later to search for his birth parents.', 'Garth Davis', 2016, '02:00:00', 200, 30, 'upload_image/lion.jpg'),
(13, 'The Hangover', 4, 'For a bachelor party, three best men and the groom take a road trip to Las Vegas. They wake up the next morning to realise that not only have they lost the groom but also have no recollection.', 'Todd Phillips', 2009, '01:48:00', 200, 30, 'upload_image/hangover.jpg'),
(14, 'The Intern', 4, 'Seventy-year-old Ben Whittaker realises that retirement isn\'t an enjoyable experience. As a result, he decides to work as an intern at an online fashion store managed by an extremely sceptical boss.', 'Nancy Meyers', 2015, '02:01:00', 200, 30, 'upload_image/intern.jpg'),
(15, '21 Jump Street', 4, 'Schmidt and Jenko are high school friends who go onto become police officers. The two rookie cops go undercover as students in order to bust a drug ring and find the source of a synthetic drug.', 'Phil Lord', 2012, '01:50:00', 200, 30, 'upload_image/21.jpg'),
(16, 'Superbad', 4, 'Two high school boys want to enjoy their lives to the fullest before they go to different colleges. Unfortunately, their debauchery lands them in trouble.', 'Greg Mottola', 2007, '01:59:00', 200, 30, 'upload_image/superbad.jpg'),
(17, 'Saving Private Ryan', 5, 'During the Normandy invasion of World War II, Captain John Miller is assigned the task of searching for Private James Ryan, whose three brothers have already been killed in the war.', 'Steven Spielberg', 1998, '02:49:00', 200, 30, 'upload_image/saving.jpg'),
(18, 'The Pianist', 5, 'During the WWII, acclaimed Polish musician Wladyslaw faces various struggles as he loses contact with his family. As the situation worsens, he hides in the ruins of Warsaw in order to survive.', 'Roman Polanski', 2002, '02:30:00', 200, 30, 'upload_image/pianist.jpg'),
(19, 'Gladiator', 5, 'Commodus takes over power and demotes Maximus, one of the preferred generals of his father, Emperor Marcus Aurelius. As a result, Maximus is relegated to fighting till death as a gladiator.', 'Ridley Scott', 2000, '02:51:00', 200, 30, 'upload_image/gladiator.jpg'),
(20, 'Cinderella Man', 5, 'James J Braddock, a former boxer, lives an ordinary life in the US. But when the Great Depression takes a toll on his family, he decides to get back into the ring once again.', 'Ron Howard', 2005, '02:25:00', 200, 30, 'upload_image/cinderella.jpg'),
(21, 'It', 6, 'Seven young outcasts in Derry, Maine, are about to face their worst nightmare -- an ancient, shape-shifting evil that emerges from the sewer every 27 years to prey on the town\'s children. Banding together over the course of one horrifying summer, the friends must overcome their own personal fears to battle the murderous, bloodthirsty clown known as Pennywise.', 'Andrés Muschietti', 2017, '02:15:00', 200, 30, 'upload_image/it.jpg'),
(22, 'The Conjuring 2', 6, 'A single mother seeks the help of paranormal investigators Ed and Lorraine Warren when she and her children witness strange events in their house.', 'James Wan', 2016, '02:14:00', 200, 30, 'upload_image/cong2.jpg'),
(23, 'Insidious: Chapter 3', 6, 'Quinn, a young girl, reaches out to a powerful psychic to help her contact her recently-deceased mother. But the plan backfires when an evil spirit makes Quinn a host and hurts her physically.', 'Leigh Whannell', 2015, '01:37:00', 200, 30, 'upload_image/insidious.jpg'),
(24, 'Lights Out', 6, 'Rebecca and her boyfriend try and investigate the connection between her mother and her imaginary friend, Diana, after her stepfather is murdered by a supernatural entity.', 'David Sandberg', 2016, '01:21:00', 200, 30, 'upload_image/lights.jpg'),
(25, 'La La Land', 7, 'Sebastian (Ryan Gosling) and Mia (Emma Stone) are drawn together by their common desire to do what they love. But as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart.', 'Damien Chazelle', 2016, '02:08:00', 200, 30, 'upload_image/lala.jpg'),
(26, 'Whiplash', 7, 'Andrew enrols in a music conservatory to become a drummer. But he is mentored by Terence Fletcher, whose unconventional training methods push him beyond the boundaries of reason and sensibility.\r\n', 'Damien Chazelle', 2014, '01:47:00', 200, 30, 'upload_image/whiplash.jpg'),
(27, 'Pitch Perfect', 7, 'Beca, a college fresher, reluctantly joins an all-girls a cappella and later infuses freshness into their repertoire. The group then takes on a male a cappella group in a competition.', 'Jason Moore', 2012, '01:52:00', 200, 30, 'upload_image/pitch.jpg'),
(28, 'Pitch Perfect 2', 7, 'The Barden Bellas, an a cappella group, strive to resurrect their image after a disastrous performance. However, they enter a difficult international competition to try and regain their reputation.', 'Elizabeth Banks', 2015, '01:55:00', 200, 30, 'upload_image/pitch2.jpg'),
(29, 'Black Swan', 8, 'Nina, a ballerina, gets the chance to play the White Swan, Princess Odette. But she finds herself slipping into madness when Thomas, the artistic director, decides that Lily might fit the role better.', 'Darren Aronofsky', 2010, '01:48:00', 200, 30, 'upload_image/black.jpg'),
(30, 'The Sixth Sense', 8, 'Malcolm Crowe, child psychologist, starts treating a young boy who acts as a medium of communication between Crowe and a slew of unhappy spirits.', 'M. Night Shyamalan', 1999, '01:50:00', 200, 30, 'upload_image/sixth.jpg'),
(31, 'L.A. Confidential', 8, 'Three detectives from LAPD investigate multiple homicides. While unearthing the evidence and the suspects, the trail leads to corruption in their own department.', 'Curtis Hanson', 1997, '02:18:00', 200, 30, 'upload_image/la.jpg'),
(32, 'Gone Girl', 8, 'Nick Dunne discovers that the entire media focus has shifted on him when his wife Amy Dunne disappears on the day of their fifth wedding anniversary.', 'David Fincher', 2014, '02:29:00', 200, 30, 'upload_image/gone.jpg'),
(33, 'Titanic', 9, 'Seventeen-year-old Rose hails from an aristocratic family and is set to be married. When she boards the Titanic, she meets Jack Dawson, an artist, and falls in love with him.', 'James Cameron', 1997, '03:15:00', 200, 30, 'upload_image/titanic.jpg'),
(34, 'Beauty and the Beast', 9, 'Belle (Emma Watson), a bright, beautiful and independent young woman, is taken prisoner by a beast (Dan Stevens) in its castle. Despite her fears, she befriends the castle\'s enchanted staff and learns to look beyond the beast\'s hideous exterior, allowing her to recognize the kind heart and soul of the true prince that hides on the inside.', 'Bill Condon', 2017, '02:10:00', 200, 30, 'upload_image/beauty.jpg'),
(35, 'The Big Sick', 9, 'Kumail is a Pakistani comic who meets an American graduate student named Emily at one of his stand-up shows. As their relationship blossoms, he soon becomes worried about what his traditional Muslim parents will think of her. When Emily suddenly comes down with an illness that leaves her in a coma, Kumail finds himself developing a bond with her deeply concerned mother and father.', 'Michael Showalter', 2017, '02:00:00', 200, 30, 'upload_image/big.jpg'),
(36, 'Fifty Shades Darker', 9, 'When a wounded Christian Grey (Jamie Dornan) tries to entice a cautious Anastasia Steele (Dakota Johnson) back into his life, she demands a new arrangement before she will give him another chance. As the two begin to build trust and find stability, shadowy figures from Christian\'s past start to circle them, determined to destroy their hopes for a future together.', 'James Foley', 2017, '01:58:00', 200, 30, 'upload_image/fifty.jpg'),
(37, 'Interstellar', 10, 'In the future, Earth is slowly becoming uninhabitable. Ex-NASA pilot Cooper, along with a team of researchers, is sent on a planet exploration mission to report which planet can sustain life.', 'Christopher Nolan', 2014, '02:49:00', 200, 30, 'upload_image/interstellar.jpg'),
(38, 'Thor: Ragnarok', 10, 'Imprisoned on the other side of the universe, the mighty Thor finds himself in a deadly gladiatorial contest that pits him against the Hulk, his former ally and fellow Avenger. Thor\'s quest for survival leads him in a race against time to prevent the all-powerful Hela from destroying his home world and the Asgardian civilization.', 'Taika Waititi', 2017, '02:10:00', 200, 30, 'upload_image/thor.jpg'),
(39, 'The Matrix', 10, 'Thomas, a computer programmer, is led to fight an underground war against powerful computers who now rule the world with a system called \'The Matrix\'.', 'Lana Wachowski', 1999, '02:30:00', 200, 30, 'upload_image/matrix.jpg'),
(40, 'The Martian', 10, 'Mark Watney is stranded on the planet of Mars after his crew leaves him behind, presuming him to be dead due to a storm. With minimum supply, Mark struggles to keep himself alive.', 'Ridley Scott', 2015, '02:31:00', 200, 30, 'upload_image/martian.jpg'),
(41, 'Inception', 11, 'Cobb steals information from his targets by entering their dreams. He is wanted for his alleged role in his wife\'s murder and his only chance at redemption is to perform the impossible, an inception.', 'Christopher Nolan', 2010, '02:28:00', 200, 30, 'upload_image/inception.jpg'),
(42, 'Seven', 11, 'A serial killer begins murdering people according to the seven deadly sins. Two detectives, one new to the city and the other about to retire, are tasked with apprehending the criminal.', 'David Fincher', 1995, '02:08:00', 200, 30, 'upload_image/seven.jpg'),
(43, 'The Shawshank Redemption', 11, 'Andy Dufresne, a successful banker, is arrested for the murders of his wife and her lover, and is sentenced to life imprisonment at the Shawshank prison. He becomes the most unconventional prisoner.', 'Frank Darabont', 1994, '02:22:00', 200, 30, 'upload_image/shaw.jpg'),
(44, 'The Prestige', 11, 'Two friends and fellow magicians become bitter enemies after a sudden tragedy. As they devote themselves to this rivalry, they make sacrifices that bring them fame but with terrible consequences.\r\n', 'Christopher Nolan', 2006, '02:10:00', 200, 30, 'upload_image/prestige.jpg'),
(45, 'Shutter Island', 11, 'Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, but Teddy uncovers a shocking truth about the place.', 'Martin Scorsese', 2010, '02:18:00', 200, 30, 'upload_image/shutter.jpg'),
(46, 'The Insider', 11, 'Jeffery Wigand, the former head of Brown & Williamson Tobacco Company, goes live on television to expose the bitter truth of how tobacco companies function.', 'Michael Mann', 1999, '02:37:00', 200, 30, 'upload_image/insider.jpg'),
(47, 'Taken', 11, 'An ex-Secret Service agent\'s teenage daughter is abducted by human traffickers while on a trip to Paris. With almost no information on her whereabouts, he travels to Paris to find and save her.', 'Pierre Morel', 2008, '01:33:00', 200, 30, 'upload_image/taken.jpg'),
(48, 'Changeling', 11, 'After Christine\'s only son goes missing, she reaches out to the LAPD to help her find him. They find a boy fitting her son\'s description five months later, but she insists that he is not her son.', 'Clint Eastwood', 2008, '02:21:00', 200, 30, 'upload_image/changeling.jpg'),
(49, 'The Machinist', 11, 'Trevor, an insomniac lathe-operator who has not slept for months, experiences unusual occurrences at work and home. A strange man follows him everywhere, but no one else seems to notice him.', 'Brad Anderson', 0, '01:42:00', 200, 30, 'upload_image/machinist.jpg'),
(50, 'Inside Man', 11, '', 'Spike Lee', 2006, '02:09:00', 200, 30, 'upload_image/inside.jpg'),
(51, 'Limitless', 11, 'Eddie, dismayed by his bleak future, is urged to try a drug that gives him a razor-sharp mind. As he rises in the corporate world, he also attracts the attention of a few negative elements.', 'Neil Burger', 2011, '01:45:00', 200, 30, 'upload_image/limitless.jpg'),
(52, 'Mr. Brooks', 11, 'Earl Brooks is a businessman who was recently named Portland\'s Man of the Year but he is also a serial killer known as The Fingerprint Killer with an alter-ego called Marshall, addicted to killing.', 'Bruce A. Evans', 2007, '02:00:00', 200, 30, 'upload_image/mr.jpg'),
(53, 'Singham', 12, 'An honest and valiant cop, Bajirao Singham, fights against injustice. Destiny sets him up against a corrupt politician, Jaikant Shikre, who challenges his ethics and beliefs.', 'Rohit Shetty', 2011, '02:23:00', 200, 30, 'upload_image/singham.jpg'),
(54, 'Ek Tha Tiger', 12, 'RAW agent Tiger is sent to Dublin to observe an Indian scientist who is suspected of sharing nuclear secrets with the ISI. He meets and falls for his caretaker Zoya, a girl with a dark secret.', 'Kabir Khan', 2012, '02:13:00', 200, 30, 'upload_image/ek.jpg'),
(55, 'Force 2', 12, 'ACP Yashwardhan, a dutiful and honest police officer, teams up with RAW agent Kamaljit Kaur to expose an inside informer who leaks sensitive information to a foreign agency targeting the RAW agents.', 'Abhinay Deo', 2016, '02:07:00', 200, 30, 'upload_image/force.jpg'),
(56, 'Bang Bang', 12, 'Harleen leads a dull life with her grandmother and works as a bank receptionist. However, her life is swept up in a swirl of car chases and mayhem when she falls in love with Rajveer, a thief.\r\n', 'Siddharth Anand', 2014, '02:36:00', 200, 30, 'upload_image/bang.jpg'),
(57, 'M.S. Dhoni: The Untold Story', 13, 'Ranchi boy M S Dhoni aspires to play cricket for India. Though he initially tries to please his father by taking up a job with the Indian Railways, he ultimately decides to chase his dreams.', 'Neeraj Pandey', 2016, '02:58:00', 200, 30, 'upload_image/ms.jpg'),
(58, 'Bhaag Milkha Bhaag', 13, 'Milkha Singh or the \'Flying Sikh\' overcomes many agonising obstacles to become a world champion, Olympian and one of India\'s most iconic athletes.', 'Rakeysh Mehta', 2013, '03:09:00', 200, 30, 'upload_image/bhaag.jpg'),
(59, 'Dangal', 13, 'After his failure at winning a gold medal for the country, Mahavir Phogat vows to realise his dreams by training his daughters for the Commonwealth Games despite societal pressures.', 'Nitesh Tiwari', 2016, '02:49:00', 200, 30, 'upload_image/dangal.jpg'),
(60, 'Mary Kom', 13, 'When Mary Kom encounters a renowned coach in a boxing gym, she shares her boxing aspirations with him and convinces him to teach her. Despite her father\'s disapproval, she follows her passion.', 'Omung Kumar', 2014, '02:02:00', 200, 30, 'upload_image/mary.jpg'),
(61, '3 Idiots', 14, 'In college, Farhan and Raju form a great bond with Rancho due to his refreshing outlook. Years later, a bet gives them a chance to look for their long-lost friend whose existence seems rather elusive.', 'Rajkumar Hirani', 2009, '02:51:00', 200, 30, 'upload_image/3.jpg'),
(62, 'Golmaal Again', 14, 'Golmaal Again is yet another fun filled ride about two gangs who are unable to stand each other since their childhood and how they repulse each other even after they grow up. It is yet another hilarious adventure with its fair share of thrills that are sure to surprise the audience and fill their hearts with laughter and joy. It is a film that will surely make everyone laugh, cry and realize the importance of how beautiful life is.', 'Rohit Shetty', 2017, '03:00:00', 200, 30, 'upload_image/golmaal.jpg'),
(63, 'OMG – Oh My God!', 14, 'Kanji is an atheist whose life takes an ugly turn when an earthquake destroys his antique shop. He, however, does not give up hope and decides to sue God.', 'Umesh Shukla', 2012, '02:10:00', 200, 30, 'upload_image/omg.jpg'),
(64, 'Housefull 3', 14, 'Batook, a rich businessman, does not want his three daughters to get married because of a superstitious belief. Now, their boyfriends must prove to Batook that they are perfect for his daughters.', 'Farhad Samji', 2016, '02:20:00', 200, 30, 'upload_image/housefull.jpg'),
(65, 'Sultan', 15, 'After the death of his son, Sultan Ali Khan, a middle-aged wrestler, gives up the sport. Years later, he sets out to revive his career as he needs the prize money and wants to regain his lost respect.', 'Ali Abbas Zafar', 2016, '02:50:00', 200, 30, 'upload_image/sultan.jpg'),
(66, 'Barfi!', 15, 'Shruti loves Barfi, a hearing and speech-impaired man, but marries someone else. Years later, she learns that he is in love with an autistic girl, and feels the need to rethink her own marriage.', 'Anurag Basu', 2012, '02:31:00', 200, 30, 'upload_image/barfi.jpg'),
(67, 'Yeh Jawaani Hai Deewani', 15, 'Kabir and Naina bond during a trekking trip. Before Naina can express herself, Kabir leaves India to pursue his career. They meet again years later, but he still cherishes his dreams more than bonds.', 'Ayan Mukerji', 2013, '02:56:00', 200, 30, 'upload_image/yeh.jpg'),
(68, 'Taare Zameen Par', 15, 'Ishaan cannot seem to get anything right at his boarding school. Soon, a new unconventional art teacher, Ram Shankar Nikumbh, helps the dyslexic student discover his hidden potential.\r\n', 'Aamir Khan', 2007, '02:45:00', 200, 30, 'upload_image/taare.jpg'),
(69, 'Horror Story', 16, 'A few friends come together to bid farewell to another friend who is going abroad for higher studies. They decide to spend the night in a haunted hotel, which turns out to be the biggest mistake ever.\r\n', 'Ayush Raina', 2013, '01:31:00', 200, 30, 'upload_image/horror.jpg'),
(70, '1920: Evil Returns', 16, 'Jaidev, a famous poet, meets a girl who has no recollection of her past. He brings her home and tries to help her. However, the woman is soon possessed by a spirit and things spiral out of control.', 'Bhushan Patel', 2012, '02:04:00', 200, 30, 'upload_image/1920.jpg'),
(71, 'Phoonk 2', 16, 'Rajiv relocates to a new house along with his family near a beach. As soon as they step into the house, Rajiv\'s kids encounter bizarre things. A horror is awaken which starts troubling the kids.\r\n', 'Milind Gadadkar', 2010, '02:17:00', 200, 30, 'upload_image/phoonk.jpg'),
(72, '13B: Fear Has a New Address', 16, 'Manohar, along with his family, moves into a new apartment on the 13th floor. However, their peace is disturbed by a spirit that uses the television set as a medium to communicate with them.\r\n', 'Vikram Kumar', 2009, '02:26:00', 200, 30, 'upload_image/13b.jpg'),
(73, 'Aashiqui 2', 17, 'Rahul, a singing sensation, falls in love with Aarohi, a girl who sings in the bar. He helps her accomplish her dream of becoming a famous singer, but his own shortcomings jeopardise their future.\r\n', 'Mohit Suri', 2013, '02:20:00', 200, 30, 'upload_image/aashiqui.jpg'),
(74, 'Jab Tak Hai Jaan', 17, 'Samar is smitten by Meera in London. He returns to India after she leaves him and dedicates himself to the army. Akira falls in love with him but later decides to unite him with Meera.\r\n', 'Yash Chopra', 2012, '03:18:00', 200, 30, 'upload_image/jab.jpg'),
(75, '2 States', 17, 'Coming from two very different cultural backgrounds, Krish and Ananya decide that they won\'t get married until they convince their parents. As feared, differences between the families pose a hurdle.\r\n', 'Abhishek Verman', 2014, '02:29:00', 200, 30, 'upload_image/2states.jpg'),
(76, 'Shuddh Desi Romance', 17, 'Commitment-phobic Raghu absconds from his wedding and meets Gayatri, who soon becomes his live-in girlfriend. Things get complicated when Raghu bumps into Tara, the girl he left at the altar.\r\n', 'Maneesh Sharma', 2013, '02:21:00', 200, 30, 'upload_image/shuddh.jpg'),
(77, 'Rathavara', 18, 'Rathaavara is an 2015 Indian Kannada action thriller film written and directed by Chandrashekar Bandiyappa and produced by Dharmashree Manjunath. It stars Sri Murali and Rachita Ram in the lead roles. Wikipedia\r\n', 'Chandrashekar', 2015, '02:11:00', 100, 30, 'upload_image/rathavara.jpg'),
(78, 'Ugramm', 18, 'When Agastya visits Mughor, he sees girls being raped in front of the villagers. He fights against the goons to stop this but becomes a target of local dons. Things take a turn when he meets Nitya.\r\n', 'Prashanth Neel', 2014, '02:11:00', 100, 30, 'upload_image/ugramm.jpeg'),
(79, 'Hebbuli', 18, 'When Ram\'s brother passes away, he takes it upon himself to investigate the conspiracies behind his death. He fights the corrupt system in order to protect his family.\r\n', 'S. Krishna', 2017, '02:21:00', 100, 30, 'upload_image/hebbuli.jpg'),
(80, 'Rana Vikrama', 18, 'Vikram, a tough and dedicated cop, is tasked with investigating the case of a missing journalist. He reaches the place where the incident took place and he gets embroiled with powerful gangsters.\r\n', 'Pawan Wadeyar', 2015, '02:27:00', 100, 30, 'upload_image/rana.jpg'),
(81, 'Adyaksha', 19, 'Aishwarya\'s father Gowda fixes her marriage. She refuses as she wants to study further. Chandru, her classmate, too convinces Gowda against it. As their friendship grows, they fall in love.\r\n', 'Nanda Kishore', 2014, '02:27:00', 100, 30, 'upload_image/adhya.jpg'),
(82, 'Shravani Subramanya', 19, 'When Shravani finds out that her boyfriend Sudeep is a thug, she attempts to escape from his clutches. Subramanya, a budding singer, tries to save her from Sudeep.\r\n', 'Manju Swaraj', 2013, '02:38:00', 100, 30, 'upload_image/shravani.jpg'),
(83, 'First Rank Raju', 19, 'Although Raju gets nicknamed First Rank because he\'s always first in classwork, his obsession with books and grades may leave him ignorant of normal life.\r\n', 'Naresh Kumar HN', 2015, '02:28:00', 100, 30, 'upload_image/1st.jpg'),
(84, 'Pancharangi', 19, 'Bharath travels to India with his family to look for a bride for his elder brother. The to-be-bride\'s cousin sister falls in love with him. Does he feel the same about her?\r\n', 'Yogaraj Bhat', 2010, '02:07:00', 100, 30, 'upload_image/pancharangi.jpg'),
(85, 'Raajakumara', 20, 'Movie starring Puneeth Rajkumar, Priya Anand, Prakash Raj and is directed by Santhosh Ananddram.\r\n', 'Santhosh Ananddram', 2017, '02:28:00', 100, 30, 'upload_image/raaja.jpg'),
(86, 'Googly', 20, 'Sharath and Swathi meet in Bangalore and fall in love but misunderstandings cause them to drift apart. Two years later, destiny brings them face-to-face at a friend\'s wedding.\r\n', 'Pawan Wadeyar', 2013, '02:24:00', 100, 30, 'upload_image/googly.jpg'),
(87, 'Thithi', 20, 'Thithi (English: Funeral) is a 2016 Indian Kannada drama film co-written and directed by Raam Reddy.Consisting of a cast of non-professional actors from villages in the Mandya district of Karnataka, the film is a light-hearted story about three generations of men reacting to the death of their 101-year old patriarch.', 'Raam Reddy', 2015, '02:03:00', 100, 30, 'upload_image/thithi.jpg'),
(88, 'Kendasampige', 20, '', 'Duniya Soori', 2015, '01:39:00', 100, 30, 'upload_image/kenda.jpg'),
(89, 'Mungaru Male', 21, 'Preetham loves Nandhini, whose marriage is already fixed. He feels bad and leaves the place. Nandini challenges him to win her heart. Preetham accepts the challenge. Will Preetham win over?\r\n', 'Yogaraj Bhat', 2006, '02:23:00', 100, 30, 'upload_image/mungaru.jpg'),
(90, 'Simple Aaginnond Love Story', 21, 'After missing her train, Kushi ends up driving home to Karwar from Bengaluru with Kush. Their adventures and conversations lead them towards love, but a sudden turn of events changes their lives.\r\n', 'Simple Suni', 2016, '02:21:00', 100, 30, 'upload_image/simple.jpg'),
(91, 'Savaari', 21, 'Abhiram, a wealthy man, falls in love with Janaki, a doctor who serves the poor and the needy. He dislikes her profession and tries to change her, but things get complicated.\r\n', 'Jacob Verghese', 2009, '02:20:00', 100, 30, 'upload_image/savaari.jpg'),
(92, 'Milana', 21, 'Anjali\'s father forces her to marry Aakash. Unable to forget her past, she demands a divorce from Aakash. But in a twist of fate, their lives change.\r\n', 'Prakash', 2007, '02:35:00', 100, 30, 'upload_image/milana.jpg'),
(93, 'Baahubali 2: The Conclusion', 22, 'Bhallaladeva conspires against his brother to become the king of Mahishmati. He soon gets him killed by Katappa and imprisons his wife. Years later, the son returns to avenge his father\'s death.\r\n', 'S. S. Rajamouli', 2017, '03:17:00', 100, 30, 'upload_image/baahu.jpg'),
(94, 'Janatha Garage', 22, 'Anand, an environmental activist, comes to Hyderabad to attend a seminar. An unexpected encounter with Sathyam, who runs an organization for the oppressed, changes his purpose in life.\r\n', 'Koratala Siva', 2016, '02:42:00', 100, 30, 'upload_image/janatha.jpg'),
(95, 'S/O Satyamurthy', 22, 'Anand, who is the son of a rich businessman, struggles to save his father\'s wealth after his demise. However, he faces many challenges when he becomes the sole breadwinner of his family.\r\n', 'Trivikram Srinivas', 2015, '02:52:00', 100, 30, 'upload_image/satya.jpg'),
(96, 'Baahubali: The Beginning', 22, 'In the kingdom of Mahishmati, while pursuing his love, Shivudu learns about the conflict-ridden past of his family and his legacy. He must now prepare himself to face his new-found archenemy.\r\n', 'S. S. Rajamouli', 2015, '02:39:00', 100, 30, 'upload_image/begi.jpg'),
(97, 'Baadshah', 23, 'Rama Rao fails to get a job with the police force due to his father\'s connections with a gangster. But when his brother is killed due to the gangster, Rama Rao becomes Baadshah to oppose the gangster.\r\n', 'Srinu Vaitla', 2013, '02:44:00', 100, 30, 'upload_image/baad.jpg'),
(98, 'Jabardasth', 23, 'Jabardasth is a Telugu romantic comedy film written and directed by Nandini Reddy under the banner of Sri Sai Ganesh Productions. It stars Siddharth and Samantha Ruth Prabhu in the lead roles and Nithya Menen in an important role', 'B. V. Nandini Reddy', 2013, '02:33:00', 100, 30, 'upload_image/jabar.jpg'),
(99, 'Naayak', 23, 'Cherry, a software engineer, is about to be arrested for a murder when, in a sudden turn of events, the real killer and Cherry\'s look-alike, is caught. When Cherry hears his story, he decides to help.\r\n', 'V. V. Vinayak', 2013, '00:00:00', 100, 30, 'upload_image/naayak.jpg'),
(100, 'Atharintiki Daaredi', 23, 'Gautam promises his grandfather that he will help him unite with his estranged daughter by his birthday. Posing as a driver, he enters his aunt\'s house and gets into many adventures and misadventures.\r\n', 'Trivikram Srinivas', 2013, '02:55:00', 100, 30, 'upload_image/atha.jpg'),
(101, 'Hyper', 24, 'Surya, a happy-go-lucky boy, is overprotective about his father, who is an honest government officer. When he locks horns with a powerful minister, Surya takes things in his hands.\r\n', 'Santosh Srinivas', 2016, '02:24:00', 100, 30, 'upload_image/hyper.jpg'),
(102, 'Ishq', 24, 'Rahul meets Priya on a flight to Hyderabad. However, when their flight is diverted to Goa, they spend a day together and eventually fall in love with each other. Will their love last forever?\r\n', 'Vikram Kumar', 2012, '02:40:00', 100, 30, 'upload_image/ishq.jpg'),
(103, 'Orange', 24, 'Ram doesn\'t believe in everlasting love. This ideology does not go down well with Jaanu and she leaves him. The reason for Ram\'s attitude is his ex-girlfriend Rooba, for whom he had to tell many lies.\r\n', 'Bhaskar', 2010, '02:40:00', 100, 30, 'upload_image/orange.jpg'),
(104, 'Badrinath', 24, 'Badri is made the protector of Badrinath temple. However, when a woman falls in love with him, his guru wonders whether to make Badri his successor as only an unmarried man can be the next guru.\r\n', 'V. V. Vinayak', 2011, '02:21:00', 100, 30, 'upload_image/badri.jpg'),
(105, 'Vishwaroopam', 25, 'Niruapama, who is married to a meek dance teacher, has an affair with her boss who has links with terrorists. When problems arise, she discovers that there is more to her husband than meets the eye.\r\n', 'Kamal Haasan', 2013, '02:28:00', 100, 30, 'upload_image/vish.jpg'),
(106, 'Vivegam', 25, 'Vivegam is a 2017 Indian Tamil-language action thriller film co-written and directed by Siva. The movie features Ajith Kumar as primary lead, with Vivek Oberoi, Kajal Aggarwal and Akshara Haasan playing the supporting roles.', 'Siva', 2017, '02:28:00', 100, 30, 'upload_image/vive.jpg'),
(107, 'Thuppakki', 25, 'An army captain visits Mumbai to be with his family and find a suitable bride. However, an explosion in the city sets him off on a mission to find and disable a terrorist sleeper cell in the city.\r\n', 'A.R. Murugadoss', 2012, '02:54:00', 100, 30, 'upload_image/thu.jpg'),
(108, 'Kabali', 25, 'Kabali fights against the oppression faced by the Tamils working in Malaysia as labourers. However, he is jailed for twenty-five years and once released, he sets out to seek his revenge.\r\n', 'Pa. Ranjith', 2016, '02:33:00', 100, 30, 'upload_image/kabali.jpg'),
(109, 'Velaiyilla Pattathari', 26, 'Raghuvaran remains unemployed for four years, as he is unwilling to accept the jobs that are not related to his field of expertise. His redemption finally arrives, but he pays a heavy price.\r\n', 'Velraj', 2014, '02:35:00', 100, 30, 'upload_image/vela.jpg'),
(110, 'Nanban', 26, 'Two friends set out to find a third friend from engineering college, who taught them how to be more than just victims of circumstances. During the journey, they recall their college memories.\r\n', 'S. Shankar', 2012, '03:09:00', 100, 30, 'upload_image/nan.jpg'),
(111, 'Oru Kal Oru Kannadi', 26, 'Saravanan falls for Meera at first sight, but she eventually turns him down. When he learns about her upcoming marriage, he and his friend, Partha, set out to Pondicherry to stop the wedding.\r\n', 'M. Rajesh', 2012, '02:46:00', 100, 30, 'upload_image/oru.jpg'),
(112, 'Kalakalappu', 26, 'Seenu struggles to save his loss-making, family-owned restaurant. He soon falls for Madhavi, a health inspector keen on shutting the place. When his brother, Raghu, enters the scene, things get worse.\r\n', 'Sundar C.', 2012, '02:27:00', 100, 30, 'upload_image/kala.jpg'),
(113, 'Raja Rani', 27, 'Raja, an orphan, becomes a petty thief when he grows up. He does everything in his power to escape the police each time. Later, Raja and his lover decide to get married and start their life afresh.\r\n', 'Atlee Kumar', 2013, '02:40:00', 100, 30, 'upload_image/raja.jpg'),
(114, 'Vaagai Sooda Vaa', 27, 'Veluthambi, who aspires for a government job, finds himself teaching poor children in a village. When he learns that they are appointed as bonded labourers, he decides to bring about a change.\r\n', 'A. Sarkunam', 2011, '02:03:00', 100, 30, 'upload_image/vaagai.jpg'),
(115, 'Naanum Rowdy Dhaan', 27, 'Pandian, the son of a police officer, falls in love with Kadambari, a hearing impaired girl. She agrees to love him only if he helps her kill a notorious gangster who murdered her parents.', 'Vignesh Shivan', 2015, '02:25:00', 100, 30, 'upload_image/naanum.jpg'),
(116, 'Idhu Kathirvelan Kadhal', 27, 'An ardent devotee of Lord Anjaneya who has no interest in getting married falls in love with a girl. His dreams are shattered when he learns that the girl is in love with someone else.\r\n', 'S. R. Prabhakaran', 2014, '02:36:00', 100, 30, 'upload_image/idhu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

CREATE TABLE `purchase_details` (
  `pur_id` int(10) NOT NULL,
  `pur_name` varchar(30) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `user_contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`pur_id`, `pur_name`, `user_email`, `address`, `city`, `state`, `user_contact`) VALUES
(1, 'Akhilesh', 'akhilesh123@gmail.com', 'RR Nagar', 'Bengaluru', 'Karnataka', 8660302847),
(2, 'Amruth', 'amruth123@gmail.com', 'Kengeri', 'Bengaluru', 'Karnataka', 8660196605);

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(4) NOT NULL,
  `cat_id` int(4) NOT NULL,
  `subcat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `cat_id`, `subcat_name`) VALUES
(1, 1, 'Action'),
(2, 1, 'Adventure'),
(3, 1, 'Biography'),
(4, 1, 'Comedy'),
(5, 1, 'Historical'),
(6, 1, 'Horror'),
(7, 1, 'Musical'),
(8, 1, 'Mystery'),
(9, 1, 'Romance'),
(10, 1, 'Science Fiction'),
(11, 1, 'Thriller'),
(12, 2, 'Action'),
(13, 2, 'Biopic'),
(14, 2, 'Comedy'),
(15, 2, 'Drama'),
(16, 2, 'Horror'),
(17, 2, 'Romance'),
(18, 3, 'Action'),
(19, 3, 'Comedy'),
(20, 3, 'Drama'),
(21, 3, 'Romance'),
(22, 4, 'Action'),
(23, 4, 'Comedy'),
(24, 4, 'Romance'),
(25, 5, 'Action'),
(26, 5, 'Comedy'),
(27, 5, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(4) NOT NULL,
  `user_fullname` varchar(35) NOT NULL,
  `user_username` varchar(25) NOT NULL,
  `user_passwd` varchar(20) NOT NULL,
  `user_gender` varchar(7) NOT NULL,
  `user_email` varchar(35) NOT NULL,
  `user_contact` bigint(20) NOT NULL,
  `user_city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_fullname`, `user_username`, `user_passwd`, `user_gender`, `user_email`, `user_contact`, `user_city`) VALUES
(1, 'Akhilesh', 'akhilesh', 'akhi123', 'Male', 'akhilesh123@gmail.com', 8660302847, 'Bengaluru'),
(2, 'admin', 'admin', 'admin123', 'Female', 'admin@gmail.com', 9859632561, 'Rajkot'),
(3, 'arun', 'arun', 'arun123', 'Male', 'arun123@gmail.com', 99016039949, 'Bengaluru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`mov_id`),
  ADD KEY `mov_cat` (`mov_cat`);

--
-- Indexes for table `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`pur_id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `mov_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `pur_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`mov_cat`) REFERENCES `subcat` (`subcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcat`
--
ALTER TABLE `subcat`
  ADD CONSTRAINT `subcat_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
