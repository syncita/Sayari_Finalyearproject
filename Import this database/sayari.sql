-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 11:38 AM
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
-- Database: `sayari`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alisha', 'alisha@gmail.com', NULL, '$2y$10$XqXJtl8dARml0s9YQlcqpeeJNLGQuBa0m08CJ/z9ne/0hxnl0.Mf.', 'YCSj8gQT1gmXu3jJKoCjR4kA3r9EcTSRkVgyLQ7XEkSZCPBqcfhAmxISy6tY', '2023-03-22 03:51:08', '2023-03-30 01:26:49'),
(2, 'sweccha', 'sayari@gmail.com', NULL, '$2y$10$fmR1rfo9SZX1JAvt6LTDR./SofZv3hmU5ZfsxNbcR/MeD3UxzcwY.', NULL, '2023-03-31 02:59:26', '2023-03-31 03:28:44'),
(3, 'Sayari', 'sayari0911@gmail.com', NULL, '$2y$10$1iAS26Fg/HC6aLSf7pwgBeN37z1Rgm8sS2HP798QueH63XunslsaS', '1VLapPJg9BH0MchGPZlo0nkAj8k7zXeaEhadPHjSqn0eysMPMdGAL7XroWEm', '2023-04-01 05:23:49', '2023-04-06 03:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `amount` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `post_id`, `qty`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 300, 2, '2023-03-23 02:37:08', '2023-03-23 02:37:08'),
(2, 1, 1, 300, 2, '2023-03-23 09:51:07', '2023-03-23 09:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Horror', 'horror', '2023-03-22 03:51:23', '2023-03-22 03:51:23'),
(2, 'Romance', 'romance', '2023-03-22 03:51:29', '2023-03-22 03:51:29'),
(4, 'Philosophy', 'philosophy', '2023-03-22 03:51:46', '2023-03-22 03:51:46'),
(6, 'Children', 'children', '2023-03-22 03:51:55', '2023-03-22 03:51:55'),
(7, 'Educational', 'educational', '2023-03-22 03:52:10', '2023-03-22 03:52:10'),
(8, 'Comedy', 'comedy', '2023-03-22 03:52:23', '2023-03-22 03:52:23'),
(9, 'Adventure', 'adventure', '2023-03-29 00:11:37', '2023-03-29 00:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 10, 4, 'nice', '2023-04-01 23:53:34', '2023-04-01 23:53:34'),
(2, 10, 12, 'beautiful', '2023-04-01 23:58:25', '2023-04-01 23:58:25'),
(3, 10, 10, 'beautiful', '2023-04-02 02:59:04', '2023-04-02 02:59:04'),
(4, 10, 14, 'sakshi', '2023-04-02 04:34:58', '2023-04-02 04:34:58'),
(5, 11, 12, 'nice', '2023-04-09 02:05:32', '2023-04-09 02:05:32'),
(6, 11, 16, 'hi', '2023-04-13 02:15:36', '2023-04-13 02:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `email`, `phone`, `logo`, `created_at`, `updated_at`) VALUES
(3, 'Itahari International College', 'Dharan-2, Bhanuchowk', 'sayarineupane420@gmail.com', '+9779861708505', 'images/1680424044.png', '2023-04-02 02:42:24', '2023-04-02 02:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(2, 'sayari', 'sayari0911@gmail.com', 'hi', '2023-04-02 03:43:19', '2023-04-02 03:43:19'),
(3, 'Yunish Adhikari', 'yun.adhikari@gmail.com', 'Nice', '2023-04-08 06:12:04', '2023-04-08 06:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(4, 10, 10, '2023-04-02 02:58:40', '2023-04-02 02:58:40'),
(5, 1, 12, '2023-04-02 03:50:54', '2023-04-02 03:50:54'),
(6, 10, 14, '2023-04-02 04:34:49', '2023-04-02 04:34:49'),
(8, 10, 12, '2023-04-06 02:42:05', '2023-04-06 02:42:05'),
(11, 11, 12, '2023-04-09 05:43:27', '2023-04-09 05:43:27'),
(15, 11, 9, '2023-04-13 02:13:28', '2023-04-13 02:13:28'),
(16, 11, 16, '2023-04-13 02:16:13', '2023-04-13 02:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_29_095904_create_admins_table', 1),
(6, '2023_03_01_103721_create_categories_table', 1),
(7, '2023_03_01_103759_create_types_table', 1),
(8, '2023_03_01_103937_create_payment_categories_table', 1),
(9, '2023_03_01_104140_create_posts_table', 1),
(10, '2023_03_02_065138_create_companies_table', 1),
(11, '2023_03_05_062539_create_transactions_table', 1),
(12, '2023_03_05_064439_create_abouts_table', 1),
(13, '2023_03_22_083929_create_carts_table', 1),
(15, '2023_03_23_164925_create_purchases_table', 2),
(19, '2023_03_29_042953_create_likes_table', 3),
(20, '2023_03_29_043058_create_comments_table', 3),
(21, '2023_03_29_073252_create_feedback_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_categories`
--

CREATE TABLE `payment_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_categories`
--

INSERT INTO `payment_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Free', '2023-03-22 03:52:39', '2023-03-22 03:52:39'),
(2, 'Paid', '2023-03-22 03:52:48', '2023-03-22 03:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `payment_category_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `max_age` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `category_id`, `tags`, `payment_category_id`, `type_id`, `max_age`, `image`, `price`, `views`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Atomic Habits', '<p>Introduction\r\nMy Story\r\nN THE FINAL day of my sophomore year of high school, I was hit in the face\r\nwith a baseball bat. As my classmate took a full swing, the bat slipped out\r\nof his hands and came flying toward me before striking me directly between the\r\neyes. I have no memory of the moment of impact.\r\nThe bat smashed into my face with such force that it crushed my nose into a\r\ndistorted U-shape. The collision sent the soft tissue of my brain slamming into\r\nthe inside of my skull. Immediately, a wave of swelling surged throughout my\r\nhead. In a fraction of a second, I had a broken nose, multiple skull fractures, and\r\ntwo shattered eye sockets.\r\nWhen I opened my eyes, I saw people staring at me and running over to help.\r\nI looked down and noticed spots of red on my clothes. One of my classmates\r\ntook the shirt off his back and handed it to me. I used it to plug the stream of\r\nblood rushing from my broken nose. Shocked and confused, I was unaware of\r\nhow seriously I had been injured.\r\nMy teacher looped his arm around my shoulder and we began the long walk\r\nto the nurse’s office: across the field, down the hill, and back into school.\r\nRandom hands touched my sides, holding me upright. We took our time and\r\nwalked slowly. Nobody realized that every minute mattered.\r\nWhen we arrived at the nurse’s office, she asked me a series of questions.\r\n“What year is it?”\r\n“1998,” I answered. It was actually 2002.\r\n“Who is the president of the United States?”\r\n“Bill Clinton,” I said. The correct answer was George W. Bush.\r\n“What is your mom’s name?”\r\n“Uh. Um.” I stalled. Ten seconds passed.\r\n“Patti,” I said casually, ignoring the fact that it had taken me ten seconds to\r\nremember my own mother’s name.\r\nremember my own mother’s name.\r\nThat is the last question I remember. My body was unable to handle the rapid\r\nswelling in my brain and I lost consciousness before the ambulance arrived.\r\nMinutes later, I was carried out of school and taken to the local hospital.\r\nShortly after arriving, my body began shutting down. I struggled with basic\r\nfunctions like swallowing and breathing. I had my first seizure of the day. Then I\r\nstopped breathing entirely. As the doctors hurried to supply me with oxygen,\r\nthey also decided the local hospital was unequipped to handle the situation and\r\nordered a helicopter to fly me to a larger hospital in Cincinnati.\r\nI was rolled out of the emergency room doors and toward the helipad across\r\nthe street. The stretcher rattled on a bumpy sidewalk as one nurse pushed me\r\nalong while another pumped each breath into me by hand. My mother, who had\r\narrived at the hospital a few moments before, climbed into the helicopter beside\r\nme. I remained unconscious and unable to breathe on my own as she held my\r\nhand during the flight.\r\nWhile my mother rode with me in the helicopter, my father went home to\r\ncheck on my brother and sister and break the news to them. He choked back\r\ntears as he explained to my sister that he would miss her eighth-grade graduation\r\nceremony that night. After passing my siblings off to family and friends, he\r\ndrove to Cincinnati to meet my mother.\r\nWhen my mom and I landed on the roof of the hospital, a team of nearly\r\ntwenty doctors and nurses sprinted onto the helipad and wheeled me into the\r\ntrauma unit. By this time, the swelling in my brain had become so severe that I\r\nwas having repeated post-traumatic seizures. My broken bones needed to be\r\nfixed, but I was in no condition to undergo surgery. After yet another seizure—\r\nmy third of the day—I was put into a medically induced coma and placed on a\r\nventilator.\r\nMy parents were no strangers to this hospital. Ten years earlier, they had\r\nentered the same building on the ground floor after my sister was diagnosed with\r\nleukemia at age three. I was five at the time. My brother was just six months old.\r\nAfter two and a half years of chemotherapy treatments, spinal taps, and bone\r\nmarrow biopsies, my little sister finally walked out of the hospital happy,\r\nhealthy, and cancer free. And now, after ten years of normal life, my parents\r\nfound themselves back in the same place with a different child.\r\nWhile I slipped into a coma, the hospital sent a priest and a social worker to\r\ncomfort my parents. It was the same priest who had met with them a decade\r\nearlier on the evening they found out my sister had cancer.\r\nAs day faded into night, a series of machines kept me alive. My parents slept\r\nrestlessly on a hospital mattress—one moment they would collapse from fatigue,\r\nrestlessly on a hospital mattress—one moment they would collapse from fatigue,\r\nthe next they would be wide awake with worry. My mother would tell me later,\r\n“It was one of the worst nights I’ve ever had.”<br></p>', 1, 'selfhelp', 2, 2, 20, 'images/1680428085.png', 60, 0, 1, 'approved', '2023-03-23 02:30:14', '2023-04-15 23:07:49'),
(4, 'The power of now', '<div>INTRODUCTION</div><div>THE ORIGIN OF THIS BOOK</div><div>I have little use for the past and rarely think about it; how- ever, I would briefly like to tell you how I came to be a spiri- tual teacher and how this book came into existence.</div><div>Until my thirtieth year, I lived in a state of almost continu- ous anxiety interspersed with periods of suicidal depression. It feels now as if I am talking about some past lifetime or somebody else’s life.</div><div>One night not long after my twenty-ninth birthday, 1 woke up in the early hours with a feeling of absolute dread. I had woken up with such a feeling many times before, but this time it was more intense than it had ever been. The silence of the night, the vague outlines of the furniture in the dark room, the distant noise of a passing train — everything felt so alien, so hostile, and so utterly meaningless that it created in me a deep loathing of the world. The most loathsome thing of all, however, was my own existence. What was the point in continuing to live with this burden of misery? Why carry on with this continuous struggle? I could feel that a deep longing for annihilation, for nonexistence, was now&nbsp;<span style=\"text-align: var(--bs-body-text-align);\">becoming much stronger than the instinctive desire to con- tinue to live.</span></div><div>“T cannot live with myself any longer.” This was the thought that kept repeating itself in my mind. Then suddenly I became aware of what a peculiar thought it was. “Am | one or two? If I cannot live with myself, there must be two of me: the ‘I’ and the ‘self that ‘I’ cannot live with.” “Maybe,” I thought, “only one of them is real.”</div><div>1 was so stunned by this strange realization that my mind stopped. I was fully conscious, but there were no more thoughts. Then I felt drawn into what seemed like a vortex of energy. It was a slow movement at first and then accelerated. I was gripped by an intense fear, and my body started to shake. I heard the words “resist nothing,” as if spoken inside my chest. I could feel myself being sucked into a void. It felt as if the void was inside myself rather than outside. Suddenly, there was no more fear, and I let myself fall into that void. I have no recollection of what happened after that.</div><div>I was awakened by the chirping of a bird outside the window. I had never heard such a sound before. My eyes were still closed, and I saw the image of a precious diamond. Yes, if a diamond could make a sound, this is what it would be like. I opened my eyes. The first light of dawn was filtering through the curtains. Without any thought, I felt, I knew, that there is infinitely more to light than we realize. That soft luminos- ity filtering through the curtains was love itself. Tears came into my eyes. I got up and walked around the room. I recog- nized the room, and yet | knew that I had never truly seen it before. Everything was fresh and pristine, as if it had just come into existence. I picked up things, a pencil, an empty bottle, marveling at the beauty and aliveness of it all.</div><div><div>That day ] walked around the city in utter amazement at the miracle of life on earth, as if I had just been born into this world.</div><div>For the next five months, I lived in a state of uninterrupted deep peace and bliss. After that, it diminished somewhat in intensity, or perhaps it just seemed to because it became my natural state. I could still function in the world, although I realized that nothing I ever did could possibly add anything to what I already had.</div><div>1 knew, of course, that something profoundly significant had happened to me, but I didn\'t understand it at all. It wasn’t until several years later, after 1 had read spiritual texts and spent time with spiritual teachers, that I realized that what everybody was looking for had already happened to me. I understood that the intense pressure of suffering that night must have forced my consciousness to withdraw from its identification with the unhappy and deeply fearful self, which is ultimately a fiction of the mind. This withdrawal must have been so complete that this false, suffering self immediately collapsed, just as if a plug had been pulled out of an inflatable toy. What was left then was my true nature as the ever-present I am: consciousness in its pure state prior to identification with form. Later I also learned to go into that inner timeless and deathless realm that I had originally per- ceived as a void and remain fully conscious. I dwelt in states of such indescribable bliss and sacredness that even the origi- nal experience I just described pales in comparison. A time came when, for a while, I was left with nothing on the physi- cal plane. | had no relationships, no job, no home, no socially defined identity. I spent almost two years sitting on park benches in a state of the most intense joy.</div></div>', 4, 'spiritual', 1, 2, 45, 'images/1680159671.jpg', NULL, 0, 4, 'approved', '2023-03-24 02:29:20', '2023-03-30 01:16:11'),
(9, 'ADVENTURES OF SHERLOCK HOLMES', '<h2 style=\"color: rgb(0, 0, 0); text-align: center;\"><span style=\"font-weight: bolder;\"><u>Adventure 1</u></span></h2><p style=\"text-align: center;\"><span style=\"text-align: var(--bs-body-text-align);\">A SCANDAL IN BOHEMIA&nbsp;</span>&nbsp;</p><p>O Sherlock Holmes she is always the woman. I have seldom heard him mention her under any other name. In his eyes she eclipses and predominates the whole of her sex. It was not that he felt any emotion akin to love for Irene Adler. All emotions, and that one particularly, were abhorrent to his cold, precise, but admirably balanced mind. He was, I take it, the most perfect reasoning and observing machine that the world has seen but, as a lover, he would have placed himself in a false position. He never spoke of the softer passions, save with a gibe and a sneer. They were admirable things for the observer — excellent for drawing the veil from men\'s motives and actions. But for the trained reasoner to admit such intrusions into his own delicate and finely adjusted temperament was to introduce a distracting factor which might throw a doubt upon all his mental results. Grit in a sensitive instrument, or a crack in one of his own high-power lenses, would not be more disturbing than a strong emotion in a nature such as his. And yet there was but one woman to him, and that woman was the late Irene Adler, of dubious and question- able memory.</p><p>I had seen little of Holmes lately. My marriage had drifted us away from each other. My own complete happiness, and the home-centred interests which rise up around the man who first finds himself master of his own establishment, were sufficient<span style=\"text-align: var(--bs-body-text-align);\">&nbsp;to absorb all my attention ; while Holmes, who loathed every form of society with his whole Bohemian soul, remained in our lodgings in Baker Street, buried among his old books, and alternating from week to week between cocaine and ambition, the drowsiness of the drug, and the fierce energy of his own keen nature. He was still, as ever, deeply attracted by the study of crime, and occupied his immense faculties and extraordinary powers of observation in following out those clues, and clearing up those mysteries, which had been abandoned as hopeless by the official police. From time to time,&nbsp;I heard some vague account of his doings : of his sum- mons to Odessa in the case of the Trepoff murder, of his clearing up of the singular tragedy of the Atkinson brothers at Trincomalee, and finally of the mission which he had accomplished so delicately and successfully for the reigning family of Holland. Beyond these signs of his activity, how- ever, which I merely shared with all the readers of the daily press, I knew little of my former friend and companion.</span></p><p>One night — it was on the 20th of March 1888 — I was returning from a journey to a patient (for I had now returned to civil practice), when my way led me through Baker Street. As I passed the well-remembered door, which must always be associated in my mind with my wooing, and with the dark incidents of the Study in Scarlet, I was seized with a keen desire to see Holmes again, and to know how he was employing his extraordinary powers. His rooms were brilliantly lit, and, even as I looked up, I saw his tall, spare figure pass twice in a dark silhouette against the blind. He was pacing the room swiftly, eagerly, with his head sunk upon his chest and his hands clasped behind him. To me, who knew his every mood and habit, his attitude and manner told their awn story. He was at work again. He had arisen out of his drug- created dreams, and was hot upon the scent of some new problem. I rang the bell, and was shown up to the chamber which had formerly been in part my own.</p><p>His manner was not effusive. It seldom was ; but he was&nbsp;<span style=\"text-align: var(--bs-body-text-align);\">glad, I think, to see me. With hardly a word spoken, but with a kindly eye, he waved me to an arm-chair, threw across his case of cigars, and indicated a spirit case and a gasogene in the corner. Then he stood before the fire, and looked me over in his singular introspective fashion.</span></p><p>\"Wedlock suits you,\" he remarked. \"I think, Watson, that you have put on seven and a half pounds since I saw you.\"</p><p>\" Seven !\" I answered.</p><p>\" Indeed, I should have thought a little more. Just a trifle more, I fancy, Watson. And in practice again, I observe. You did not tell me that you intended to go into harness.\"</p><p>\" Then^ how do you know ?\"</p><p>\" I see it, I deduce it. How do I know that you have been getting yourself very wet lately, and that you have a most clumsy and careless servant girl ?\"</p><p>\" My dear Holmes,\" said I, \" this is too much. You would certainly have been burned, had you lived a few centuries ago. It is true that I had a country walk on Thursday and came home in a dreadful mess ; but, as I have changed my clothes, I can\'t imagine how you deduce it. As to Mary Jane, she is incorrigible, and my wife has given her notice ; but there, again, I fail to see how you work it out.\"</p><p>He chuckled to himself and rubbed his long, nervous hands together.</p><p>\" It is simplicity itself,\" said he •, \" my eyes tell me that on the inside of your left shoe, just where the firelight strikes it, the leather is scored by six almost paralled cuts. Obviously they have been caused by someone who has very carelessly scraped round the edges of the sole in order to remove crusted mud from it. Hence, you see, my double deduction that you had been out in vile weather, and that you had a particularly malignant boot-slitting specimen of the London slavey. As to your practice, if a gentleman walks into my rooms smelling of iodoform, with a black mark of nitrate of silver upon his right forefinger, and a bulge on the side of his top-hat to show where he has secreted his stethoscope, I&nbsp;<span style=\"text-align: var(--bs-body-text-align);\">I shook my head. \" Many men have been hanged on far slighter evidence,\" I remarked.</span></p><p>\" So they have. And many men have been wrongfully hanged.\"</p><p>\" What is the young man\'s own account of the matter ?\"</p><p>\" It is, I am afraid, not very encouraging to his supporters, though there are one or two points in it which are suggestive. You will find it here, and may read it for yourself.\"</p><p>He picked out from his bundle a copy of the local Here- fordshire paper, and having turned down the sheet, he point- ed out the paragraph in which the unfortunate young man had given his own statement of what had occurred. I set- tled myself down in the corner of the carriage, and read it very carefully. It ran in this way :</p><p>\" Mr. James McCarthy, the only son of the deceased, was then called, and gave evidence as follows: *I had been away from home for three days at Bristol, and had only just returned upon the morning of last Monday, the 3rd. My fa- ther was absent from home at the time of my arrival, and I was informed by the maid that he had driven over to Ross with John Cobb, the groom. Shortly after my return I heard the wheels of his trap in the yard, and, looking out of my win- dow, I saw him get out and walk rapidly out of the yard, though I was not aware in which direction he was going. I then took my gun, and strolled out in the direction of the Boscombe Pool, with the intention of visiting the rabbit-war- ren which is upon the other side. On my way I saw William Crowder, the game-keeper, as he had stated in his evidence ; but he is mistaken in thinking that I was following my father. I had no idea that he was in front of me. When about a hundred yards from the Pool I heard a cry of \" Cooee !\" which was a usual signal between my father and myself. I then hurried forward, and found him standing by the Pool. He appeared to be much surprised at seeing me, and asked me rather roughly what I was doing there</p>', 1, 'adventure', 1, 2, 20, 'images/1680069476.jpg', NULL, 0, 7, 'approved', '2023-03-29 00:12:56', '2023-03-30 00:09:52'),
(10, 'Pride and Prejudice', '<h1 style=\"text-align: center;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u><b>Chapter 1</b></u></h1><p>It <span style=\"text-align: var(--bs-body-text-align);\">is&nbsp; a&nbsp; truth&nbsp; universally&nbsp; acknowledged, that&nbsp; a&nbsp; single&nbsp; man&nbsp; in&nbsp; possession&nbsp; of&nbsp; a good&nbsp; fortune&nbsp; must&nbsp; be&nbsp; in&nbsp; want&nbsp; of&nbsp; a wife.</span></p><p>However&nbsp; little&nbsp; known&nbsp; the&nbsp; feelings&nbsp; or&nbsp; views&nbsp; of such&nbsp; a&nbsp; man&nbsp; may&nbsp; be&nbsp; on&nbsp; his&nbsp; first&nbsp; entering&nbsp; a&nbsp; neigh- borhood, this&nbsp; truth&nbsp; is&nbsp; so&nbsp; well&nbsp; fixed&nbsp; in&nbsp; the&nbsp; minds&nbsp; of the&nbsp; surrounding&nbsp; families&nbsp; that&nbsp; he&nbsp; is&nbsp; considered&nbsp; as the&nbsp; rightful&nbsp; property&nbsp; of&nbsp; some&nbsp; one&nbsp; or&nbsp; other&nbsp; of&nbsp; their daughters.</p><p>\"My&nbsp; dear&nbsp; Mr.&nbsp; Bennet,\"&nbsp; said&nbsp; his&nbsp; lady&nbsp; to&nbsp; him one&nbsp; day,&nbsp; \"have&nbsp; you&nbsp; heard&nbsp; that&nbsp; Netherfield&nbsp; Park is&nbsp; let&nbsp; at&nbsp; last?&nbsp; \"</p><p>Mr.&nbsp; Bennet&nbsp; replied&nbsp; that&nbsp; he&nbsp; had&nbsp; not. \"But&nbsp; it&nbsp; is,\"&nbsp; returned&nbsp; she;&nbsp; &nbsp;\"for&nbsp; Mrs.&nbsp; Long&nbsp; has just&nbsp; been&nbsp; here,&nbsp; and&nbsp; she&nbsp; told&nbsp; me&nbsp; all&nbsp; about&nbsp; it.\" Mr.&nbsp; Bennet&nbsp; made&nbsp; no&nbsp; answer.&nbsp;</p><p>\"&nbsp; Do&nbsp; not&nbsp; you&nbsp; want&nbsp; to&nbsp; know&nbsp; who&nbsp; has&nbsp; taken&nbsp; it?&nbsp; \" cried&nbsp; his&nbsp; wife,&nbsp; impatiently.</p><p>\"&nbsp; You&nbsp; want&nbsp; to&nbsp; tell&nbsp; me,&nbsp; and&nbsp; I&nbsp; have&nbsp; no&nbsp; objection to&nbsp; hearing&nbsp; it.\"</p><p>This&nbsp; was&nbsp; invitation&nbsp; enough.</p><p>\"Why,&nbsp; my&nbsp; dear,&nbsp; you&nbsp; must&nbsp; know,&nbsp; Mrs.&nbsp; Long says&nbsp; that&nbsp; Netherfield&nbsp; is&nbsp; taken&nbsp; by&nbsp; a&nbsp; young&nbsp; man&nbsp; of large&nbsp; fortune&nbsp; from&nbsp; the&nbsp; north&nbsp; of&nbsp; England;&nbsp; that&nbsp; he came&nbsp; down&nbsp; on&nbsp; Monday&nbsp; in&nbsp; a&nbsp; chaise&nbsp; and&nbsp; four&nbsp; to&nbsp; see the&nbsp; place,&nbsp; and&nbsp; was&nbsp; so&nbsp; much&nbsp; delighted&nbsp; with&nbsp; it&nbsp; that he&nbsp; agreed&nbsp; with&nbsp; Mr.&nbsp; Morris&nbsp; immediately;&nbsp; that&nbsp; he is&nbsp; to&nbsp; take&nbsp; possession&nbsp; before&nbsp; Michaelmas,&nbsp; and&nbsp; some of&nbsp; his&nbsp; servants&nbsp; are&nbsp; to&nbsp; be&nbsp; in&nbsp; the&nbsp; house&nbsp; by&nbsp; the&nbsp; end&nbsp; of next&nbsp; week.\"</p><p>\"What&nbsp; is&nbsp; his&nbsp; name?\"</p><p>\"Bingley.\"</p><p>\"&nbsp; Is&nbsp; he&nbsp; married&nbsp; or&nbsp; single?&nbsp; \"</p><p>\"Oh,&nbsp; single,&nbsp; my&nbsp; dear,&nbsp; to&nbsp; be&nbsp; sure!&nbsp; A&nbsp; single man&nbsp; of&nbsp; large&nbsp; fortune ;&nbsp; four&nbsp; or&nbsp; five&nbsp; thousand&nbsp; a&nbsp; year. What&nbsp; a&nbsp; fine&nbsp; thing&nbsp; for&nbsp; our&nbsp; girls!&nbsp; \"</p><p>\"&nbsp; How&nbsp; so?&nbsp; how&nbsp; can&nbsp; it&nbsp; affect&nbsp; them?&nbsp; \"</p><p>\"My&nbsp; dear&nbsp; Mr.&nbsp; Bennet,\"&nbsp; replied&nbsp; his&nbsp; wife,&nbsp; \"how can&nbsp; you&nbsp; be&nbsp; so&nbsp; tiresome?&nbsp; You&nbsp; must&nbsp; know&nbsp; that&nbsp; I am&nbsp; thinking&nbsp; of&nbsp; his&nbsp; marrying&nbsp; one&nbsp; of&nbsp; them.\"</p><p>\"&nbsp; Is&nbsp; that&nbsp; his&nbsp; design&nbsp; in&nbsp; settling&nbsp; here?&nbsp; \"</p><p>\"&nbsp; Design?&nbsp; nonsense,&nbsp; how&nbsp; can&nbsp; you&nbsp; talk&nbsp; so!&nbsp; But it&nbsp; is&nbsp; very&nbsp; likely&nbsp; that&nbsp; he&nbsp; may&nbsp; faHm&nbsp; love&nbsp; with&nbsp; one of&nbsp; them,&nbsp; and&nbsp; therefore&nbsp; you&nbsp; must&nbsp; visit&nbsp; him&nbsp; as&nbsp; soon as&nbsp; he&nbsp; comes.\"</p><p>\"&nbsp; I&nbsp; see&nbsp; no&nbsp; occasion&nbsp; for&nbsp; that.&nbsp; You&nbsp; and&nbsp; the&nbsp; girls may&nbsp; go,&nbsp; or&nbsp; you&nbsp; may&nbsp; send&nbsp; them&nbsp; by&nbsp; themselves, which&nbsp; perhaps&nbsp; will&nbsp; be&nbsp; still&nbsp; better;&nbsp; for&nbsp; as&nbsp; you&nbsp; are as&nbsp; handsome&nbsp; as&nbsp; any&nbsp; of&nbsp; them,&nbsp; Mr.&nbsp; Bingley&nbsp; might like&nbsp; you&nbsp; the&nbsp; best&nbsp; of&nbsp; the&nbsp; party.\"</p><p>\"My&nbsp; dear,&nbsp; you&nbsp; flatter&nbsp; me.&nbsp; I&nbsp; certainly&nbsp; have had&nbsp; my&nbsp; share&nbsp; of&nbsp; beauty,&nbsp; but&nbsp; I&nbsp; do&nbsp; not&nbsp; pretend&nbsp; to&nbsp; be anything&nbsp; extraordinary&nbsp; now.&nbsp; When&nbsp; a&nbsp; woman&nbsp; has five&nbsp; grown-up&nbsp; daughters,&nbsp; she&nbsp; ought&nbsp; to&nbsp; give&nbsp; over thinking&nbsp; of&nbsp; her&nbsp; own&nbsp; beauty.\"</p><p>\"In&nbsp; such&nbsp; cases&nbsp; a&nbsp; woman&nbsp; has&nbsp; not&nbsp; often&nbsp; much beauty&nbsp; to&nbsp; think&nbsp; of.\"</p><p>\"But^&nbsp; my&nbsp; dear,&nbsp; you&nbsp; must&nbsp; indeed&nbsp; go&nbsp; and&nbsp; see&nbsp; Mr. Bingley&nbsp; when&nbsp; he&nbsp; comes&nbsp; into&nbsp; the&nbsp; neighborhood.\"</p><p>\"&nbsp; It&nbsp; is&nbsp; more&nbsp; than&nbsp; I&nbsp; engage&nbsp; for,&nbsp; I&nbsp; assure&nbsp; you.\"</p><p>\"But&nbsp; consider&nbsp; your&nbsp; daughters.&nbsp; Only&nbsp; think what&nbsp; an&nbsp; establishment&nbsp; it&nbsp; would&nbsp; be&nbsp; for&nbsp; one&nbsp; of&nbsp; them ! Sir&nbsp; William&nbsp; and&nbsp; Lady&nbsp; Lucas&nbsp; are&nbsp; determined&nbsp; to&nbsp; go, merely&nbsp; on&nbsp; that&nbsp; account;&nbsp; for&nbsp; in&nbsp; general,&nbsp; you&nbsp; know, they&nbsp; visit&nbsp; no&nbsp; new-comers.&nbsp; Indeed&nbsp; you&nbsp; must&nbsp; go; for&nbsp; it&nbsp; will&nbsp; be&nbsp; impossible&nbsp; for&nbsp; us&nbsp; to&nbsp; visit&nbsp; him,&nbsp; if&nbsp; you do&nbsp; not.\"</p><p>\"You&nbsp; are&nbsp; over-scrupulous^&nbsp; surely.&nbsp; I&nbsp; dare&nbsp; say Mr.&nbsp; Bingley&nbsp; will&nbsp; be&nbsp; very&nbsp; glad&nbsp; to&nbsp; see&nbsp; you;&nbsp; and&nbsp; I will&nbsp; send&nbsp; a&nbsp; few&nbsp; lines&nbsp; by&nbsp; you&nbsp; to&nbsp; assure&nbsp; him&nbsp; of&nbsp; my hearty&nbsp; consent&nbsp; to&nbsp; his&nbsp; marrying&nbsp; whichever&nbsp; he chooses&nbsp; of&nbsp; the&nbsp; girls;&nbsp; though&nbsp; I&nbsp; must&nbsp; throw&nbsp; in&nbsp; a good&nbsp; word&nbsp; for&nbsp; my&nbsp; little&nbsp; Lizzy.\"</p><p>\"&nbsp; I&nbsp; desire&nbsp; you&nbsp; will&nbsp; do&nbsp; no&nbsp; such&nbsp; thing.&nbsp; &nbsp; &nbsp;Lizzy&nbsp; is&nbsp;<span style=\"text-align: var(--bs-body-text-align);\">not&nbsp; a&nbsp; bit&nbsp; better&nbsp; than&nbsp; the&nbsp; others ;&nbsp; and&nbsp; I&nbsp; am&nbsp; sure&nbsp; she is&nbsp; not&nbsp; half&nbsp; so&nbsp; handsome&nbsp; as&nbsp; Jane,&nbsp; nor&nbsp; half&nbsp; so&nbsp; good- humored&nbsp; as&nbsp; Lydia.&nbsp; But&nbsp; you&nbsp; are&nbsp; always&nbsp; giving her&nbsp; the&nbsp; preference.\' \'</span></p><p>\"They&nbsp; have&nbsp; none&nbsp; of&nbsp; them&nbsp; much&nbsp; to&nbsp; recommend them/\'&nbsp; replied&nbsp; he:&nbsp; \"they&nbsp; are&nbsp; all&nbsp; silly&nbsp; and&nbsp; igno- rant, like&nbsp; other&nbsp; girls;&nbsp; but&nbsp; Lizzy&nbsp; has&nbsp; something more&nbsp; of&nbsp; quickness&nbsp; than&nbsp; her&nbsp; sisters.\"</p><p>\"Mr.&nbsp; Bennet,&nbsp; how&nbsp; can&nbsp; you&nbsp; abuse&nbsp; your&nbsp; own children&nbsp; in&nbsp; such&nbsp; a&nbsp; way?&nbsp; You&nbsp; take&nbsp; delight&nbsp; in vexing&nbsp; me.&nbsp; You&nbsp; have&nbsp; no&nbsp; compassion&nbsp; on&nbsp; my&nbsp; poor nerves.\"</p><p>\"&nbsp; You&nbsp; mistake&nbsp; me,&nbsp; my&nbsp; dear.&nbsp; I&nbsp; have&nbsp; a&nbsp; high&nbsp; re- spect for&nbsp; your&nbsp; nerves.&nbsp; They&nbsp; are&nbsp; my&nbsp; old&nbsp; friends. I&nbsp; have&nbsp; heard&nbsp; you&nbsp; mention&nbsp; them&nbsp; with&nbsp; consideration these&nbsp; twenty&nbsp; years&nbsp; at&nbsp; least.\"</p><p>\"&nbsp; Ah,&nbsp; you&nbsp; do&nbsp; not&nbsp; know&nbsp; what&nbsp; I&nbsp; suffer.\"</p><p>\"But&nbsp; I&nbsp; hope&nbsp; you&nbsp; will&nbsp; get&nbsp; over&nbsp; it,&nbsp; and&nbsp; live&nbsp; to see&nbsp; many&nbsp; young&nbsp; men&nbsp; of&nbsp; four&nbsp; thousand&nbsp; a&nbsp; year&nbsp; come into&nbsp; the&nbsp; neighborhood.\"</p><p>\"&nbsp; It&nbsp; will&nbsp; be&nbsp; no&nbsp; use&nbsp; to&nbsp; us,&nbsp; if&nbsp; twenty&nbsp; such&nbsp; should come,&nbsp; since&nbsp; you&nbsp; will&nbsp; not&nbsp; visit&nbsp; them.\"</p><p>\"Depend&nbsp; upon&nbsp; it,&nbsp; my&nbsp; dear,&nbsp; that&nbsp; when&nbsp; there&nbsp; are. twenty,&nbsp; I&nbsp; will&nbsp; visit&nbsp; them&nbsp; all.\"</p><p>Mr.&nbsp; Bennet&nbsp; was&nbsp; so&nbsp; odd&nbsp; a&nbsp; mixture&nbsp; of&nbsp; quick&nbsp; park sarcastic&nbsp; &nbsp;humor,&nbsp; &nbsp;reserve,&nbsp; &nbsp; and&nbsp; &nbsp;caprice,&nbsp; &nbsp; that&nbsp; &nbsp;the experience&nbsp; &nbsp;of&nbsp; &nbsp; three-and-twenty&nbsp; &nbsp;years&nbsp; &nbsp; had&nbsp; &nbsp; bee? insufficient&nbsp; to&nbsp; make&nbsp; his&nbsp; wife&nbsp; understand&nbsp; his&nbsp; character.&nbsp; &nbsp; &nbsp;Her&nbsp; &nbsp;mind&nbsp; &nbsp;was&nbsp; &nbsp; less&nbsp; &nbsp; difficult&nbsp; &nbsp;to&nbsp; develop.&nbsp;She&nbsp; was&nbsp; a&nbsp; woman&nbsp; of&nbsp; mean&nbsp; understanding,&nbsp; little&nbsp; information, and&nbsp; uncertain&nbsp; temper.&nbsp; When&nbsp; she&nbsp; was discontented,&nbsp; she&nbsp; fancied&nbsp; herself&nbsp; nervous.&nbsp; The business&nbsp; of&nbsp; her&nbsp; life&nbsp; was&nbsp; to&nbsp; get&nbsp; her&nbsp; daughters&nbsp; married&nbsp; its&nbsp; solace&nbsp; was&nbsp; visiting&nbsp; and&nbsp; news.</p><p><br></p>', 2, 'romance', 2, 2, 20, 'images/1680152490.jpg', 20, 0, 8, 'approved', '2023-03-29 23:16:30', '2023-03-29 23:17:43'),
(12, 'The road not taken', '<div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">Two roads diverged in a yellow wood,<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">And sorry I could not travel both<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">And be one traveler, long I stood<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">And looked down one as far as I could<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">To where it bent in the undergrowth;<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\"><br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">Then took the other, as just as fair,<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">And having perhaps the better claim,<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">Because it was grassy and wanted wear;<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">Though as for that the passing there<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">Had worn them really about the same,<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\"><br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">And both that morning equally lay<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">In leaves no step had trodden black.<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">Oh, I kept the first for another day!<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">Yet knowing how way leads on to way,<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">I doubted if I should ever come back.<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\"><br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">I shall be telling this with a sigh<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">Somewhere ages and ages hence:<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">Two roads diverged in a wood, and I—<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">I took the one less traveled by,<br></div><div style=\"margin: 0px; padding: 0px 0px 0px 1em; border: 0px; font-size: 20px; font-family: adobe-garamond-pro, Garamond, Baskerville, &quot;Baskerville Old Face&quot;, &quot;Hoefler Text&quot;, &quot;Times New Roman&quot;, serif; vertical-align: baseline; text-indent: -1em;\">And that has made all the difference.</div>', 7, 'poem', 1, 1, 23, 'images/1680162333.jpg', NULL, 0, 4, 'approved', '2023-03-30 02:00:33', '2023-03-30 02:00:49'),
(14, 'Hello sakshi', '<p>sakshi is a very pretty girl who lives in dharan.</p>', 1, 'sak', 1, 1, 18, 'images/1680765994.gif', NULL, 0, 10, 'rejected', '2023-04-02 04:34:07', '2023-04-18 00:48:48'),
(16, 'It ends with us', '<p>It ends with us</p><p>In this residence section the sidewalks were also wooden and uneven and the streets muddy in winter and dusty in summer, but the houses, some of which had \"come round the Horn,\" were large, simple, and stately. Those on the three long streets had deep gardens before them, with willow trees and oaks above the flower beds, quaint ugly statues, and fountains that were sometimes dry. The narrower houses of South Park crowded one another about the oval enclosure and their common garden was the smaller oval of green and roses.</p>', 1, 'adventure', 1, 2, 30, 'images/1681023694.jpg', NULL, 0, 11, 'approved', '2023-04-09 01:16:34', '2023-04-18 03:42:24'),
(20, 'gift of fire', '<p>The ACLU compared the use of the face recognition system at the Super Bowl\r\nto a computerized police lineup to which innocent people were subject without their\r\nknowledge or consent. Face recognition systems had a poor accuracy rate in the early\r\n2000s,29 but the technology improved, along with the availability of photos to match\r\nagainst (tagged photos in social networks, for example). A police officer can now snap a\r\nphoto of a person on the street and run a cellphone app for face recognition. (Another\r\napp scans a person’s iris and collects fingerprints.)\r\nSome cities have increased their camera surveillance programs, while others gave\r\nup their systems because they did not significantly reduce crime. (Some favor better\r\nlighting and more police patrols—low tech and less invasive of privacy.) Toronto city\r\nofficials refused to let police take over their traffic cameras to monitor a protest march\r\nand identify its organizers. In a controversial statement, the Privacy Commissioner of\r\nCanada argued that the country’s Privacy Act required a “demonstrable need for each\r\npiece of personal information collected” to carry out government programs and therefore\r\nrecording activities of large numbers of the general public was not a permissible means of\r\ncrime prevention.30\r\nEngland was the first country to set up a large number of cameras in public places to\r\ndeter crime. There are millions of surveillance cameras in Britain. A study by a British\r\nuniversity found a number of abuses by operators of surveillance cameras, including\r\ncollecting salacious footage, such as people having sex in a car, and showing it to colleagues.\r\nDefense lawyers complain that prosecutors sometimes destroy footage that might clear\r\na suspect.31 Enforcing a curfew for young people is one of the uses of public cameras\r\nin England. This application suggests the kind of monitoring and control of special\r\npopulations the cameras make easy. Will police use face recognition systems to track\r\npolitical dissidents, journalists, political opponents of powerful people—the kinds of\r\npeople targeted for illegal or questionable surveillance in the past? In 2005, the British\r\ngovernment released a report saying Britain’s closed-circuit TV systems were of little\r\nuse in fighting crime. The only successful use of the cameras was in parking lots where\r\nthey helped reduce vehicle crime.32 Later that year, photos taken by surveillance cameras\r\nhelped identify terrorists who set off bombs in the London subway. After rioters burned\r\nand looted neighborhoods in England in 2011, police used recordings from street cameras\r\nand face recognition systems to identify rioters. It is rare for all the facts or strong\r\narguments to support only one side of an issue. What trade-offs between privacy and\r\nidentifying criminals and terrorists are we willing to make?\r\nThe California Department of Transportation photographed the license plates on\r\ncars driving in a particular area. Then it contacted the car owners for a survey about\r\ntraffic in the area. Hundreds of drivers complained. These people objected vehemently to\r\nwhat they considered unacceptable surveillance by a government agency even when the\r\nagency photographed only their license plates, not their faces—for a survey, not a police\r\naction. Many ordinary people do not like being tracked and photographed without their\r\nknowledge.&nbsp;<br></p>', 1, 'selfhelp', 1, 2, 35, 'images/1681810633.jpeg', NULL, 0, 11, 'pending', '2023-04-18 03:52:13', '2023-04-18 03:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(14, 4, 10, '2023-03-30 02:44:54', '2023-03-30 02:44:54'),
(15, 4, 10, '2023-03-30 02:47:11', '2023-03-30 02:47:11'),
(16, 4, 10, '2023-03-30 02:54:55', '2023-03-30 02:54:55'),
(17, 4, 10, '2023-03-30 03:06:11', '2023-03-30 03:06:11'),
(18, 4, 10, '2023-03-30 03:08:22', '2023-03-30 03:08:22'),
(19, 4, 10, '2023-03-30 03:10:24', '2023-03-30 03:10:24'),
(20, 4, 10, '2023-03-30 03:12:29', '2023-03-30 03:12:29'),
(21, 4, 10, '2023-03-30 03:17:26', '2023-03-30 03:17:26'),
(22, 4, 10, '2023-03-30 03:20:27', '2023-03-30 03:20:27'),
(23, 4, 10, '2023-03-30 03:21:18', '2023-03-30 03:21:18'),
(24, 4, 10, '2023-03-30 03:23:18', '2023-03-30 03:23:18'),
(25, 7, 10, '2023-03-31 01:41:31', '2023-03-31 01:41:31'),
(26, 10, 10, '2023-04-01 23:34:12', '2023-04-01 23:34:12'),
(27, 11, 10, '2023-04-08 06:05:47', '2023-04-08 06:05:47'),
(28, 11, 10, '2023-04-09 01:45:34', '2023-04-09 01:45:34'),
(29, 11, 1, '2023-04-15 23:09:29', '2023-04-15 23:09:29'),
(30, 10, 10, '2023-04-18 00:42:38', '2023-04-18 00:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Poems', 'poems', '2023-03-22 03:52:58', '2023-03-22 03:52:58'),
(2, 'Stories', 'stories', '2023-03-22 03:53:04', '2023-03-22 03:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('approved','pending','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `dob`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'SayarShrestha', 'sudam@gmail.com', NULL, '$2y$10$7E6.fFhZdRjNKtWhaAFAd.kKjtLoqWNRbfYNmU5XvdzsYno4w0BCm', '2002-08-14', 'Pdv1cpa4ZkKQ6icAlTV9v6VGGOIPBtc5gNSCDjSRAHloJjSSvKSVYK57nmSv', '2023-03-22 03:35:32', '2023-03-26 02:47:37', 'approved'),
(2, 'Bhanu bhakta acharya', 'np05cp4s210135@iic.edu.np', NULL, '$2y$10$xJ221As5J4y25mX6EqXQbeTsDMkkEDgxVDM5Ce7EArhsvoOSzL7ji', NULL, 'ICkh38GPLzz1E6ArEhBhecz66JIfBTA6oGPe1bgI11vSjJog6XtOQ79TjX12', '2023-03-23 02:37:00', '2023-03-26 02:57:41', 'approved'),
(3, 'Person', 'person@gmail.com', NULL, '$2y$10$d8BiyVK3RJdfXGzJgABofOXc2mBT8k61T9pKDTQsF7GPyca2Bk/c2', NULL, NULL, '2023-03-24 01:21:35', '2023-03-24 01:21:35', 'pending'),
(4, 'New', 'new@gmail.com', NULL, '$2y$10$z94d0TznimoaxBYnd.JzAu0bkUzX81M6yNfmD7GCJau7qmxa7Hmx6', NULL, NULL, '2023-03-24 02:28:14', '2023-03-24 02:28:14', 'pending'),
(5, 'User', 'user@gmail.com', NULL, '$2y$10$sGwQMPGG0YU2FEAlkE57TerfDBBlqm1MDbZRoROWFDsiVLL/jF9QW', NULL, NULL, '2023-03-25 10:37:17', '2023-03-25 10:37:17', 'pending'),
(6, 'New user', 'newuser@gmail.com', NULL, '$2y$10$Ba3u148fvbWpspye9xohC.LrK.sNSqLX0shCeA1yZF.SgeczJF4k2', NULL, NULL, '2023-03-26 00:48:30', '2023-03-26 00:48:30', 'pending'),
(7, 'Sweccha', 'sayari@gmail.com', NULL, '$2y$10$QengTehhAR3r8GXlLeRMnOi5rYgtYBF6piQtHP.Waw0dideXUtXx6', NULL, 'RfDQXxsr05LJv8Vefg3I2vJdOiDOYp9B1zlBi3K3qr5thLyCgOMVZnEJmIWG', '2023-03-26 23:01:53', '2023-03-31 03:58:06', 'pending'),
(8, 'Sayari Neupane', 'user12@gmail.com', NULL, '$2y$10$VJmyLVGM9fHD.ln5XOe4/.6lAJq6HT9UBmRYRAb/7gSaIsNDhdCHe', '2023-03-01', NULL, '2023-03-29 23:05:30', '2023-03-29 23:05:30', 'pending'),
(9, 'Bhabishya', 'bhabishyaluitel@gmail.com', NULL, '$2y$10$0XUPUuc0P20rMEh.GqPW4e7BqEPbFVl0zWKHFWyAWFj3MlFBIUQEG', '2023-03-01', NULL, '2023-03-30 00:21:19', '2023-03-30 00:21:19', 'pending'),
(10, 'Sayari', 'sayari0911@gmail.com', NULL, '$2y$10$dlnkoRflmT9oeKskHmuQ5.F9GwBr8vxMgG7DROf4VVuBLhSkyuLVi', '1998-07-08', 'eKwN8pFYDt4tlw1PuoZZXnTzdI08TfKi9WHFoL17gLXkvmt19mNEfdTAalNG', '2023-04-01 22:57:55', '2023-04-02 00:59:57', 'pending'),
(11, 'Yunish Adhikari', 'yun.adhikari@gmail.com', NULL, '$2y$10$PtX8hEZpHymCxbHuc15HsOe2UO3qM.YZlGalMP09xSJC/JGpWwzkS', '2001-07-02', NULL, '2023-04-08 05:23:25', '2023-04-08 05:23:25', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_post_id_foreign` (`post_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_categories`
--
ALTER TABLE `payment_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_payment_category_id_foreign` (`payment_category_id`),
  ADD KEY `posts_type_id_foreign` (`type_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`),
  ADD KEY `purchases_post_id_foreign` (`post_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment_categories`
--
ALTER TABLE `payment_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_payment_category_id_foreign` FOREIGN KEY (`payment_category_id`) REFERENCES `payment_categories` (`id`),
  ADD CONSTRAINT `posts_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
