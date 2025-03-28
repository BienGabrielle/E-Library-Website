-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 01:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `year`, `description`) VALUES
(3, 'Carmilla', 'Sheridan Le Fanu ', 1872, 'Before Dracula, there was Carmilla. This tale of a female vampire who attracts a lonely young girl served as the foundation for the “lesbian vampirism” trope (and, no doubt, inspired Bram Stoker to some extent as well). So fans of the emerging cult classic Jennifer’s Body, you’ve found your literary horror match.'),
(4, 'Dracula', 'Bram Stoker', 1897, 'Meet the most famous vampire of all time. Dracula was born out of Bram Stoker’s imagination over a century ago — yet he still lives on today in our collective consciousness. Dracula is his story, one in which he roams from Transylvania to England to spread the curse of the undead amongst innocents. More than a simple tale about vampirism, Dracula is an era-defining masterwork about sexuality, technology, superstition, and an ancient horror that’s too terrible for words'),
(5, 'The Turn of the Screw', 'Henry James', 1898, 'The Turn of the Screw is the original children of the damned! When a governess is hired to take care of Miles and Flora, the niece and nephew of a wealthy Englishman, she has no idea what she’s in for. As she discovers the tragic fate of her predecessor, she starts seeing things that can only be explained in one of two ways: either she’s mad… or the specter of the late governess wants her job back!'),
(6, 'The Call of Cthulhu and Other Weird Stories', 'H. P. Lovecraft', 1928, 'Perhaps the most influential of American horror writers, H.P. Lovecraft was responsible for creating an entire mythology of elder gods, sinister sea-dwellers, mysterious cults, and men of science who are driven to the edge of their sanity. The Call of Cthulhu remains one of the most accessible entry points into Lovecraft’s works — some of which, if we’re being honest, are a bit hard for the uninitiated to follow.'),
(7, 'Le Morte d’Arthur', 'Thomas Malory', 1470, 'One of the earliest printed works of the fantasy genre can be found in the 15th century’s Le Morte d’Arthur, French for “the death of Arthur.” The book, published in 1485 by Sir Thomas Malory (whose authorship remains disputed), is a collection of stories, myths and folklore surrounding the exploits of King Arthur, who supposedly defended Britain from Saxon invaders in the 5th or 6th century C.E. '),
(8, 'The Arabian Nights', 'Anonymous', 1995, 'Everyone is familiar with this collection of folktales, also known as One Thousand and One Nights, and its infamous framing device: Scheherazade, the vizier’s daughter, is set to be married and then killed by the king; she forestalls this destiny by convincing the king to hear a story, which she then draws out for 1,001 nights by ending each evening on a cliffhanger. '),
(9, 'Through the Looking-Glass', 'Lewis Carroll', 1871, 'Decades of adaptation and consolidation have jumbled Lewis Carroll’s two Alice books in our collective memory, with Alice’s Adventures in Wonderland largely subsuming its 1871 sequel, Through the Looking-Glass. But it was Looking-Glass that introduced indelible English nursery-rhyme characters like Humpty-Dumpty and the quarrelsome twins Tweedledee and Tweedledum into Alice’s world. You can find “Jabberwocky” and “The Walrus and the Carpenter,” two of Carroll’s best-loved poems, within its pages. '),
(10, 'Mary Poppins', 'P.L. Travers', 1934, 'Fans of the classic Disney film Mary Poppins may be disappointed to learn that its source material contains no dancing penguins. There’s little mention of the tap-dancing chimney sweep Bert, and Mr. Banks never flew any kites. But still, P.L. Travers’ classic story contains one of the most intriguing protagonists in the history of children’s literature: the peculiar and magical nanny Mary Poppins. '),
(11, 'The Woman in White', 'Wilkie Collins', 1859, 'The epistolary novel, which was published in Charles Dickens’s journal All The Year Round, follows multiple narrators to fictionalize a true case that Collins found in a French crime book called Recueil des Causes Celebres. In The Woman in White, Frederick Fairlie is a well-to-do hypochondriac who hires Walter Hartright to tutor his niece and heiress, Laura Fairlie, as well as her half-sister Marian Halcombe.'),
(12, 'Crime and Punishment', 'Fyodor Dostoevsky', 1867, 'On the one hand, there’s very little mystery to Fyodor Dostoevsky’s 1867 Russian masterpiece—the protagonist, a destitute former law student named Raskolnikov, commits the titular crime on approximately page 75 of 500. On the other hand, the rest of the story—the punishment—is like walking a highwire over the Grand Canyon while trying to shave with a straight razor.'),
(13, 'The Leavenworth Case', 'Anna Katharine Green', 1878, 'Before there was Sherlock Holmes, there was Ebenezer Gryce. The character first appeared in Anna Katharine Green’s 1878 novel The Leavenworth Case, which has long been cited as instrumental to the development of the mystery genre. The book traces the fallout of the death of a wealthy New York philanthropist named Horatio Leavenworth, and accompanies Gryze as he investigates the man’s untimely and suspicious end. '),
(14, 'The Murder of Roger Ackroyd', 'Agatha Christie', 1926, 'No list of the greatest mysteries and thrillers would be complete without an entry from Agatha Christie, the woman who earned a reputation as the “queen of crime” through her 66 acclaimed detective novels. Christie, who in 1955 became the first recipient of the Mystery Writers of America’s Grand Master Award, is, according to Guinness World Records, the best-selling fiction writer ever. Her work has been adapted into more than 30 movies.'),
(15, 'Jane Eyre', 'Charlotte Bronte', 1847, 'Jane Eyre’s cruel and lonely childhood has strengthened her natural independence and spirit, which proves invaluable when she takes a position as a governess at Thornfield Hall. But after she falls in love with her sardonic employer, her discovery of his terrible secret forces her to make a heart-wrenching choice.'),
(16, 'Wuthering Heights', 'Emily Bronte', 1847, 'After the death of Catherine’s father, Heathcliff is bullied and humiliated by her brother Hindley and wrongly believing that his love for Catherine is not reciprocated, he leaves Wuthering Heights. Only to return years later as a wealthy and polished man. So, he proceeds to extract a terrible revenge for his former miseries.'),
(17, 'Anna Karenina', 'Leo Tolstoy', 1878, 'The doomed love affair between the sensuous and rebellious Anna and the dashing officer, Count Vronsky. Set in nineteenth-century Russia, tragedy unfolds as Anna rejects her passionless marriage and thereby exposes herself to the hypocrisies of society.'),
(19, 'Rebecca', 'Daphne Du Maurier', 1938, 'The novel begins in Monte Carlo, where our heroine is swept off her feet by the dashing widower Maxim de Winter and his sudden proposal of marriage. Orphaned and working as a lady’s maid, she can barely believe her luck. It is only when they arrive at his massive country estate that she realizes how large a shadow his late wife will cast over their lives – presenting her with a lingering evil that threatens to destroy their marriage from beyond the grave.');

-- --------------------------------------------------------

--
-- Table structure for table `book_images`
--

CREATE TABLE `book_images` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_images`
--

INSERT INTO `book_images` (`id`, `book_id`, `image_path`) VALUES
(2, 3, 'images/Carmilla.jpg'),
(3, 4, 'images/Dracula.jpg'),
(4, 5, 'images/The Turn of Screw.jpg'),
(5, 6, 'images/The Call of Chtullu.jpg'),
(6, 7, 'images/Le Morte d’Arthur.jpg'),
(7, 8, 'images/The arabian nights.jpg'),
(8, 9, 'images/humpy.jpg'),
(9, 10, 'images/mary.jpg'),
(10, 11, 'images/woman.jpg'),
(11, 12, 'images/crime.jpg'),
(12, 13, 'images/leaven.jpg'),
(13, 14, 'images/murder.jpg'),
(14, 15, 'images/bronte.jpg'),
(15, 16, 'images/wuthering.jpg'),
(16, 17, 'images/anna.jpg'),
(18, 19, 'images/maurier.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(6, 'adventure'),
(2, 'fantasy'),
(8, 'historical'),
(1, 'horror'),
(4, 'mystery'),
(7, 'non_fiction'),
(5, 'romance'),
(3, 'science_fiction');

-- --------------------------------------------------------

--
-- Table structure for table `category_books`
--

CREATE TABLE `category_books` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_books`
--

INSERT INTO `category_books` (`id`, `book_id`, `category_id`) VALUES
(2, 3, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1),
(6, 7, 2),
(7, 8, 2),
(8, 9, 2),
(9, 10, 2),
(10, 11, 4),
(11, 12, 4),
(12, 13, 4),
(13, 14, 4),
(14, 15, 5),
(15, 16, 5),
(16, 17, 5),
(18, 19, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_images`
--
ALTER TABLE `book_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `category_books`
--
ALTER TABLE `category_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `book_images`
--
ALTER TABLE `book_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_books`
--
ALTER TABLE `category_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_images`
--
ALTER TABLE `book_images`
  ADD CONSTRAINT `book_images_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_books`
--
ALTER TABLE `category_books`
  ADD CONSTRAINT `category_books_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_books_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
