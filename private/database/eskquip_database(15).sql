-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2026 at 08:37 AM
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
-- Database: `eskquip_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_messages`
--

CREATE TABLE `admin_messages` (
  `admin_messageId` int(11) NOT NULL,
  `admin_messageType` varchar(100) NOT NULL,
  `admin_messageSender` int(11) NOT NULL,
  `admin_messageContent` longtext NOT NULL,
  `admin_messageStatus` varchar(100) NOT NULL,
  `admin_messageTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_messageViewer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `contentId` int(11) NOT NULL,
  `contentTable` varchar(64) NOT NULL,
  `contentForeignId` int(11) NOT NULL,
  `contentStatus` varchar(64) NOT NULL,
  `contentPubDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`contentId`, `contentTable`, `contentForeignId`, `contentStatus`, `contentPubDate`) VALUES
(1, 'teacher_files', 66, 'Unpublished', '2026-02-11 20:57:19'),
(2, 'teacher_files', 67, 'Published', '2026-02-12 10:55:14'),
(3, 'writer_articles', 135, 'Unpublished', '2026-02-12 13:27:58'),
(4, 'writer_articles', 136, 'Unpublished', '2026-02-12 13:25:33'),
(5, 'writer_articles', 137, 'Draft', '0000-00-00 00:00:00'),
(6, 'teacher_files', 68, 'Unpublished', '2026-02-12 14:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `content_categories`
--

CREATE TABLE `content_categories` (
  `content_categoryId` int(11) NOT NULL,
  `content_categoryType` varchar(100) NOT NULL,
  `content_categoryName` varchar(100) NOT NULL,
  `content_categoryCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_categories`
--

INSERT INTO `content_categories` (`content_categoryId`, `content_categoryType`, `content_categoryName`, `content_categoryCreated`) VALUES
(1, 'Tool', 'Mathematics', '2026-02-08 07:13:01'),
(3, 'Tool', 'Science', '2026-02-08 07:30:29'),
(4, 'Teacher File', 'Syllabus', '2026-02-08 09:16:44'),
(5, 'Article', 'News', '2026-02-12 01:10:47'),
(6, 'Tool', 'okay', '2026-02-12 07:16:05'),
(7, 'Tool', 'another', '2026-02-12 07:19:01'),
(8, 'Tool', 'balita', '2026-02-12 07:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `content_performance`
--

CREATE TABLE `content_performance` (
  `content_viewId` int(11) NOT NULL,
  `content_viewTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `content_viewTable` varchar(100) NOT NULL,
  `content_viewForeignId` int(11) NOT NULL,
  `content_viewUserId` int(11) NOT NULL,
  `content_viewTime` int(11) NOT NULL,
  `content_viewLastUpdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_performance`
--

INSERT INTO `content_performance` (`content_viewId`, `content_viewTimestamp`, `content_viewTable`, `content_viewForeignId`, `content_viewUserId`, `content_viewTime`, `content_viewLastUpdate`) VALUES
(1, '2026-02-10 07:16:19', 'developer_tools', 1, 1, 8, '2026-02-11 15:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `content_versions`
--

CREATE TABLE `content_versions` (
  `content_versionId` int(11) NOT NULL,
  `content_versionTable` varchar(100) NOT NULL,
  `content_versionContentId` int(11) NOT NULL,
  `content_versionNumber` int(11) NOT NULL,
  `content_versionContent` longtext NOT NULL,
  `content_versionTimestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_versions`
--

INSERT INTO `content_versions` (`content_versionId`, `content_versionTable`, `content_versionContentId`, `content_versionNumber`, `content_versionContent`, `content_versionTimestamp`) VALUES
(5, 'writer_articles', 135, 1, '&lt;p&gt;This is a sample trhtru&lt;/p&gt;', '2026-02-12 01:13:23'),
(6, 'writer_articles', 135, 2, '&lt;br&gt;', '2026-02-12 01:22:57'),
(7, 'writer_articles', 135, 3, '&amp;lt;br&amp;gt; gjgn&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;;/kjhhiup&lt;/div&gt;', '2026-02-12 01:24:04'),
(8, 'writer_articles', 135, 4, 'ghfghhh', '2026-02-12 01:29:19'),
(9, 'writer_articles', 135, 5, 'ghfghhh&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;fdghgfhghgh&lt;/div&gt;', '2026-02-12 01:30:07'),
(10, 'writer_articles', 136, 1, 'jgiuyoyu&nbsp;<div>ggiuyiuyo</div>', '2026-02-12 01:34:36'),
(11, 'writer_articles', 136, 2, 'jgiuyoyu&nbsp;<div>ggiuyiuyo</div><div>!)^*&amp;T%$#%$#^^</div>', '2026-02-12 01:34:56'),
(12, 'writer_articles', 136, 3, '<br>', '2026-02-12 01:35:41'),
(13, 'writer_articles', 135, 6, 'dhgfhgfutu', '2026-02-12 01:35:52'),
(14, 'writer_articles', 135, 7, 'dhgfhgfutu<div>fggiiuyii</div>', '2026-02-12 01:36:00'),
(15, 'writer_articles', 136, 4, '<br>', '2026-02-12 01:36:59'),
(16, 'writer_articles', 135, 8, 'dhgfhgfutu<div>fggiiuyii</div><div>ggiiui</div>', '2026-02-12 01:57:28'),
(17, 'writer_articles', 135, 9, 'dhgfhgfutu<div>fggiiuyii</div><div>ggiiui</div>', '2026-02-12 02:45:25'),
(18, 'writer_articles', 135, 10, 'dhgfhgfutu<div>fggiiuyii</div><div>ggiiui</div>', '2026-02-12 02:45:27'),
(19, 'writer_articles', 135, 11, 'dhgfhgfutu<div>fggiiuyii</div><div>ggiiui</div>', '2026-02-12 02:57:15'),
(20, 'writer_articles', 136, 5, '<br>', '2026-02-12 03:04:31'),
(21, 'writer_articles', 136, 6, '<br>', '2026-02-12 03:04:32'),
(22, 'writer_articles', 136, 7, '<br>', '2026-02-12 03:04:34'),
(23, 'writer_articles', 136, 8, 'fdgdh', '2026-02-12 03:26:55'),
(24, 'writer_articles', 136, 9, 'sgrdghrdhht', '2026-02-12 03:29:25'),
(25, 'writer_articles', 136, 10, 'sgrdghrdhht', '2026-02-12 03:29:32'),
(26, 'writer_articles', 136, 11, 'fdgdh<div>dsggg</div><div>fdgghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</div><div>hdhd hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</div><div><br></div>', '2026-02-12 03:34:22'),
(27, 'writer_articles', 136, 12, '<br><div><br></div>', '2026-02-12 03:34:30'),
(28, 'writer_articles', 135, 12, '<div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">Malacañang said the Philippines will maintain a “firm but diplomatic” stance toward China amid the Chinese Embassy in Manila’s more confrontational approach to dealing with issues surrounding the South China Sea.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">Presidential Communications Office (PCO) Undersecretary Claire Castro said this after Beijing criticized a Senate resolution denouncing statements from the Chinese Embassy in Manila.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">In a press briefing, Castro said President Marcos respects freedom of expression and underscored that both sides may air their views on the issue.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">“Ang Pangulo po kasi ay rumirespeto sa kalayaan ng pamamahayag (The President respects freedom of expression),” she said Wednesday, Feb. 11.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">“Kung may kalayaan po ang China sa kanilang pamamahayag, ganoon din naman po ang sinuman na Pilipino at kung anuman din po ang inihayag ng Senado (If China has freedom in expressing its views, the same applies to Filipinos and whatever the Senate has expressed),” she added.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">Castro reiterated that the administration’s approach toward Beijing remains unchanged.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">“At muli, uulitin po natin ang posisyon ng Pangulo patungkol po sa relasyon sa China — firm but diplomatic po (And again, we reiterate the President’s position on relations with China — firm but diplomatic),” she said, noting that Malacañang does not view China’s condemnation of the Senate resolution as an attempt to silence lawmakers.</div>', '2026-02-12 03:37:33'),
(29, 'writer_articles', 135, 13, '<div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">Malacañang said the Philippines will maintain a “firm but diplomatic” stance toward China amid the Chinese Embassy in Manila’s more confrontational approach to dealing with issues surrounding the South China Sea.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\"><br></div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">Presidential Communications Office (PCO) Undersecretary Claire Castro said this after Beijing criticized a Senate resolution denouncing statements from the Chinese Embassy in Manila.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">In a press briefing, Castro said President Marcos respects freedom of expression and underscored that both sides may air their views on the issue.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">“Ang Pangulo po kasi ay rumirespeto sa kalayaan ng pamamahayag (The President respects freedom of expression),” she said Wednesday, Feb. 11.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">“Kung may kalayaan po ang China sa kanilang pamamahayag, ganoon din naman po ang sinuman na Pilipino at kung anuman din po ang inihayag ng Senado (If China has freedom in expressing its views, the same applies to Filipinos and whatever the Senate has expressed),” she added.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">Castro reiterated that the administration’s approach toward Beijing remains unchanged.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">“At muli, uulitin po natin ang posisyon ng Pangulo patungkol po sa relasyon sa China — firm but diplomatic po (And again, we reiterate the President’s position on relations with China — firm but diplomatic),” she said, noting that Malacañang does not view China’s condemnation of the Senate resolution as an attempt to silence lawmakers.</div>', '2026-02-12 04:06:38'),
(30, 'writer_articles', 137, 1, 'dsgdsg', '2026-02-12 05:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `developer_tools`
--

CREATE TABLE `developer_tools` (
  `developer_toolId` int(11) NOT NULL,
  `developer_toolTitle` longtext NOT NULL,
  `developer_toolCategory` varchar(64) NOT NULL,
  `developer_toolTags` longtext NOT NULL,
  `developer_toolDescription` longtext NOT NULL,
  `developer_toolImage` longtext NOT NULL,
  `developer_toolDeveloper` varchar(64) NOT NULL,
  `developer_toolCreatedDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `developer_toolPubDate` datetime NOT NULL,
  `developer_toolUpdateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `developer_toolContentVersion` int(11) NOT NULL DEFAULT 1,
  `developer_toolStatus` varchar(64) NOT NULL DEFAULT 'Draft',
  `developer_toolAccessType` varchar(100) NOT NULL DEFAULT 'Free Access',
  `developer_toolAmount` int(11) NOT NULL,
  `developer_toolSharedWith` longtext NOT NULL,
  `developer_toolSlug` longtext NOT NULL,
  `developer_toolContent` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developer_tools`
--

INSERT INTO `developer_tools` (`developer_toolId`, `developer_toolTitle`, `developer_toolCategory`, `developer_toolTags`, `developer_toolDescription`, `developer_toolImage`, `developer_toolDeveloper`, `developer_toolCreatedDate`, `developer_toolPubDate`, `developer_toolUpdateDate`, `developer_toolContentVersion`, `developer_toolStatus`, `developer_toolAccessType`, `developer_toolAmount`, `developer_toolSharedWith`, `developer_toolSlug`, `developer_toolContent`) VALUES
(1, 'dfhfh', 'Mathematics', 'fdgfdgf', 'fdhfdhfdh', '/uploads/tool-icons/1-20260210151456.jpeg', '1', '2026-02-10 06:43:05', '2026-02-10 14:52:49', '2026-02-10 16:11:39', 0, 'Published', 'Select', 0, 'dfhfh', '/public/tools/dfhfh/', '');

-- --------------------------------------------------------

--
-- Table structure for table `developer_tool_files`
--

CREATE TABLE `developer_tool_files` (
  `developer_tool_fileId` int(11) NOT NULL,
  `developer_tool_fileTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `developer_tool_fileToolId` int(11) NOT NULL,
  `developer_tool_fileLink` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developer_tool_files`
--

INSERT INTO `developer_tool_files` (`developer_tool_fileId`, `developer_tool_fileTimestamp`, `developer_tool_fileToolId`, `developer_tool_fileLink`) VALUES
(2, '2026-02-10 06:52:11', 1, '/public/tools/dfhfh/index.php');

-- --------------------------------------------------------

--
-- Table structure for table `editor_edits`
--

CREATE TABLE `editor_edits` (
  `editor_editId` int(11) NOT NULL,
  `editor_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `editor_writerArticleId` varchar(64) NOT NULL,
  `editor_userId` varchar(64) NOT NULL,
  `editor_comment` longtext NOT NULL,
  `editor_updateDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `editor_lastEditor` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `editor_edits`
--

INSERT INTO `editor_edits` (`editor_editId`, `editor_timestamp`, `editor_writerArticleId`, `editor_userId`, `editor_comment`, `editor_updateDate`, `editor_lastEditor`) VALUES
(4, '2025-10-06 06:46:41', '2', '', '', '2025-10-06 06:46:41', ''),
(5, '2025-10-06 07:00:22', '2', '1', '', '2025-10-06 07:00:22', ''),
(6, '2025-10-06 07:07:24', '3', '', '', '2025-10-06 07:07:24', ''),
(7, '2025-10-06 07:21:12', '4', '', '', '2025-10-06 07:21:12', ''),
(8, '2025-10-06 07:52:14', '2', '', '', '2025-10-06 07:52:14', ''),
(9, '2025-10-06 08:06:08', '4', '', '', '2025-10-06 08:06:08', ''),
(10, '2025-10-06 10:09:08', '4', '', '', '2025-10-06 10:09:08', ''),
(11, '2025-10-06 10:29:06', '4', '', '', '2025-10-06 10:29:06', '');

-- --------------------------------------------------------

--
-- Table structure for table `file_purchase`
--

CREATE TABLE `file_purchase` (
  `file_purchaseId` int(11) NOT NULL,
  `file_purchaseTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `file_purchaseFileId` int(11) NOT NULL,
  `file_purchaseFileTeacherId` int(11) NOT NULL,
  `file_purchaseAmount` int(11) NOT NULL,
  `file_purchaseRegistrantId` int(11) NOT NULL,
  `file_purchasePaymentChannel` varchar(64) NOT NULL,
  `file_purchaseReferenceNumber` varchar(64) NOT NULL,
  `file_purchaseStatus` varchar(64) NOT NULL,
  `file_purchaseProofLink` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_purchase`
--

INSERT INTO `file_purchase` (`file_purchaseId`, `file_purchaseTimestamp`, `file_purchaseFileId`, `file_purchaseFileTeacherId`, `file_purchaseAmount`, `file_purchaseRegistrantId`, `file_purchasePaymentChannel`, `file_purchaseReferenceNumber`, `file_purchaseStatus`, `file_purchaseProofLink`) VALUES
(1, '2025-12-07 06:18:06', 28, 18, 10, 1, 'GCASH', 'vsdsdgdsfsdg', 'Approved', '/uploads/file-purchase/proof/userid-1-20251207141806.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `other_registrations`
--

CREATE TABLE `other_registrations` (
  `otherId` int(11) NOT NULL,
  `otherTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `otherType` varchar(64) DEFAULT NULL,
  `otherUserId` int(11) NOT NULL,
  `otherResume` varchar(150) NOT NULL,
  `otherLicenseCertification` varchar(150) NOT NULL,
  `otherSample` varchar(150) NOT NULL,
  `otherAgreement` varchar(150) NOT NULL,
  `otherNotes` longtext NOT NULL,
  `otherStatus` varchar(64) NOT NULL DEFAULT 'Pending',
  `otherApprovalDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_registrations`
--

INSERT INTO `other_registrations` (`otherId`, `otherTimestamp`, `otherType`, `otherUserId`, `otherResume`, `otherLicenseCertification`, `otherSample`, `otherAgreement`, `otherNotes`, `otherStatus`, `otherApprovalDate`) VALUES
(1, '2025-12-06 02:29:31', 'Teacher', 18, '', '/uploads/registration/teacher/license-certification/Erfel  Printing-20251206102931.pdf', '', '/uploads/registration/teacher/agreement/Erfel  Printing-20251206102931.pdf', 'fdsgdsgsgsggg', 'Kept', '2026-01-07 10:14:30'),
(2, '2025-12-07 01:11:16', 'Writer', 18, '', '', 'https://facebook.com', '/uploads/registration/writer/agreement/Erfel  Printing-20251207091116.pdf', 'dsgffdh', 'Revoked', '2026-02-03 10:26:04'),
(7, '2026-01-04 05:19:15', 'Developer', 18, '', '', 'https://facebook.com', '/uploads/registration/developer/agreement/Erfel--Printing-20260104131915.pdf', '', 'Pending', NULL),
(12, '2026-01-06 05:32:30', 'Teacher', 1, '', '/uploads/registration/teacher/license-certification/Erfel-Contiga-Suriaga-20260106133230.pdf', '', '/uploads/registration/teacher/agreement/Erfel-Contiga-Suriaga-20260106133230.pdf', '', 'Kept', '2026-01-07 10:14:29'),
(14, '2026-01-06 05:36:14', 'Researches', 9, '', '', '', '/uploads/registration/researches/agreement/Example-High-School-20260106133614.pdf', '', 'Pending', NULL),
(15, '2026-02-03 02:25:07', 'Writer', 1, '', '', 'https://facebook.com', '/uploads/registration/writer/agreement/Erfel-Suriaga-20260203102507.pdf', '', 'Approved', '2026-02-03 10:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `promotionId` int(11) NOT NULL,
  `promotionTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `promotionNameCompany` longtext NOT NULL,
  `promotionTitle` longtext NOT NULL,
  `promotionTopics` longtext NOT NULL,
  `promotionDescription` longtext NOT NULL,
  `promotionType` varchar(64) NOT NULL,
  `promotionImage` longtext NOT NULL,
  `promotionLink` longtext NOT NULL,
  `promotionDuration` varchar(64) NOT NULL,
  `promotionAmount` int(11) NOT NULL,
  `promotionAgreement` longtext NOT NULL,
  `promotionDate` datetime NOT NULL,
  `promotionExpiry` datetime NOT NULL,
  `promotionStatus` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`promotionId`, `promotionTimestamp`, `promotionNameCompany`, `promotionTitle`, `promotionTopics`, `promotionDescription`, `promotionType`, `promotionImage`, `promotionLink`, `promotionDuration`, `promotionAmount`, `promotionAgreement`, `promotionDate`, `promotionExpiry`, `promotionStatus`) VALUES
(1, '2025-12-04 11:21:16', 'Erfel Suriaga', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Products', '/uploads/promotion/image/erfel_suriaga-20251204192116.jpeg', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20251204192116.pdf', '2025-12-04 20:47:49', '2025-12-08 20:47:49', 'Unpublished'),
(2, '2025-12-04 13:11:59', 'Erfel Suriaga', 'Promoting the EskQuip App', 'Education', 'sdfdssgdsg', 'Products', '/uploads/promotion/image/erfel_suriaga-20251204211159.jpeg', 'https://facebook.com', '5', 6, '/uploads/promotion/agreement/erfel_suriaga-20251204211159.pdf', '2025-12-04 21:12:02', '2025-12-09 21:12:02', 'Unpublished'),
(3, '2025-12-04 13:22:30', 'Erfelddgfdg', 'fhdh', 'fgdfggfgfg', 'ghghhdfh', 'Services', '/uploads/promotion/image/erfelddgfdg-20251204212230.jpeg', 'https://youtube.com', '6', 7, '/uploads/promotion/agreement/erfelddgfdg-20251204212230.pdf', '2025-12-04 21:22:33', '2025-12-10 21:22:33', 'Unpublished'),
(4, '2025-12-04 14:08:33', 'sdg', 'fgfg', 'fdhfgh', 'gfjgfjgfj', 'Products', '/uploads/promotion/image/sdg-20251204220833.jpeg', 'dgdg', '56', 7, '/uploads/promotion/agreement/sdg-20251204220833.pdf', '2025-12-04 22:08:35', '2026-01-29 22:08:35', 'Unpublished'),
(5, '2025-12-04 14:09:06', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20251204220906.jpeg', 'fdgfdg', '67', 67, '/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '2025-12-04 22:09:08', '2026-02-09 22:09:08', 'Unpublished'),
(6, '2026-01-07 13:31:55', 'Erfel Suriaga', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Products', '/uploads/promotion/image/erfel_suriaga-20260107213155.', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20260107213155.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(7, '2026-01-07 13:54:52', 'Erfelddgfdg', 'fhdh', 'fgdfggfgfg', 'ghghhdfh', 'Services', '/uploads/promotion/image/erfelddgfdg-20260107215452.', 'https://youtube.com', '6', 7, '/uploads/promotion/agreement/erfelddgfdg-20260107215452.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(8, '2026-01-07 13:54:53', 'Erfelddgfdg', 'fhdh', 'fgdfggfgfg', 'ghghhdfh', 'Services', '/uploads/promotion/image/erfelddgfdg-20260107215453.', 'https://youtube.com', '6', 7, '/uploads/promotion/agreement/erfelddgfdg-20260107215453.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(9, '2026-01-07 14:10:22', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/eskquip/private/uploads/promotion/image/dgfdg-20251204220906.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(10, '2026-01-07 14:10:26', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/eskquip/private/uploads/promotion/image/dgfdg-20251204220906.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(11, '2026-01-07 14:11:05', 'Erfelddgfdg', 'fhdh', 'fgdfggfgfg', 'ghghhdfh', 'Services', '/eskquip/private/uploads/promotion/image/erfelddgfdg-20260107215452.', 'https://youtube.com', '6', 7, '/eskquip/private/uploads/promotion/agreement/erfelddgfdg-20260107215452.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(12, '2026-01-07 14:14:23', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107221423.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(13, '2026-01-07 14:16:17', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107221617.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(14, '2026-01-07 14:17:08', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107221708.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '2026-01-08 13:17:11', '2026-01-08 13:17:11', 'Unpublished'),
(15, '2026-01-07 14:20:38', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107222038.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '2026-01-08 13:17:08', '2026-01-08 13:17:08', 'Unpublished'),
(16, '2026-01-07 14:29:58', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107222958.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(17, '2026-01-07 14:30:45', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107223045.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(18, '2026-01-07 14:31:13', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Services', '/eskquip/private/uploads/promotion/image/dgfdg-20260107223045.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/eskquip/private/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(19, '2026-01-07 14:31:21', 'Erfel', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Services', '/eskquip/private/eskquip/private/uploads/promotion/image/dgfdg-20260107223045.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/eskquip/private/eskquip/private/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '2026-01-08 13:15:56', '2026-01-08 13:15:56', 'Unpublished'),
(20, '2026-01-07 14:33:34', 'new', 'gfhgfh', 'gfhgfh', 'ghgfhg', 'Products', '/uploads/promotion/image/new-20260107223334.jpeg', 'fgffdhfdhfdhfdhhhh', '1', 56, '/uploads/promotion/agreement/new-20260107223334.jpeg', '2026-01-08 13:16:26', '2026-01-08 13:16:26', 'Unpublished'),
(21, '2026-01-07 14:33:57', 'new', 'gfhgfh', 'gfhgfh', 'ghgfhg', 'Products', '/eskquip/private/uploads/promotion/image/new-20260107223334.jpeg', 'fgffdhfdhfdhfdhhhh', '2', 56, '/eskquip/private/uploads/promotion/agreement/new-20260107223334.jpeg', '2026-01-08 13:17:06', '2026-03-16 13:17:06', 'Unpublished'),
(22, '2026-02-04 14:57:48', 'new', 'gfhgfh', 'gfhgfh', 'ghgfhg', 'Products', '/eskquip/private/eskquip/private/uploads/promotion/image/new-20260107223334.jpeg', 'fgffdhfdhfdhfdhhhh', '2', 56, '/eskquip/private/eskquip/private/uploads/promotion/agreement/new-20260107223334.jpeg', '2026-02-04 22:58:08', '2026-02-04 22:58:08', 'Unpublished');

-- --------------------------------------------------------

--
-- Table structure for table `registrant_activities`
--

CREATE TABLE `registrant_activities` (
  `registrant_activityId` int(11) NOT NULL,
  `registrant_activityTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `registrant_activityUserId` int(11) NOT NULL,
  `registrant_activityType` varchar(100) NOT NULL,
  `registrant_activityContent` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrant_activities`
--

INSERT INTO `registrant_activities` (`registrant_activityId`, `registrant_activityTimestamp`, `registrant_activityUserId`, `registrant_activityType`, `registrant_activityContent`) VALUES
(1, '2025-10-29 12:53:32', 1, '', 'Logged in'),
(2, '2025-10-29 12:59:22', 1, '', 'Logged out'),
(3, '2025-10-29 12:59:49', 1, '', 'Logged in'),
(4, '2025-10-29 12:59:56', 1, '', 'Logged out'),
(5, '2025-10-29 13:12:21', 1, '', 'Logged in'),
(6, '2025-10-29 13:13:48', 1, '', 'Logged out'),
(7, '2025-10-29 13:13:51', 1, '', 'Logged in'),
(8, '2025-10-29 13:16:44', 1, '', 'Logged out'),
(9, '2025-10-29 13:16:47', 1, '', 'Logged in'),
(10, '2025-10-30 03:52:16', 1, '', 'Logged out'),
(11, '2025-10-30 03:54:35', 16, '', 'Logged in'),
(12, '2025-10-30 03:56:21', 16, '', 'Logged out'),
(13, '2025-10-30 03:56:31', 1, '', 'Logged in'),
(14, '2025-10-30 04:33:24', 1, '', 'Logged out'),
(15, '2025-10-30 04:59:35', 1, '', 'Logged in'),
(16, '2025-10-30 05:04:31', 9, '', 'Logged in'),
(17, '2025-10-30 05:48:31', 9, '', 'Logged out'),
(18, '2025-10-30 05:48:37', 16, '', 'Logged in'),
(19, '2025-10-30 14:36:20', 16, '', 'Logged out'),
(20, '2025-10-30 14:36:36', 9, '', 'Logged out'),
(21, '2025-10-31 04:25:52', 1, '', 'Logged out'),
(22, '2025-10-31 04:30:21', 1, '', 'Logged in'),
(23, '2025-10-31 06:27:43', 1, '', 'Logged out'),
(24, '2025-10-31 07:15:08', 1, '', 'Logged in'),
(25, '2025-11-02 02:15:42', 1, '', 'Logged in'),
(26, '2025-11-02 05:08:55', 1, '', 'Logged in'),
(27, '2025-11-06 10:00:30', 1, '', 'Logged out'),
(28, '2025-11-06 10:02:47', 1, '', 'Logged in'),
(29, '2025-11-06 12:21:24', 1, '', 'Logged out'),
(30, '2025-11-06 12:26:40', 9, '', 'Logged in'),
(31, '2025-11-06 12:30:35', 9, '', 'Logged out'),
(32, '2025-11-06 12:31:29', 9, '', 'Logged in'),
(33, '2025-11-06 12:33:17', 1, '', 'Logged out'),
(34, '2025-11-06 13:01:38', 9, '', 'Logged out'),
(35, '2025-11-06 13:01:45', 9, '', 'Logged in'),
(36, '2025-11-06 13:08:37', 9, '', 'Logged out'),
(37, '2025-11-06 14:47:17', 9, '', 'Logged in'),
(38, '2025-11-06 14:47:24', 9, '', 'Logged out'),
(39, '2025-11-07 04:52:54', 1, '', 'Logged in'),
(40, '2025-11-07 05:06:01', 9, '', 'Logged in'),
(41, '2025-11-07 05:22:37', 1, '', 'Logged out'),
(42, '2025-11-07 05:31:24', 1, '', 'Logged in'),
(43, '2025-11-07 05:42:20', 9, '', 'Logged out'),
(44, '2025-11-07 05:53:35', 1, '', 'Logged out'),
(45, '2025-11-07 05:55:02', 15, '', 'Logged in'),
(46, '2025-11-07 08:28:16', 15, '', 'Logged out'),
(47, '2025-11-07 08:28:51', 1, '', 'Logged in'),
(48, '2025-11-07 08:30:13', 1, '', 'Logged out'),
(49, '2025-11-07 08:30:29', 15, '', 'Logged in'),
(50, '2025-11-07 08:40:18', 15, '', 'Logged out'),
(51, '2025-11-07 08:40:25', 1, '', 'Logged in'),
(52, '2025-11-07 08:42:38', 1, '', 'Logged out'),
(53, '2025-11-07 08:42:47', 15, '', 'Logged in'),
(54, '2025-11-07 11:24:35', 1, '', 'Logged in'),
(55, '2025-11-07 12:07:02', 1, '', 'Logged out'),
(56, '2025-11-07 12:07:09', 9, '', 'Logged out'),
(57, '2025-11-07 12:58:49', 15, '', 'Logged out'),
(58, '2025-11-07 12:59:00', 1, '', 'Logged in'),
(59, '2025-11-08 05:54:42', 9, '', 'Logged out'),
(60, '2025-11-08 11:10:00', 9, '', 'Logged in'),
(61, '2025-11-08 11:25:41', 9, '', 'Logged out'),
(62, '2025-11-08 11:26:33', 1, '', 'Logged out'),
(63, '2025-11-08 11:26:36', 1, '', 'Logged in'),
(64, '2025-11-08 11:33:20', 1, '', 'Logged out'),
(65, '2025-11-08 11:33:29', 1, '', 'Logged in'),
(66, '2025-11-08 11:33:51', 0, '', 'Logged out'),
(67, '2025-11-08 11:48:01', 1, '', 'Logged out'),
(68, '2025-11-08 11:49:03', 1, '', 'Logged in'),
(69, '2025-11-08 11:49:21', 1, '', 'Logged out'),
(70, '2025-11-08 11:49:32', 1, '', 'Logged in'),
(71, '2025-11-08 11:58:18', 1, '', 'Logged out'),
(72, '2025-11-08 11:58:39', 1, '', 'Logged in'),
(73, '2025-11-08 11:59:10', 1, '', 'Logged out'),
(74, '2025-11-08 11:59:46', 1, '', 'Logged in'),
(75, '2025-11-08 12:00:25', 1, '', 'Logged out'),
(76, '2025-11-08 12:00:35', 1, '', 'Logged in'),
(77, '2025-11-08 12:01:16', 1, '', 'Logged out'),
(78, '2025-11-08 12:04:47', 1, '', 'Logged in'),
(79, '2025-11-08 12:05:18', 1, '', 'Logged out'),
(80, '2025-11-08 12:06:53', 1, '', 'Logged in'),
(81, '2025-11-08 12:07:29', 1, '', 'Logged out'),
(82, '2025-11-08 12:09:51', 1, '', 'Logged in'),
(83, '2025-11-08 12:10:24', 1, '', 'Logged out'),
(84, '2025-11-08 12:10:47', 1, '', 'Logged in'),
(85, '2025-11-08 14:25:40', 9, '', 'Logged in'),
(86, '2025-11-08 14:26:16', 9, '', 'Logged out'),
(87, '2025-11-09 06:29:04', 9, '', 'Logged in'),
(88, '2025-11-10 05:56:41', 1, '', 'Logged out'),
(89, '2025-11-10 05:56:53', 15, '', 'Logged in'),
(90, '2025-11-10 06:01:56', 9, '', 'Logged out'),
(91, '2025-11-10 06:01:59', 9, '', 'Logged in'),
(92, '2025-11-10 06:04:37', 9, '', 'Logged out'),
(93, '2025-11-10 06:17:32', 9, '', 'Logged in'),
(94, '2025-11-10 06:29:39', 1, '', 'Logged in'),
(95, '2025-11-11 05:32:25', 1, '', 'Logged out'),
(96, '2025-11-11 05:32:29', 1, '', 'Logged in'),
(97, '2025-11-11 06:19:41', 9, '', 'Logged out'),
(98, '2025-11-11 06:19:45', 9, '', 'Logged in'),
(99, '2025-11-11 06:21:00', 1, '', 'Logged out'),
(100, '2025-11-11 06:21:11', 1, '', 'Logged in'),
(101, '2025-11-11 06:32:13', 9, '', 'Logged out'),
(102, '2025-11-11 06:33:06', 15, '', 'Logged out'),
(103, '2025-11-11 06:33:11', 15, '', 'Logged in'),
(104, '2025-11-11 06:35:01', 1, '', 'Logged out'),
(105, '2025-11-11 06:35:07', 1, '', 'Logged in'),
(106, '2025-11-11 06:40:00', 15, '', 'Logged out'),
(107, '2025-11-11 06:40:09', 9, '', 'Logged in'),
(108, '2025-11-11 06:45:17', 1, '', 'Logged out'),
(109, '2025-11-11 07:21:27', 0, '', 'Logged out'),
(110, '2025-11-11 07:55:12', 17, '', 'Logged in'),
(111, '2025-11-11 07:58:04', 17, '', 'Logged out'),
(112, '2025-11-11 07:58:12', 17, '', 'Logged in'),
(113, '2025-11-11 07:58:26', 17, '', 'Logged out'),
(114, '2025-11-11 08:13:47', 17, '', 'Logged in'),
(115, '2025-11-11 08:14:08', 17, '', 'Logged out'),
(116, '2025-11-11 08:14:20', 17, '', 'Logged in'),
(117, '2025-11-11 08:16:01', 17, '', 'Logged out'),
(118, '2025-11-11 08:16:34', 17, '', 'Logged in'),
(119, '2025-11-11 08:19:06', 17, '', 'Logged out'),
(120, '2025-11-11 08:19:13', 17, '', 'Logged in'),
(121, '2025-11-11 08:20:11', 17, '', 'Logged out'),
(122, '2025-11-11 08:22:31', 17, '', 'Logged in'),
(123, '2025-11-11 08:23:44', 17, '', 'Logged out'),
(124, '2025-11-11 08:23:56', 17, '', 'Logged in'),
(125, '2025-11-11 08:24:04', 17, '', 'Logged out'),
(126, '2025-11-11 08:31:38', 17, '', 'Logged in'),
(127, '2025-11-11 08:31:39', 17, '', 'Logged out'),
(128, '2025-11-11 08:33:10', 17, '', 'Logged in'),
(129, '2025-11-11 08:33:12', 17, '', 'Logged out'),
(130, '2025-11-11 08:36:21', 17, '', 'Logged in'),
(131, '2025-11-11 08:36:35', 17, '', 'Logged out'),
(132, '2025-11-11 08:37:39', 18, '', 'Logged in'),
(133, '2025-11-11 08:37:47', 18, '', 'Logged out'),
(134, '2025-11-11 12:46:31', 1, '', 'Logged in'),
(135, '2025-11-12 01:46:10', 1, '', 'Logged out'),
(136, '2025-11-12 02:03:08', 18, '', 'Logged in'),
(137, '2025-11-12 02:09:16', 18, '', 'Logged out'),
(138, '2025-11-12 02:09:22', 1, '', 'Logged in'),
(139, '2025-11-12 03:00:19', 1, '', 'Logged out'),
(140, '2025-11-12 03:00:29', 18, '', 'Logged in'),
(141, '2025-11-12 03:45:13', 18, '', 'Logged out'),
(142, '2025-11-12 03:45:19', 1, '', 'Logged in'),
(143, '2025-11-12 05:08:48', 1, '', 'Logged out'),
(144, '2025-11-12 05:08:56', 1, '', 'Logged in'),
(145, '2025-11-12 05:09:17', 1, '', 'Logged out'),
(146, '2025-11-12 05:09:27', 18, '', 'Logged in'),
(147, '2025-11-12 05:11:04', 18, '', 'Logged out'),
(148, '2025-11-12 05:11:10', 1, '', 'Logged in'),
(149, '2025-11-12 05:11:27', 1, '', 'Logged out'),
(150, '2025-11-12 05:11:33', 18, '', 'Logged in'),
(151, '2025-11-12 05:24:51', 18, '', 'Logged out'),
(152, '2025-11-12 05:25:04', 1, '', 'Logged in'),
(153, '2025-11-12 05:46:48', 1, '', 'Logged out'),
(154, '2025-11-12 05:47:04', 1, '', 'Logged in'),
(155, '2025-11-12 05:48:52', 18, '', 'Logged in'),
(156, '2025-11-12 06:37:35', 18, '', 'Logged out'),
(157, '2025-11-12 06:48:08', 18, '', 'Logged in'),
(158, '2025-11-12 06:54:28', 18, '', 'Logged out'),
(159, '2025-11-12 06:56:36', 18, '', 'Logged in'),
(160, '2025-11-12 12:32:19', 1, '', 'Logged out'),
(161, '2025-11-12 12:34:11', 1, '', 'Logged in'),
(162, '2025-11-13 01:55:38', 18, '', 'Logged out'),
(163, '2025-11-13 02:31:31', 1, '', 'Logged out'),
(164, '2025-11-13 02:31:46', 1, '', 'Logged in'),
(165, '2025-11-13 03:02:54', 18, '', 'Logged in'),
(166, '2025-11-13 05:04:42', 18, '', 'Logged out'),
(167, '2025-11-13 05:07:07', 1, '', 'Logged out'),
(168, '2025-11-13 05:08:05', 1, '', 'Logged in'),
(169, '2025-11-13 05:14:47', 0, '', 'Logged out'),
(170, '2025-11-13 05:16:06', 1, '', 'Logged out'),
(171, '2025-11-13 05:17:05', 1, '', 'Logged out'),
(172, '2025-11-13 05:17:13', 1, '', 'Logged in'),
(173, '2025-11-13 05:17:22', 0, '', 'Logged out'),
(174, '2025-11-13 05:19:11', 1, '', 'Logged out'),
(175, '2025-11-13 05:19:30', 1, '', 'Logged out'),
(176, '2025-11-13 05:19:37', 1, '', 'Logged in'),
(177, '2025-11-13 05:22:16', 0, '', 'Logged out'),
(178, '2025-11-13 05:22:38', 1, '', 'Logged out'),
(179, '2025-11-13 05:22:49', 1, '', 'Logged in'),
(180, '2025-11-13 05:22:58', 0, '', 'Logged out'),
(181, '2025-11-13 05:23:11', 1, '', 'Logged out'),
(182, '2025-11-13 05:23:25', 1, '', 'Logged in'),
(183, '2025-11-13 05:24:24', 0, '', 'Logged out'),
(184, '2025-11-13 05:26:56', 1, '', 'Logged out'),
(185, '2025-11-13 05:27:02', 1, '', 'Logged in'),
(186, '2025-11-13 05:27:35', 0, '', 'Logged out'),
(187, '2025-11-13 05:29:37', 1, '', 'Logged out'),
(188, '2025-11-13 05:29:45', 1, '', 'Logged in'),
(189, '2025-11-13 05:29:53', 1, '', 'Logged out'),
(190, '2025-11-13 05:30:05', 0, '', 'Logged out'),
(191, '2025-11-13 05:30:56', 1, '', 'Logged out'),
(192, '2025-11-13 05:31:03', 1, '', 'Logged in'),
(193, '2025-11-13 05:31:10', 1, '', 'Logged out'),
(194, '2025-11-13 05:31:33', 1, '', 'Logged in'),
(195, '2025-11-13 05:32:30', 1, '', 'Logged out'),
(196, '2025-11-13 05:34:21', 1, '', 'Logged in'),
(197, '2025-11-13 05:34:51', 1, '', 'Logged out'),
(198, '2025-11-13 05:36:52', 1, '', 'Logged in'),
(199, '2025-11-13 05:37:00', 1, '', 'Logged out'),
(200, '2025-11-13 05:39:35', 1, '', 'Logged in'),
(201, '2025-11-13 05:39:42', 1, '', 'Logged out'),
(202, '2025-11-13 05:42:04', 1, '', 'Logged in'),
(203, '2025-11-13 05:42:12', 1, '', 'Logged out'),
(204, '2025-11-13 05:42:22', 1, '', 'Logged in'),
(205, '2025-11-13 05:42:32', 1, '', 'Logged out'),
(206, '2025-11-13 05:52:17', 1, '', 'Logged in'),
(207, '2025-11-13 05:53:59', 1, '', 'Logged out'),
(208, '2025-11-13 05:57:03', 18, '', 'Logged in'),
(209, '2025-11-13 06:00:10', 1, '', 'Logged in'),
(210, '2025-11-13 06:00:56', 1, '', 'Logged out'),
(211, '2025-11-13 06:33:36', 18, '', 'Logged out'),
(212, '2025-11-13 09:07:01', 1, '', 'Logged in'),
(213, '2025-11-13 09:25:11', 1, '', 'Logged out'),
(214, '2025-11-13 09:43:21', 1, '', 'Logged in'),
(215, '2025-11-13 10:25:10', 18, '', 'Logged in'),
(216, '2025-11-13 11:05:49', 18, '', 'Logged out'),
(217, '2025-11-13 11:11:27', 18, '', 'Logged in'),
(218, '2025-11-13 11:13:54', 18, '', 'Logged out'),
(219, '2025-11-13 11:14:05', 18, '', 'Logged in'),
(220, '2025-11-13 11:17:25', 18, '', 'Logged out'),
(221, '2025-11-13 11:17:30', 1, '', 'Logged out'),
(222, '2025-11-13 11:19:11', 9, '', 'Logged out'),
(223, '2025-11-13 11:19:19', 9, '', 'Logged in'),
(224, '2025-11-13 11:21:11', 1, '', 'Logged in'),
(225, '2025-11-13 11:23:07', 1, '', 'Logged out'),
(226, '2025-11-13 11:25:05', 18, '', 'Logged in'),
(227, '2025-11-13 11:25:22', 18, '', 'Logged out'),
(228, '2025-11-13 11:25:30', 1, '', 'Logged in'),
(229, '2025-11-13 11:29:19', 1, '', 'Logged out'),
(230, '2025-11-13 11:29:39', 18, '', 'Logged in'),
(231, '2025-11-13 11:46:23', 9, '', 'Logged out'),
(232, '2025-11-13 11:46:38', 1, '', 'Logged in'),
(233, '2025-11-13 13:07:33', 18, '', 'Logged out'),
(234, '2025-11-13 13:07:45', 9, '', 'Logged in'),
(235, '2025-11-14 03:39:46', 1, '', 'Logged out'),
(236, '2025-11-14 03:40:14', 9, '', 'Logged out'),
(237, '2025-11-14 03:40:18', 9, '', 'Logged in'),
(238, '2025-11-14 03:40:27', 9, '', 'Logged out'),
(239, '2025-11-14 04:55:41', 9, '', 'Logged in'),
(240, '2025-11-14 05:36:05', 1, '', 'Logged in'),
(241, '2025-11-14 08:03:45', 1, '', 'Logged out'),
(242, '2025-11-14 09:22:32', 1, '', 'Logged in'),
(243, '2025-11-14 09:22:45', 9, '', 'Logged out'),
(244, '2025-11-14 09:27:54', 18, '', 'Logged in'),
(245, '2025-11-14 13:05:35', 1, '', 'Logged out'),
(246, '2025-11-15 03:31:23', 1, '', 'Logged in'),
(247, '2025-11-15 03:31:36', 1, '', 'Logged out'),
(248, '2025-11-15 05:41:12', 1, '', 'Logged in'),
(249, '2025-11-15 07:31:20', 1, '', 'Logged out'),
(250, '2025-11-15 07:32:52', 1, '', 'Logged in'),
(251, '2025-11-15 07:33:18', 1, '', 'Logged out'),
(252, '2025-11-15 07:43:37', 1, '', 'Logged in'),
(253, '2025-11-15 08:21:04', 18, '', 'Logged out'),
(254, '2025-11-15 08:21:24', 18, '', 'Logged in'),
(255, '2025-11-15 10:55:38', 18, '', 'Logged out'),
(256, '2025-11-15 10:55:42', 18, '', 'Logged in'),
(257, '2025-11-15 11:59:54', 18, '', 'Logged out'),
(258, '2025-11-15 11:59:57', 18, '', 'Logged in'),
(259, '2025-11-15 12:02:16', 18, '', 'Logged out'),
(260, '2025-11-15 12:22:01', 18, '', 'Logged in'),
(261, '2025-11-15 12:23:18', 18, '', 'Logged out'),
(262, '2025-11-15 12:25:18', 1, '', 'Logged out'),
(263, '2025-11-15 12:25:25', 1, '', 'Logged in'),
(264, '2025-11-15 14:08:46', 18, '', 'Logged in'),
(265, '2025-11-15 14:12:06', 18, '', 'Logged out'),
(266, '2025-11-15 14:12:15', 9, '', 'Logged in'),
(267, '2025-11-15 14:44:53', 9, '', 'Logged out'),
(268, '2025-11-16 00:30:15', 1, '', 'Logged out'),
(269, '2025-11-16 00:38:46', 1, '', 'Logged in'),
(270, '2025-11-16 08:34:56', 18, '', 'Logged in'),
(271, '2025-11-16 15:51:25', 1, '', 'Logged out'),
(272, '2025-11-17 01:37:29', 1, '', 'Logged in'),
(273, '2025-11-17 10:33:43', 1, '', 'Logged out'),
(274, '2025-11-17 10:35:32', 1, '', 'Logged in'),
(275, '2025-11-17 10:35:38', 1, '', 'Logged out'),
(276, '2025-11-17 10:36:39', 18, '', 'Logged out'),
(277, '2025-11-17 10:36:48', 18, '', 'Logged in'),
(278, '2025-11-17 10:38:33', 1, '', 'Logged in'),
(279, '2025-11-17 10:38:40', 1, '', 'Logged out'),
(280, '2025-11-17 10:53:25', 18, '', 'Logged out'),
(281, '2025-11-17 12:14:40', 1, '', 'Logged in'),
(282, '2025-11-17 13:19:00', 1, '', 'Logged out'),
(283, '2025-11-17 13:23:11', 1, '', 'Logged in'),
(284, '2025-11-17 15:21:48', 1, '', 'Logged out'),
(285, '2025-11-17 23:56:55', 1, '', 'Logged in'),
(286, '2025-11-17 23:57:03', 1, '', 'Logged out'),
(287, '2025-11-18 00:04:38', 1, '', 'Logged in'),
(288, '2025-11-18 00:09:23', 1, '', 'Logged out'),
(289, '2025-11-18 00:09:32', 18, '', 'Logged in'),
(290, '2025-11-18 00:09:51', 18, '', 'Logged out'),
(291, '2025-11-18 00:10:02', 1, '', 'Logged in'),
(292, '2025-11-18 02:59:16', 1, '', 'Logged out'),
(293, '2025-11-18 03:00:03', 1, '', 'Logged in'),
(294, '2025-11-18 03:40:00', 1, '', 'Logged out'),
(295, '2025-11-18 03:40:11', 9, '', 'Logged in'),
(296, '2025-11-18 03:56:09', 9, '', 'Logged out'),
(297, '2025-11-18 03:56:17', 1, '', 'Logged in'),
(298, '2025-11-18 12:47:12', 1, '', 'Logged out'),
(299, '2025-11-19 03:04:17', 1, '', 'Logged in'),
(300, '2025-11-19 03:22:21', 18, '', 'Logged in'),
(301, '2025-11-19 13:43:33', 1, '', 'Logged out'),
(302, '2025-11-19 13:44:19', 18, '', 'Logged out'),
(303, '2025-11-19 13:44:30', 18, '', 'Logged in'),
(304, '2025-11-19 14:07:27', 18, '', 'Logged out'),
(305, '2025-11-22 04:19:34', 1, '', 'Logged in'),
(306, '2025-11-22 04:21:00', 1, '', 'Logged out'),
(307, '2025-11-22 04:21:26', 1, '', 'Logged in'),
(308, '2025-11-22 04:54:41', 18, '', 'Logged in'),
(309, '2025-11-22 08:03:02', 1, '', 'Logged out'),
(310, '2025-11-22 08:03:36', 1, '', 'Logged in'),
(311, '2025-11-22 08:07:53', 18, '', 'Logged out'),
(312, '2025-11-22 09:07:22', 1, '', 'Logged out'),
(313, '2025-11-22 09:58:01', 1, '', 'Logged in'),
(314, '2025-11-24 07:33:11', 1, '', 'Logged out'),
(315, '2025-11-24 07:35:12', 1, '', 'Logged in'),
(316, '2025-11-24 13:11:11', 1, '', 'Logged out'),
(317, '2025-11-25 04:32:33', 1, '', 'Logged in'),
(318, '2025-11-25 05:07:06', 1, '', 'Logged out'),
(319, '2025-11-25 05:14:55', 1, '', 'Logged in'),
(320, '2025-11-25 05:14:58', 1, '', 'Logged out'),
(321, '2025-11-26 00:45:15', 1, '', 'Logged in'),
(322, '2025-11-26 01:33:27', 1, '', 'Logged out'),
(323, '2025-11-26 01:33:39', 1, '', 'Logged in'),
(324, '2025-11-26 02:52:54', 9, '', 'Logged in'),
(325, '2025-11-26 05:42:04', 1, '', 'Logged out'),
(326, '2025-11-26 05:42:11', 18, '', 'Logged in'),
(327, '2025-11-26 06:09:16', 18, '', 'Logged out'),
(328, '2025-11-26 06:16:51', 1, '', 'Logged in'),
(329, '2025-11-26 11:07:11', 1, '', 'Logged out'),
(330, '2025-11-26 11:07:52', 1, '', 'Logged in'),
(331, '2025-11-26 11:21:20', 1, '', 'Logged out'),
(332, '2025-11-26 11:21:27', 18, '', 'Logged in'),
(333, '2025-11-26 11:26:28', 18, '', 'Logged out'),
(334, '2025-11-26 11:38:39', 1, '', 'Logged in'),
(335, '2025-11-26 12:45:46', 1, '', 'Logged out'),
(336, '2025-11-26 12:51:18', 1, '', 'Logged in'),
(337, '2025-11-26 12:54:40', 1, '', 'Logged out'),
(338, '2025-11-27 01:39:00', 1, '', 'Logged in'),
(339, '2025-11-27 01:39:28', 1, '', 'Logged out'),
(340, '2025-11-27 01:41:08', 1, '', 'Logged in'),
(341, '2025-11-27 05:13:33', 1, '', 'Logged out'),
(342, '2025-11-27 05:14:58', 9, '', 'Logged out'),
(343, '2025-11-27 05:15:02', 9, '', 'Logged in'),
(344, '2025-11-27 05:15:51', 1, '', 'Logged in'),
(345, '2025-11-27 05:29:58', 1, '', 'Logged out'),
(346, '2025-11-27 05:30:11', 18, '', 'Logged in'),
(347, '2025-11-27 05:39:16', 18, '', 'Logged out'),
(348, '2025-11-27 05:39:23', 1, '', 'Logged in'),
(349, '2025-11-27 05:47:48', 1, '', 'Logged out'),
(350, '2025-11-27 05:47:54', 18, '', 'Logged in'),
(351, '2025-11-27 07:32:14', 18, '', 'Logged out'),
(352, '2025-11-27 07:32:21', 1, '', 'Logged in'),
(353, '2025-11-27 07:33:37', 1, '', 'Logged out'),
(354, '2025-11-27 07:33:43', 18, '', 'Logged in'),
(355, '2025-11-27 07:36:53', 18, '', 'Logged out'),
(356, '2025-11-27 07:37:02', 1, '', 'Logged in'),
(357, '2025-11-27 07:40:21', 1, '', 'Logged out'),
(358, '2025-11-27 07:40:27', 18, '', 'Logged in'),
(359, '2025-11-27 07:49:54', 18, '', 'Logged out'),
(360, '2025-11-27 07:50:07', 1, '', 'Logged in'),
(361, '2025-11-27 07:53:14', 1, '', 'Logged out'),
(362, '2025-11-27 08:04:35', 1, '', 'Logged in'),
(363, '2025-11-27 08:20:35', 1, '', 'Logged out'),
(364, '2025-11-27 09:22:18', 1, '', 'Logged in'),
(365, '2025-11-27 11:33:39', 1, '', 'Logged out'),
(366, '2025-11-27 13:38:24', 1, '', 'Logged in'),
(367, '2025-11-27 14:21:47', 1, '', 'Logged out'),
(368, '2025-11-27 14:33:46', 1, '', 'Logged in'),
(369, '2025-11-27 14:34:10', 1, '', 'Logged out'),
(370, '2025-11-28 03:34:28', 1, '', 'Logged in'),
(371, '2025-11-28 06:27:13', 1, '', 'Logged out'),
(372, '2025-11-28 06:41:50', 1, '', 'Logged in'),
(373, '2025-11-28 11:41:09', 1, '', 'Logged out'),
(374, '2025-11-28 11:42:03', 9, '', 'Logged out'),
(375, '2025-11-28 11:42:08', 9, '', 'Logged in'),
(376, '2025-11-28 11:52:33', 1, '', 'Logged in'),
(377, '2025-11-28 12:43:52', 9, '', 'Logged out'),
(378, '2025-11-28 12:44:00', 18, '', 'Logged in'),
(379, '2025-11-28 14:26:10', 18, '', 'Logged out'),
(380, '2025-11-28 14:26:20', 9, '', 'Logged in'),
(381, '2025-11-28 14:57:00', 1, '', 'Logged out'),
(382, '2025-11-30 11:31:09', 1, '', 'Logged in'),
(383, '2025-11-30 12:07:23', 1, '', 'Logged out'),
(384, '2025-11-30 12:07:40', 18, '', 'Logged in'),
(385, '2025-11-30 12:32:01', 18, '', 'Logged out'),
(386, '2025-11-30 12:32:11', 1, '', 'Logged in'),
(387, '2025-11-30 12:51:57', 1, '', 'Logged out'),
(388, '2025-11-30 12:52:08', 18, '', 'Logged in'),
(389, '2025-11-30 13:10:20', 18, '', 'Logged out'),
(390, '2025-11-30 13:10:55', 1, '', 'Logged in'),
(391, '2025-11-30 13:31:22', 1, '', 'Logged out'),
(392, '2025-11-30 13:31:30', 1, '', 'Logged in'),
(393, '2025-12-01 05:26:10', 1, '', 'Logged out'),
(394, '2025-12-01 06:23:04', 1, '', 'Logged in'),
(395, '2025-12-01 06:25:28', 1, '', 'Logged out'),
(396, '2025-12-01 06:25:33', 18, '', 'Logged in'),
(397, '2025-12-01 06:25:48', 18, '', 'Logged out'),
(398, '2025-12-01 06:26:44', 1, '', 'Logged in'),
(399, '2025-12-01 06:37:17', 1, '', 'Logged out'),
(400, '2025-12-01 06:37:23', 18, '', 'Logged in'),
(401, '2025-12-01 06:41:37', 18, '', 'Logged out'),
(402, '2025-12-01 07:33:03', 1, '', 'Logged in'),
(403, '2025-12-01 10:14:28', 1, '', 'Logged out'),
(404, '2025-12-01 10:14:37', 1, '', 'Logged in'),
(405, '2025-12-01 12:01:41', 1, '', 'Logged out'),
(406, '2025-12-01 12:04:06', 1, '', 'Logged in'),
(407, '2025-12-01 12:09:14', 1, '', 'Logged out'),
(408, '2025-12-01 12:09:22', 18, '', 'Logged in'),
(409, '2025-12-01 12:11:09', 1, '', 'Logged in'),
(410, '2025-12-01 12:21:27', 1, '', 'Logged out'),
(411, '2025-12-01 12:37:10', 18, '', 'Logged out'),
(412, '2025-12-01 12:39:34', 1, '', 'Logged in'),
(413, '2025-12-01 12:47:03', 1, '', 'Logged out'),
(414, '2025-12-01 13:08:41', 1, '', 'Logged in'),
(415, '2025-12-01 13:39:30', 1, '', 'Logged out'),
(416, '2025-12-01 13:40:41', 9, '', 'Logged out'),
(417, '2025-12-01 13:40:50', 9, '', 'Logged in'),
(418, '2025-12-01 13:47:45', 1, '', 'Logged in'),
(419, '2025-12-01 13:57:00', 1, '', 'Logged out'),
(420, '2025-12-01 14:04:21', 1, '', 'Logged in'),
(421, '2025-12-01 14:17:29', 1, '', 'Logged out'),
(422, '2025-12-01 14:17:50', 9, '', 'Logged out'),
(423, '2025-12-01 14:19:40', 18, '', 'Logged in'),
(424, '2025-12-01 14:28:03', 1, '', 'Logged in'),
(425, '2025-12-01 15:09:56', 18, '', 'Logged out'),
(426, '2025-12-01 15:10:00', 1, '', 'Logged out'),
(427, '2025-12-02 01:12:13', 1, '', 'Logged in'),
(428, '2025-12-02 02:56:43', 1, '', 'Logged out'),
(429, '2025-12-02 02:56:51', 18, '', 'Logged in'),
(430, '2025-12-02 08:57:15', 1, '', 'Logged in'),
(431, '2025-12-02 10:05:52', 1, '', 'Logged out'),
(432, '2025-12-02 10:05:55', 1, '', 'Logged in'),
(433, '2025-12-02 11:23:28', 1, '', 'Logged out'),
(434, '2025-12-02 11:25:02', 1, '', 'Logged out'),
(435, '2025-12-02 11:25:36', 18, '', 'Logged out'),
(436, '2025-12-02 11:25:41', 18, '', 'Logged in'),
(437, '2025-12-02 12:25:30', 18, '', 'Logged out'),
(438, '2025-12-02 12:25:36', 1, '', 'Logged in'),
(439, '2025-12-02 13:19:26', 1, '', 'Logged out'),
(440, '2025-12-02 13:55:58', 1, '', 'Logged in'),
(441, '2025-12-02 14:35:39', 9, '', 'Logged in'),
(442, '2025-12-02 14:37:29', 9, '', 'Logged out'),
(443, '2025-12-04 13:47:05', 1, '', 'Logged out'),
(444, '2025-12-04 14:07:15', 1, '', 'Logged in'),
(445, '2025-12-05 00:41:03', 1, '', 'Logged out'),
(446, '2025-12-05 00:41:12', 18, '', 'Logged in'),
(447, '2025-12-05 00:43:11', 18, '', 'Logged out'),
(448, '2025-12-05 00:43:19', 1, '', 'Logged in'),
(449, '2025-12-05 00:44:34', 1, '', 'Logged out'),
(450, '2025-12-05 00:44:45', 18, '', 'Logged in'),
(451, '2025-12-05 02:24:11', 9, '', 'Logged in'),
(452, '2025-12-05 02:39:41', 18, '', 'Logged out'),
(453, '2025-12-05 02:39:48', 1, '', 'Logged in'),
(454, '2025-12-05 04:35:49', 1, '', 'Logged out'),
(455, '2025-12-05 04:37:00', 1, '', 'Logged in'),
(456, '2025-12-05 07:00:36', 18, '', 'Logged in'),
(457, '2025-12-05 07:36:47', 18, '', 'Logged out'),
(458, '2025-12-05 07:38:19', 9, '', 'Logged out'),
(459, '2025-12-05 07:38:29', 9, '', 'Logged in'),
(460, '2025-12-05 07:40:34', 9, '', 'Logged out'),
(461, '2025-12-05 07:48:31', 9, '', 'Logged in'),
(462, '2025-12-05 07:58:30', 9, '', 'Logged out'),
(463, '2025-12-05 13:20:30', 18, '', 'Logged in'),
(464, '2025-12-05 13:30:08', 18, '', 'Logged out'),
(465, '2025-12-05 13:38:11', 9, '', 'Logged in'),
(466, '2025-12-05 14:40:38', 9, '', 'Logged out'),
(467, '2025-12-06 01:46:21', 18, '', 'Logged in'),
(468, '2025-12-06 03:01:17', 1, '', 'Logged out'),
(469, '2025-12-06 03:05:00', 1, '', 'Logged in'),
(470, '2025-12-06 03:05:36', 1, '', 'Logged out'),
(471, '2025-12-06 03:08:58', 1, '', 'Logged in'),
(472, '2025-12-06 04:45:44', 18, '', 'Logged out'),
(473, '2025-12-06 05:37:46', 1, '', 'Logged out'),
(474, '2025-12-06 05:41:15', 18, '', 'Logged in'),
(475, '2025-12-06 05:47:34', 18, '', 'Logged out'),
(476, '2025-12-06 05:48:25', 18, '', 'Logged in'),
(477, '2025-12-06 05:53:32', 18, '', 'Logged out'),
(478, '2025-12-06 05:53:51', 9, '', 'Logged in'),
(479, '2025-12-06 06:07:20', 9, '', 'Logged out'),
(480, '2025-12-06 06:07:28', 18, '', 'Logged in'),
(481, '2025-12-06 06:13:44', 18, '', 'Logged out'),
(482, '2025-12-06 06:38:52', 1, '', 'Logged in'),
(483, '2025-12-06 06:49:52', 1, '', 'Logged out'),
(484, '2025-12-06 06:49:58', 18, '', 'Logged in'),
(485, '2025-12-06 07:16:06', 18, '', 'Logged out'),
(486, '2025-12-06 07:16:18', 1, '', 'Logged in'),
(487, '2025-12-06 07:24:12', 9, '', 'Logged in'),
(488, '2025-12-06 13:50:40', 9, '', 'Logged out'),
(489, '2025-12-06 13:50:52', 18, '', 'Logged in'),
(490, '2025-12-07 00:55:40', 18, '', 'Logged out'),
(491, '2025-12-07 00:55:50', 9, '', 'Logged in'),
(492, '2025-12-07 01:00:28', 9, '', 'Logged out'),
(493, '2025-12-07 01:00:37', 18, '', 'Logged in'),
(494, '2025-12-07 02:04:21', 18, '', 'Logged out'),
(495, '2025-12-07 02:04:46', 9, '', 'Logged in'),
(496, '2025-12-07 02:28:20', 9, '', 'Logged out'),
(497, '2025-12-07 02:28:31', 18, '', 'Logged in'),
(498, '2025-12-07 03:38:36', 18, '', 'Logged out'),
(499, '2025-12-07 03:38:46', 9, '', 'Logged in'),
(500, '2025-12-07 04:01:39', 9, '', 'Logged out'),
(501, '2025-12-07 04:01:46', 18, '', 'Logged in'),
(502, '2025-12-07 04:16:04', 18, '', 'Logged out'),
(503, '2025-12-07 04:16:44', 9, '', 'Logged in'),
(504, '2025-12-07 04:22:56', 9, '', 'Logged out'),
(505, '2025-12-07 04:23:13', 18, '', 'Logged in'),
(506, '2025-12-07 04:31:09', 18, '', 'Logged out'),
(507, '2025-12-07 04:31:22', 9, '', 'Logged in'),
(508, '2025-12-07 04:34:33', 9, '', 'Logged out'),
(509, '2025-12-07 04:34:41', 18, '', 'Logged in'),
(510, '2025-12-07 04:49:13', 18, '', 'Logged out'),
(511, '2025-12-07 04:49:20', 9, '', 'Logged in'),
(512, '2025-12-07 04:53:59', 9, '', 'Logged out'),
(513, '2025-12-07 05:14:35', 9, '', 'Logged in'),
(514, '2025-12-07 05:44:17', 9, '', 'Logged out'),
(515, '2025-12-07 05:44:26', 18, '', 'Logged in'),
(516, '2025-12-07 13:27:36', 1, '', 'Logged out'),
(517, '2025-12-07 14:15:14', 1, '', 'Logged in'),
(518, '2025-12-07 14:22:46', 1, '', 'Logged out'),
(519, '2025-12-07 14:29:18', 1, '', 'Logged in'),
(520, '2025-12-07 15:57:43', 1, '', 'Logged out'),
(521, '2025-12-07 16:04:29', 1, '', 'Logged in'),
(522, '2025-12-08 09:24:52', 1, '', 'Logged out'),
(523, '2025-12-08 10:48:25', 1, '', 'Logged in'),
(524, '2025-12-09 01:32:24', 1, '', 'Logged out'),
(525, '2025-12-09 01:35:33', 1, '', 'Logged in'),
(526, '2025-12-09 02:07:20', 1, '', 'Logged out'),
(527, '2025-12-09 02:07:29', 1, '', 'Logged in'),
(528, '2025-12-09 04:20:20', 1, '', 'Logged out'),
(529, '2025-12-09 05:32:52', 1, '', 'Logged in'),
(530, '2025-12-10 02:14:34', 1, '', 'Logged out'),
(531, '2025-12-10 02:14:44', 1, '', 'Logged in'),
(532, '2025-12-10 06:25:22', 9, '', 'Logged in'),
(533, '2025-12-10 06:56:06', 9, '', 'Logged out'),
(534, '2025-12-10 06:56:49', 9, '', 'Logged in'),
(535, '2025-12-11 05:31:18', 18, '', 'Logged out'),
(536, '2025-12-11 05:31:30', 18, '', 'Logged in'),
(537, '2025-12-11 06:17:19', 18, '', 'Logged out'),
(538, '2025-12-11 06:18:27', 9, '', 'Logged out'),
(539, '2025-12-11 06:18:35', 9, '', 'Logged in'),
(540, '2025-12-11 08:23:22', 9, '', 'Logged out'),
(541, '2025-12-11 08:23:30', 9, '', 'Logged in'),
(542, '2025-12-11 11:24:17', 9, '', 'Logged out'),
(543, '2025-12-11 11:24:34', 9, '', 'Logged in'),
(544, '2025-12-11 11:28:58', 9, '', 'Logged out'),
(545, '2025-12-11 11:29:07', 9, '', 'Logged in'),
(546, '2025-12-11 11:30:42', 9, '', 'Logged out'),
(547, '2025-12-12 01:38:36', 1, '', 'Logged out'),
(548, '2025-12-12 01:40:15', 1, '', 'Logged in'),
(549, '2025-12-12 01:41:59', 1, '', 'Logged out'),
(550, '2025-12-12 01:42:07', 18, '', 'Logged in'),
(551, '2025-12-12 01:43:33', 18, '', 'Logged out'),
(552, '2025-12-12 11:48:37', 1, '', 'Logged in'),
(553, '2025-12-12 14:51:38', 1, '', 'Logged out'),
(554, '2025-12-12 14:53:06', 9, '', 'Logged in'),
(555, '2025-12-13 01:26:50', 1, '', 'Logged in'),
(556, '2025-12-13 02:20:10', 1, '', 'Logged out'),
(557, '2025-12-13 02:20:22', 18, '', 'Logged in'),
(558, '2025-12-13 06:06:48', 18, '', 'Logged out'),
(559, '2025-12-13 06:06:57', 1, '', 'Logged in'),
(560, '2025-12-13 06:27:47', 1, '', 'Logged out'),
(561, '2025-12-13 06:29:23', 1, '', 'Logged in'),
(562, '2025-12-13 06:29:35', 1, '', 'Logged out'),
(563, '2025-12-13 06:30:38', 1, '', 'Logged in'),
(564, '2025-12-13 06:30:49', 1, '', 'Logged out'),
(565, '2025-12-13 06:32:00', 1, '', 'Logged in'),
(566, '2025-12-13 06:35:54', 1, '', 'Logged out'),
(567, '2025-12-13 06:36:02', 1, '', 'Logged in'),
(568, '2025-12-13 06:57:35', 1, '', 'Logged out'),
(569, '2025-12-13 06:59:28', 9, '', 'Logged out'),
(570, '2025-12-13 06:59:41', 9, '', 'Logged in'),
(571, '2025-12-13 11:17:15', 1, '', 'Logged in'),
(572, '2025-12-14 08:05:01', 18, '', 'Logged in'),
(573, '2025-12-14 09:17:52', 1, '', 'Logged out'),
(574, '2025-12-14 09:18:03', 1, '', 'Logged in'),
(575, '2025-12-15 12:35:03', 9, '', 'Logged out'),
(576, '2025-12-15 12:35:14', 9, '', 'Logged in'),
(577, '2025-12-15 15:10:09', 9, '', 'Logged out'),
(578, '2025-12-15 15:10:17', 9, '', 'Logged in'),
(579, '2025-12-15 15:13:38', 1, '', 'Logged out'),
(580, '2025-12-16 02:41:03', 1, '', 'Logged in'),
(581, '2025-12-19 08:18:57', 1, '', 'Logged out'),
(582, '2025-12-19 09:29:46', 1, '', 'Logged in'),
(583, '2025-12-19 10:46:46', 9, '', 'Logged out'),
(584, '2025-12-19 10:46:59', 9, '', 'Logged in'),
(585, '2025-12-21 05:21:15', 1, '', 'Logged out'),
(586, '2025-12-21 11:01:19', 1, '', 'Logged in'),
(587, '2025-12-22 04:09:24', 1, '', 'Logged out'),
(588, '2025-12-22 04:13:29', 18, '', 'Logged out'),
(589, '2025-12-22 04:13:40', 18, '', 'Logged in'),
(590, '2025-12-22 05:00:10', 18, '', 'Logged out'),
(591, '2025-12-22 05:00:14', 18, '', 'Logged in'),
(592, '2025-12-22 07:59:16', 9, '', 'Logged out'),
(593, '2025-12-22 07:59:28', 9, '', 'Logged in'),
(594, '2025-12-22 12:54:41', 1, '', 'Logged in'),
(595, '2025-12-22 14:14:22', 1, '', 'Logged out'),
(596, '2025-12-23 03:43:01', 18, '', 'Logged out'),
(597, '2025-12-23 03:43:22', 1, '', 'Logged in'),
(598, '2025-12-23 04:01:11', 9, '', 'Logged out'),
(599, '2025-12-23 04:01:20', 9, '', 'Logged in'),
(600, '2025-12-23 04:02:04', 9, '', 'Logged out'),
(601, '2025-12-23 07:28:45', 1, '', 'Logged out'),
(602, '2025-12-23 07:28:49', 1, '', 'Logged in'),
(603, '2025-12-24 02:03:55', 9, '', 'Logged in'),
(604, '2025-12-26 02:29:26', 1, '', 'Logged out'),
(605, '2025-12-26 02:29:35', 1, '', 'Logged in'),
(606, '2025-12-26 03:51:38', 9, '', 'Logged out'),
(607, '2025-12-26 03:51:52', 9, '', 'Logged in'),
(608, '2025-12-26 13:33:36', 1, '', 'Logged out'),
(609, '2025-12-26 13:33:56', 1, '', 'Logged in'),
(610, '2025-12-27 02:11:40', 1, '', 'Logged out'),
(611, '2025-12-27 02:11:49', 1, '', 'Logged in'),
(612, '2025-12-27 02:29:09', 9, '', 'Logged out'),
(613, '2025-12-27 02:29:20', 9, '', 'Logged in'),
(614, '2025-12-27 07:56:58', 9, '', 'Logged out'),
(615, '2025-12-27 07:57:07', 9, '', 'Logged in'),
(616, '2025-12-27 07:59:39', 9, '', 'Logged out'),
(617, '2025-12-27 07:59:52', 9, '', 'Logged in'),
(618, '2025-12-29 13:08:53', 1, '', 'Logged out'),
(619, '2025-12-29 13:09:03', 1, '', 'Logged in'),
(620, '2025-12-30 06:06:47', 1, '', 'Logged out'),
(621, '2025-12-30 06:06:55', 1, '', 'Logged in'),
(622, '2025-12-30 06:48:08', 9, '', 'Logged out'),
(623, '2025-12-30 06:48:16', 9, '', 'Logged in'),
(624, '2026-01-03 04:57:19', 1, '', 'Logged out'),
(625, '2026-01-03 04:57:23', 1, '', 'Logged in'),
(626, '2026-01-03 11:16:01', 9, '', 'Logged out'),
(627, '2026-01-03 11:16:09', 18, '', 'Logged in'),
(628, '2026-01-04 02:14:23', 1, '', 'Logged out'),
(629, '2026-01-04 02:14:32', 1, '', 'Logged in'),
(630, '2026-01-04 03:23:18', 18, '', 'Logged out'),
(631, '2026-01-04 03:23:26', 18, '', 'Logged in'),
(632, '2026-01-04 04:49:44', 18, '', 'Logged out'),
(633, '2026-01-04 04:49:53', 18, '', 'Logged in'),
(634, '2026-01-04 08:33:09', 18, '', 'Logged out'),
(635, '2026-01-04 08:33:19', 9, '', 'Logged in'),
(636, '2026-01-06 04:10:57', 1, '', 'Logged out'),
(637, '2026-01-06 04:11:30', 1, '', 'Logged in'),
(638, '2026-01-06 04:13:01', 9, '', 'Logged out'),
(639, '2026-01-06 04:13:10', 9, '', 'Logged in'),
(640, '2026-01-06 08:08:52', 18, '', 'Logged in'),
(641, '2026-01-06 08:11:07', 18, '', 'Logged out'),
(642, '2026-01-06 08:11:23', 18, '', 'Logged in'),
(643, '2026-01-06 08:39:21', 1, '', 'Logged out'),
(644, '2026-01-06 08:39:28', 1, '', 'Logged in'),
(645, '2026-01-06 08:49:34', 18, '', 'Logged out'),
(646, '2026-01-07 01:10:37', 1, '', 'Logged out'),
(647, '2026-01-07 01:10:47', 1, '', 'Logged in'),
(648, '2026-01-07 12:10:30', 1, '', 'Logged out'),
(649, '2026-01-07 12:54:03', 1, '', 'Logged in'),
(650, '2026-01-08 03:59:49', 1, '', 'Logged out'),
(651, '2026-01-08 04:00:00', 1, '', 'Logged in'),
(652, '2026-01-08 05:35:06', 1, '', 'Logged out'),
(653, '2026-01-08 07:38:08', 21, '', 'Logged in'),
(654, '2026-01-08 07:40:08', 21, '', 'Logged out'),
(655, '2026-01-08 09:34:12', 1, '', 'Logged in'),
(656, '2026-01-08 09:34:35', 1, '', 'Logged out'),
(657, '2026-01-08 09:34:45', 1, '', 'Logged in'),
(658, '2026-01-08 09:35:36', 1, '', 'Logged out'),
(659, '2026-01-08 12:23:32', 1, '', 'Logged in'),
(660, '2026-01-08 12:25:01', 1, '', 'Logged out'),
(661, '2026-01-08 13:02:42', 1, '', 'Logged in'),
(662, '2026-01-08 13:03:46', 1, '', 'Logged out'),
(663, '2026-01-08 13:04:04', 1, '', 'Logged in'),
(664, '2026-01-08 13:05:26', 1, '', 'Logged out'),
(665, '2026-01-08 13:08:39', 1, '', 'Logged in'),
(666, '2026-01-08 13:08:52', 1, '', 'Logged out'),
(667, '2026-01-08 13:12:41', 1, '', 'Logged in'),
(668, '2026-01-08 13:33:11', 1, '', 'Logged out'),
(669, '2026-01-08 13:33:22', 1, '', 'Logged in'),
(670, '2026-01-08 13:37:26', 1, '', 'Logged out'),
(671, '2026-01-08 13:37:35', 1, '', 'Logged in'),
(672, '2026-01-08 13:40:08', 1, '', 'Logged out'),
(673, '2026-01-08 13:40:19', 1, '', 'Logged in'),
(674, '2026-01-08 13:42:46', 1, '', 'Logged out'),
(675, '2026-01-08 13:42:53', 1, '', 'Logged in'),
(676, '2026-01-08 13:43:04', 1, '', 'Logged out'),
(677, '2026-01-08 13:43:12', 1, '', 'Logged in'),
(678, '2026-01-08 13:48:19', 1, '', 'Logged out'),
(679, '2026-01-08 13:48:24', 1, '', 'Logged in'),
(680, '2026-01-08 13:48:31', 1, '', 'Logged out'),
(681, '2026-01-08 13:52:32', 1, '', 'Logged in'),
(682, '2026-01-08 13:55:35', 1, '', 'Logged out'),
(683, '2026-01-08 13:55:45', 1, '', 'Logged in'),
(684, '2026-01-08 13:58:05', 1, '', 'Logged out'),
(685, '2026-01-08 13:58:16', 1, '', 'Logged in'),
(686, '2026-01-08 13:58:21', 1, '', 'Logged out'),
(687, '2026-01-08 14:11:44', 1, '', 'Logged in'),
(688, '2026-01-08 14:11:50', 1, '', 'Logged out'),
(689, '2026-01-08 14:13:23', 1, '', 'Logged in'),
(690, '2026-01-08 14:14:11', 1, '', 'Logged out'),
(691, '2026-01-08 14:14:17', 1, '', 'Logged in'),
(692, '2026-01-08 14:18:53', 1, '', 'Logged out'),
(693, '2026-01-08 14:19:04', 1, '', 'Logged in'),
(694, '2026-01-08 14:20:57', 1, '', 'Logged out'),
(695, '2026-01-08 14:21:03', 1, '', 'Logged in'),
(696, '2026-01-08 14:22:30', 1, '', 'Logged out'),
(697, '2026-01-08 14:22:36', 1, '', 'Logged in'),
(698, '2026-01-08 14:22:38', 1, '', 'Logged out'),
(699, '2026-01-08 14:23:24', 1, '', 'Logged in'),
(700, '2026-01-08 14:25:56', 1, '', 'Logged out'),
(701, '2026-01-08 14:26:06', 1, '', 'Logged in'),
(702, '2026-01-08 14:28:31', 1, '', 'Logged out'),
(703, '2026-01-08 14:28:55', 1, '', 'Logged in'),
(704, '2026-01-08 14:29:05', 1, '', 'Logged out'),
(705, '2026-01-08 14:53:59', 1, '', 'Logged in'),
(706, '2026-01-08 14:57:34', 1, '', 'Logged out'),
(707, '2026-01-08 14:57:59', 1, '', 'Logged in'),
(708, '2026-01-08 14:58:26', 1, '', 'Logged out'),
(709, '2026-01-08 14:59:06', 1, '', 'Logged in'),
(710, '2026-01-09 02:23:38', 1, '', 'Logged out'),
(711, '2026-01-10 05:22:37', 1, '', 'Logged in'),
(712, '2026-01-10 05:22:45', 1, '', 'Logged out'),
(713, '2026-01-12 14:10:29', 1, '', 'Logged in'),
(714, '2026-01-25 11:48:26', 1, '', 'Logged out'),
(715, '2026-01-25 11:48:33', 1, '', 'Logged in'),
(716, '2026-02-02 02:34:12', 1, '', 'Logged out'),
(717, '2026-02-02 02:34:23', 1, '', 'Logged in'),
(718, '2026-02-02 13:41:00', 1, '', 'Logged out'),
(719, '2026-02-03 01:29:07', 1, '', 'Logged in'),
(720, '2026-02-03 03:56:28', 1, '', 'Logged out'),
(721, '2026-02-03 03:56:35', 1, '', 'Logged in'),
(722, '2026-02-03 12:30:32', 1, '', 'Logged out'),
(723, '2026-02-03 12:33:22', 9, '', 'Logged out'),
(724, '2026-02-03 12:38:23', 9, '', 'Logged in'),
(725, '2026-02-04 02:11:06', 1, '', 'Logged in'),
(726, '2026-02-04 07:08:22', 9, '', 'Logged out'),
(727, '2026-02-04 07:08:38', 9, '', 'Logged in'),
(728, '2026-02-04 15:07:01', 18, '', 'Logged in'),
(729, '2026-02-04 15:36:35', 1, '', 'Logged out'),
(730, '2026-02-05 01:10:04', 1, '', 'Logged in'),
(731, '2026-02-05 09:58:39', 1, '', 'Logged out'),
(732, '2026-02-05 09:58:48', 1, '', 'Logged in'),
(733, '2026-02-05 10:32:10', 1, '', 'Logged out'),
(734, '2026-02-05 10:32:17', 1, '', 'Logged in'),
(735, '2026-02-05 15:38:53', 1, '', 'Logged out'),
(736, '2026-02-06 01:40:09', 1, '', 'Logged in'),
(737, '2026-02-06 03:16:48', 1, '', 'Logged out'),
(738, '2026-02-06 03:16:55', 1, '', 'Logged out'),
(739, '2026-02-06 03:17:47', 1, '', 'Logged in'),
(740, '2026-02-06 03:17:57', 1, '', 'Logged out'),
(741, '2026-02-06 03:18:13', 1, '', 'Logged in'),
(742, '2026-02-06 03:19:32', 1, '', 'Logged out'),
(743, '2026-02-06 03:19:45', 1, '', 'Logged in'),
(744, '2026-02-06 03:21:56', 1, '', 'Logged out'),
(745, '2026-02-06 03:22:09', 1, '', 'Logged in'),
(746, '2026-02-06 03:26:13', 1, '', 'Logged out'),
(747, '2026-02-06 03:30:01', 1, '', 'Logged in'),
(748, '2026-02-06 03:30:06', 1, '', 'Logged out'),
(749, '2026-02-06 03:30:15', 1, '', 'Logged in'),
(750, '2026-02-06 03:34:31', 1, '', 'Logged out'),
(751, '2026-02-06 03:34:42', 1, '', 'Logged in'),
(752, '2026-02-06 03:37:37', 1, '', 'Logged out'),
(753, '2026-02-06 03:37:52', 1, '', 'Logged in'),
(754, '2026-02-06 03:38:06', 1, '', 'Logged out'),
(755, '2026-02-06 03:38:47', 1, '', 'Logged in'),
(756, '2026-02-06 03:38:53', 1, '', 'Logged out'),
(757, '2026-02-06 03:38:59', 1, '', 'Logged in'),
(758, '2026-02-07 00:39:26', 1, '', 'Logged out'),
(759, '2026-02-07 00:39:33', 1, '', 'Logged in'),
(760, '2026-02-07 03:22:07', 1, '', 'Logged out'),
(761, '2026-02-07 03:22:16', 1, '', 'Logged in'),
(762, '2026-02-07 03:22:16', 1, '', 'Logged out'),
(763, '2026-02-07 03:24:34', 0, '', 'Logged out'),
(764, '2026-02-07 03:24:41', 1, '', 'Logged in'),
(765, '2026-02-07 03:24:41', 1, '', 'Logged out'),
(766, '2026-02-07 03:25:08', 1, '', 'Logged in'),
(767, '2026-02-07 03:25:08', 1, '', 'Logged out'),
(768, '2026-02-07 03:27:50', 1, '', 'Logged in'),
(769, '2026-02-07 03:29:11', 1, '', 'Logged out'),
(770, '2026-02-07 03:29:31', 1, '', 'Logged in'),
(771, '2026-02-07 04:39:39', 1, '', 'Logged out'),
(772, '2026-02-07 04:58:31', 1, '', 'Logged in'),
(773, '2026-02-07 05:21:06', 1, '', 'Logged out'),
(774, '2026-02-07 05:23:15', 1, '', 'Logged in'),
(775, '2026-02-07 05:23:18', 1, '', 'Logged out'),
(776, '2026-02-07 05:25:17', 1, '', 'Logged in'),
(777, '2026-02-07 06:51:52', 1, '', 'Logged out'),
(778, '2026-02-07 06:51:56', 1, '', 'Logged in'),
(779, '2026-02-07 08:19:39', 1, '', 'Logged out'),
(780, '2026-02-07 08:24:46', 1, '', 'Logged in'),
(781, '2026-02-07 12:44:51', 1, '', 'Logged out'),
(782, '2026-02-07 12:45:00', 1, '', 'Logged in'),
(783, '2026-02-07 14:45:55', 1, '', 'Logged out'),
(784, '2026-02-07 14:46:46', 18, '', 'Logged out'),
(785, '2026-02-07 14:46:50', 18, '', 'Logged in'),
(786, '2026-02-07 14:50:45', 18, '', 'Logged out'),
(787, '2026-02-07 14:50:53', 1, '', 'Logged in'),
(788, '2026-02-08 03:00:19', 1, '', 'Logged out'),
(789, '2026-02-08 03:00:22', 1, '', 'Logged in'),
(790, '2026-02-08 06:39:06', 9, '', 'Logged out'),
(791, '2026-02-08 06:39:21', 9, '', 'Logged in'),
(792, '2026-02-08 11:47:02', 9, '', 'Logged out'),
(793, '2026-02-08 11:47:12', 9, '', 'Logged in'),
(794, '2026-02-08 11:48:50', 1, '', 'Logged out'),
(795, '2026-02-08 11:48:54', 9, '', 'Logged out'),
(796, '2026-02-08 11:49:05', 9, '', 'Logged in'),
(797, '2026-02-08 11:52:46', 1, '', 'Logged in'),
(798, '2026-02-08 16:04:08', 9, '', 'Logged out'),
(799, '2026-02-08 16:04:16', 9, '', 'Logged in'),
(800, '2026-02-09 01:14:07', 9, '', 'Logged out'),
(801, '2026-02-09 01:14:38', 1, '', 'Logged out'),
(802, '2026-02-09 01:14:46', 1, '', 'Logged in'),
(803, '2026-02-09 01:20:34', 1, '', 'Logged out'),
(804, '2026-02-09 01:20:46', 9, '', 'Logged in'),
(805, '2026-02-09 01:22:34', 1, '', 'Logged in'),
(806, '2026-02-09 14:48:03', 1, '', 'Logged out'),
(807, '2026-02-09 14:48:20', 1, '', 'Logged in'),
(808, '2026-02-09 15:06:13', 1, '', 'Logged out'),
(809, '2026-02-09 15:06:22', 1, '', 'Logged in'),
(810, '2026-02-09 15:17:35', 9, '', 'Logged out'),
(811, '2026-02-09 15:17:43', 9, '', 'Logged in'),
(812, '2026-02-09 15:21:37', 1, '', 'Logged out'),
(813, '2026-02-09 15:21:45', 18, '', 'Logged in'),
(814, '2026-02-10 01:44:05', 1, '', 'Logged in'),
(815, '2026-02-10 06:12:37', 1, '', 'Logged out'),
(816, '2026-02-10 06:12:44', 1, '', 'Logged in'),
(817, '2026-02-10 12:56:01', 1, '', 'Logged out'),
(818, '2026-02-10 12:56:09', 1, '', 'Logged in'),
(819, '2026-02-11 08:57:49', 1, '', 'Logged out'),
(820, '2026-02-11 08:57:57', 1, '', 'Logged in'),
(821, '2026-02-12 01:05:51', 1, '', 'Logged out'),
(822, '2026-02-12 01:05:59', 1, '', 'Logged in'),
(823, '2026-02-12 05:40:38', 1, '', 'Logged out'),
(824, '2026-02-12 05:41:34', 18, '', 'Logged out'),
(825, '2026-02-12 05:41:40', 18, '', 'Logged in'),
(826, '2026-02-12 05:42:09', 1, '', 'Logged in'),
(827, '2026-02-12 06:06:59', 1, '', 'Logged out'),
(828, '2026-02-12 06:07:01', 18, '', 'Logged out'),
(829, '2026-02-12 06:07:08', 1, '', 'Logged in'),
(830, '2026-02-12 06:56:35', 18, '', 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `registrant_subscriptions`
--

CREATE TABLE `registrant_subscriptions` (
  `registrant_subscriptionId` int(11) NOT NULL,
  `registrant_subscriptionUserId` int(11) NOT NULL,
  `registrant_subscriptionUserFullName` varchar(64) NOT NULL,
  `registrant_subscriptionType` varchar(64) NOT NULL,
  `registrant_subscriptionDuration` varchar(2) NOT NULL DEFAULT '1',
  `registrant_subscriptionTotal` int(11) NOT NULL,
  `registrant_subscriptionPaymentOption` varchar(64) NOT NULL,
  `registrant_subscriptionSenderName` varchar(250) NOT NULL,
  `registrant_subscriptionSenderAccountNumber` varchar(64) NOT NULL,
  `registrant_subscriptionRefNumber` varchar(64) NOT NULL,
  `registrant_subscriptionProofOfPayment` varchar(100) NOT NULL,
  `registrant_subscriptionTimestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `registrant_subscriptionStatus` varchar(64) NOT NULL DEFAULT 'Pending',
  `registrant_subscriptionDate` datetime DEFAULT NULL,
  `registrant_subscriptionExpiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrant_subscriptions`
--

INSERT INTO `registrant_subscriptions` (`registrant_subscriptionId`, `registrant_subscriptionUserId`, `registrant_subscriptionUserFullName`, `registrant_subscriptionType`, `registrant_subscriptionDuration`, `registrant_subscriptionTotal`, `registrant_subscriptionPaymentOption`, `registrant_subscriptionSenderName`, `registrant_subscriptionSenderAccountNumber`, `registrant_subscriptionRefNumber`, `registrant_subscriptionProofOfPayment`, `registrant_subscriptionTimestamp`, `registrant_subscriptionStatus`, `registrant_subscriptionDate`, `registrant_subscriptionExpiry`) VALUES
(1, 1, '', 'Tools', '4', 276, 'GCASH', '', '', 'fdgfdgfg', '/uploads/subscription/proof/userid-1-20260107110522.jpeg', '2026-01-07 11:05:22', 'Approved', '2026-01-07 11:48:58', '2026-05-07 11:48:58'),
(2, 1, '', 'Seller', '7', 700, 'GCASH', '', '', 'fgfdgfdhgfdhdfhfdhfdhdfhfdhffgfh', '/uploads/subscription/proof/userid-1-20260107115340.jpeg', '2026-01-07 11:53:40', 'Approved', '2026-01-07 11:54:02', '2026-08-05 11:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `registrantId` int(11) NOT NULL,
  `registrantCode` varchar(64) NOT NULL,
  `registrantFirstName` varchar(256) NOT NULL,
  `registrantMiddleName` varchar(256) NOT NULL,
  `registrantLastName` varchar(256) NOT NULL,
  `registrantAccountName` varchar(100) NOT NULL,
  `registrantDescription` longtext NOT NULL,
  `registrantAccountType` varchar(64) NOT NULL,
  `registrantProfilePictureStatus` int(11) DEFAULT 1,
  `registrantProfilePictureLink` varchar(100) NOT NULL,
  `registrantCoverPhotoLink` varchar(100) NOT NULL,
  `registrantBirthdate` date NOT NULL,
  `registrantGender` varchar(64) NOT NULL,
  `registrantCivilStatus` varchar(64) NOT NULL,
  `registrantAddressStreet` varchar(100) NOT NULL,
  `registrantAddressBarangay` varchar(100) NOT NULL,
  `registrantAddressCity` varchar(100) NOT NULL,
  `registrantAddressProvince` varchar(100) NOT NULL,
  `registrantAddressRegion` varchar(100) NOT NULL,
  `registrantAddressCountry` varchar(100) NOT NULL,
  `registrantAddressZipCode` varchar(64) NOT NULL,
  `registrantEducationalAttainment` varchar(64) NOT NULL,
  `registrantSchool` varchar(100) NOT NULL,
  `registrantOccupation` varchar(100) NOT NULL,
  `registrantEmailAddress` varchar(64) NOT NULL,
  `registrantMobileNumber` varchar(64) NOT NULL,
  `registrantUsername` varchar(100) NOT NULL,
  `registrantPassword` longtext NOT NULL,
  `registrantConfirmationCode` varchar(64) NOT NULL,
  `registrantBasicAccount` varchar(64) NOT NULL,
  `registrantTeacherAccount` varchar(64) NOT NULL,
  `registrantWriterAccount` varchar(64) NOT NULL,
  `registrantEditorAccount` varchar(64) NOT NULL,
  `registrantSiteManagerAccount` varchar(64) NOT NULL,
  `registrantDataAnalystAccount` varchar(64) NOT NULL,
  `registrantDeveloperAccount` varchar(64) NOT NULL,
  `registrantFunderAccount` varchar(64) NOT NULL,
  `registrantResearchesAccount` varchar(64) NOT NULL,
  `registrantVerificationStatus` varchar(64) NOT NULL DEFAULT 'Unverified',
  `registrantStatus` varchar(64) NOT NULL DEFAULT 'No Ban',
  `registrantCreatedAt` datetime NOT NULL,
  `resetTokenHash` varchar(64) NOT NULL,
  `resetTokenHashExpiration` datetime NOT NULL,
  `registrantPaymentChannel` varchar(64) NOT NULL,
  `registrantBankAccountName` varchar(150) NOT NULL,
  `registrantBankAccountNumber` varchar(64) NOT NULL,
  `registrantReviewSchedules` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`registrantId`, `registrantCode`, `registrantFirstName`, `registrantMiddleName`, `registrantLastName`, `registrantAccountName`, `registrantDescription`, `registrantAccountType`, `registrantProfilePictureStatus`, `registrantProfilePictureLink`, `registrantCoverPhotoLink`, `registrantBirthdate`, `registrantGender`, `registrantCivilStatus`, `registrantAddressStreet`, `registrantAddressBarangay`, `registrantAddressCity`, `registrantAddressProvince`, `registrantAddressRegion`, `registrantAddressCountry`, `registrantAddressZipCode`, `registrantEducationalAttainment`, `registrantSchool`, `registrantOccupation`, `registrantEmailAddress`, `registrantMobileNumber`, `registrantUsername`, `registrantPassword`, `registrantConfirmationCode`, `registrantBasicAccount`, `registrantTeacherAccount`, `registrantWriterAccount`, `registrantEditorAccount`, `registrantSiteManagerAccount`, `registrantDataAnalystAccount`, `registrantDeveloperAccount`, `registrantFunderAccount`, `registrantResearchesAccount`, `registrantVerificationStatus`, `registrantStatus`, `registrantCreatedAt`, `resetTokenHash`, `resetTokenHashExpiration`, `registrantPaymentChannel`, `registrantBankAccountName`, `registrantBankAccountNumber`, `registrantReviewSchedules`) VALUES
(1, '25000000001', 'Erfel', '', 'Suriaga', 'Erfel Suriaga', 'Erfel Suriaga is a licensed professional teacher who can program educational apps at the same time...hhhggg', 'Personal', 0, '/uploads/profile-pictures/Erfel_Suriaga-20260207111229.jpeg', '/uploads/cover-photos/Erfel_Suriaga-20260207111240.jpeg', '1997-04-27', 'Male', 'Single', 'Prk Kalubihan', 'DAGA', 'CADIZ CITY', 'NEGROS OCCIDENTAL', 'NIR', 'Philippines', '', 'with Doctorate Degree', 'PNU Visayas', 'Teacher', 'suriagaerfel@gmail.com', '09942762632', 'erfelsuriaga', '$2y$10$ezmlHZAaNE4GHvIvweWVhOg1UFqQaSWqy5XJuCVe5meF9uW1Y7Q9.', '', 'Basic User', 'Teacher', 'Writer', 'Editor', 'Site Manager', 'Data Analyst', 'Developer', 'Funder', '', 'Verified', 'Kept', '2025-10-08 14:24:42', 'ef918e519669c97e64b71908247d955c03e65b2494264e8f27fdd28334bde45f', '2026-01-08 23:01:02', 'landbank', 'Erfel Suriaga', '09942761634', 'Monday-Friday(8am -9am)'),
(9, '25000000009', '', '', '', 'Holy High School', 'HIA is a catholic school that commits itself to guide young boys and girls into a search of a true and authentic education which recognizes the greatness of God and the nothingness of man.', 'School', 1, '/uploads/profile-pictures/Holy_High_School-20260209232538.jpeg', '/uploads/cover-photos/Holy_Infant_Academy-20251115223950.jpeg', '0000-00-00', '', '', '', 'CAPANICKIAN NORTE', 'ALLACAPAN', 'CAGAYAN', 'REGION II', 'Philippines', '', '', '', '', 'sirversafel@gmail.com', '09942762632', 'sirversafel', '$2y$10$EY5ISxLZDiTZ/xoEcBnQM.iSLhhQl/4QyaiMlQgjZuBusdBkzX1KW', '', 'College or University', '', '', '', '', '', '', '', 'Researches', 'Verified', 'Kept', '2025-10-18 11:50:01', '', '0000-00-00 00:00:00', '', '', '', ''),
(16, '25000000016', 'Erfiaga', '', 'Publishing', 'Erfiaga Publishing', '', 'Personal', 1, '', '', '2025-10-15', 'Hide Gender', '', '', '', '', '', '', '', '', '', '', '', 'erfiagaprintsandbooks@gmail.com', '', 'erfiaga', '$2y$10$YiTGGjQ30rKhWRG7iOfWM.Oj5xua63HL74cTaqHgma2.sEya9yfSi', '', 'Basic User', '', '', '', '', '', '', '', '', 'Verified', 'Kept', '2025-10-30 11:53:47', '', '0000-00-00 00:00:00', '', '', '', ''),
(18, '', 'Erfel', '', 'Printing', 'Erfel Printing', '', 'Personal', 1, '/uploads/profile-pictures/Erfel__Printing-20251223100004.jpeg', '/uploads/cover-photos/Erfel__Printing-20251223103151.jpeg', '2025-11-18', 'Male', '', 'dsgdgg', 'DURIPES', 'BACARRA', 'ILOCOS NORTE', 'REGION I', 'Philippines', '', '', 'PNU', 'Teacher', 'erfelprintingservices@gmail.com', '09942762632', 'eps', '$2y$10$I.d83QSfQ/LX5RJkvcG56OYuAToGU17g82TT5GLqpKGBhlqvQEKiC', '', 'Basic User', 'Teacher', '', 'Editor', '', '', '', '', '', 'Verified', 'Kept', '2025-11-11 16:37:14', '7e87a4ba6af4acb315c171675730123bc1fabcb9a776e6536024f9ea1867bce7', '2026-01-06 17:23:12', 'GCASH', 'Erfel Suriaga', '09942762632', 'Mon-Fri'),
(40, '', 'na', '', 'na', 'Sariksyon', '', 'School', 1, '', '', '0000-00-00', 'na', '', '', '', '', '', '', '', '', '', '', '', 'sariksyon@gmail.com', '', 'sariksyon', '$2y$10$4T1LkuUwqCapHT0m3NMQeONwkqWpHHgtDSeH7AmfK6Zxo3.shkJ.y', '', 'Junior High School', '', '', '', '', '', '', '', '', 'Unverified', 'No Ban', '2026-01-08 20:38:18', '', '0000-00-00 00:00:00', '', '', '', ''),
(46, '', 'Noy', '', 'Treyu', 'Noy Treyu', '', 'Personal', 1, '', '', '2026-02-19', 'Male', '', '', '', '', '', '', '', '', '', '', '', 'noytrebyu@gmail.com', '', 'noytrebyu', '$2y$10$EKBe/qfwrQbZ1tzyYai0K.uRedDUzaT9QI88tVbZK/cBZKaLbG6Cu', '', 'Basic User', '', '', '', '', '', '', '', '', 'Unverified', 'No Ban', '2026-02-07 14:48:09', '', '0000-00-00 00:00:00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `school_researches`
--

CREATE TABLE `school_researches` (
  `school_researchId` int(11) NOT NULL,
  `school_researchTitle` longtext NOT NULL,
  `school_researchSlug` longtext NOT NULL,
  `school_researchCategory` varchar(64) NOT NULL,
  `school_researchTags` longtext NOT NULL,
  `school_researchAccessType` varchar(100) DEFAULT NULL,
  `school_researchSharedWith` longtext NOT NULL,
  `school_researchAbstract` longtext NOT NULL,
  `school_researchImage` varchar(100) NOT NULL,
  `school_researchFormat` varchar(64) NOT NULL,
  `school_researchSchool` int(11) NOT NULL,
  `school_researchProponents` varchar(64) NOT NULL,
  `school_researchUploadDate` datetime NOT NULL,
  `school_researchDate` date NOT NULL,
  `school_researchLiveDate` datetime NOT NULL,
  `school_researchUpdateDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `school_researchStatus` varchar(64) NOT NULL DEFAULT 'Draft',
  `school_researchContent` longtext NOT NULL,
  `school_researchContentVersion` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_files`
--

CREATE TABLE `teacher_files` (
  `teacher_fileId` int(11) NOT NULL,
  `teacher_fileTitle` longtext NOT NULL,
  `teacher_fileSlug` longtext NOT NULL,
  `teacher_fileCategory` varchar(64) NOT NULL,
  `teacher_fileTags` longtext NOT NULL,
  `teacher_fileAccessType` varchar(64) NOT NULL DEFAULT 'Free',
  `teacher_fileSharedWith` varchar(300) NOT NULL,
  `teacher_fileDescription` longtext NOT NULL,
  `teacher_fileContentVersion` int(11) NOT NULL,
  `teacher_fileImage` varchar(100) NOT NULL,
  `teacher_fileFormat` varchar(64) NOT NULL,
  `teacher_fileTeacher` varchar(64) NOT NULL,
  `teacher_fileUploadDate` datetime NOT NULL,
  `teacher_filePubDate` datetime NOT NULL,
  `teacher_fileUpdateDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `teacher_fileStatus` varchar(64) NOT NULL DEFAULT 'Draft',
  `teacher_fileForSale` varchar(64) NOT NULL DEFAULT 'Not for Sale',
  `teacher_fileAmount` int(7) NOT NULL,
  `teacher_fileContent` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher_files`
--

INSERT INTO `teacher_files` (`teacher_fileId`, `teacher_fileTitle`, `teacher_fileSlug`, `teacher_fileCategory`, `teacher_fileTags`, `teacher_fileAccessType`, `teacher_fileSharedWith`, `teacher_fileDescription`, `teacher_fileContentVersion`, `teacher_fileImage`, `teacher_fileFormat`, `teacher_fileTeacher`, `teacher_fileUploadDate`, `teacher_filePubDate`, `teacher_fileUpdateDate`, `teacher_fileStatus`, `teacher_fileForSale`, `teacher_fileAmount`, `teacher_fileContent`) VALUES
(66, 'dsfdsf', 'dsfdsf', 'Syllabus', 'dsfgsg', 'Select', 'dhg', 'fdggfgfgfdsg', 1, '', 'pdf', '1', '0000-00-00 00:00:00', '2026-02-11 20:57:19', '2026-02-12 13:53:25', 'Unpublished', 'Not for Sale', 0, '/uploads/documents/teacher/files/1-647366647366.pdf'),
(67, 'fgfg', 'fgfg', 'Syllabus', 'fdgfg', 'Free Access', 'fdgfg', 'fdgfgsdggdg', 1, '', 'pdf', '1', '0000-00-00 00:00:00', '2026-02-12 10:55:14', '2026-02-12 10:55:14', 'Published', 'Not for Sale', 0, '/uploads/documents/teacher/files/1-66676667.pdf'),
(68, 'rtty', 'rtty', 'Syllabus', 'trhh', 'Free Access', 'thtrh', 'rhhrhr', 1, '', 'pdf', '18', '0000-00-00 00:00:00', '2026-02-12 14:57:54', '2026-02-12 14:58:07', 'Unpublished', 'Not for Sale', 0, '/uploads/documents/teacher/files/18-72747479.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `writer_articles`
--

CREATE TABLE `writer_articles` (
  `writer_articleId` int(11) NOT NULL,
  `writer_articleTitle` longtext NOT NULL,
  `writer_articleDescription` longtext NOT NULL,
  `writer_articleSlug` longtext NOT NULL,
  `writer_articleImage` varchar(150) NOT NULL,
  `writer_articleCategory` varchar(64) NOT NULL,
  `writer_articleAccessType` varchar(100) NOT NULL,
  `writer_articleSharedWith` longtext NOT NULL,
  `writer_articleTags` longtext NOT NULL,
  `writer_articleWriter` int(11) NOT NULL,
  `writer_articleWriterName` varchar(256) NOT NULL,
  `writer_articleEditors` text NOT NULL,
  `writer_articleWriteDate` datetime NOT NULL DEFAULT current_timestamp(),
  `writer_articleUpdateDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `writer_articlePubDate` datetime NOT NULL,
  `writer_articleContent` longtext NOT NULL,
  `writer_articleContentVersion` int(11) NOT NULL DEFAULT 1,
  `writer_articleStatus` varchar(64) NOT NULL DEFAULT 'Draft',
  `writer_articleComments` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `writer_articles`
--

INSERT INTO `writer_articles` (`writer_articleId`, `writer_articleTitle`, `writer_articleDescription`, `writer_articleSlug`, `writer_articleImage`, `writer_articleCategory`, `writer_articleAccessType`, `writer_articleSharedWith`, `writer_articleTags`, `writer_articleWriter`, `writer_articleWriterName`, `writer_articleEditors`, `writer_articleWriteDate`, `writer_articleUpdateDate`, `writer_articlePubDate`, `writer_articleContent`, `writer_articleContentVersion`, `writer_articleStatus`, `writer_articleComments`) VALUES
(135, 'ry', 'undefined', 'ry', '', 'News', 'Select', 'uyy', 'yjyu', 1, '', '', '0000-00-00 00:00:00', '2026-02-12 13:34:56', '2026-02-12 13:27:58', '<div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">Malacañang said the Philippines will maintain a “firm but diplomatic” stance toward China amid the Chinese Embassy in Manila’s more confrontational approach to dealing with issues surrounding the South China Sea.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\"><br></div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">Presidential Communications Office (PCO) Undersecretary Claire Castro said this after Beijing criticized a Senate resolution denouncing statements from the Chinese Embassy in Manila.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">In a press briefing, Castro said President Marcos respects freedom of expression and underscored that both sides may air their views on the issue.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">“Ang Pangulo po kasi ay rumirespeto sa kalayaan ng pamamahayag (The President respects freedom of expression),” she said Wednesday, Feb. 11.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">“Kung may kalayaan po ang China sa kanilang pamamahayag, ganoon din naman po ang sinuman na Pilipino at kung anuman din po ang inihayag ng Senado (If China has freedom in expressing its views, the same applies to Filipinos and whatever the Senate has expressed),” she added.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">Castro reiterated that the administration’s approach toward Beijing remains unchanged.</div><div class=\"article-text left\" style=\"margin-bottom: 20px; color: rgb(0, 0, 0); font-family: &quot;Libre Caslon Text&quot;, serif; font-size: 17px; white-space-collapse: collapse;\">“At muli, uulitin po natin ang posisyon ng Pangulo patungkol po sa relasyon sa China — firm but diplomatic po (And again, we reiterate the President’s position on relations with China — firm but diplomatic),” she said, noting that Malacañang does not view China’s condemnation of the Senate resolution as an attempt to silence lawmakers.</div>', 13, 'Unpublished', ''),
(136, 'rytu', 'undefined', 'rytu', '', 'News', 'Select', 'uuooui', 'ytyi', 1, '', '', '2026-02-12 09:34:36', '2026-02-12 13:27:51', '2026-02-12 13:25:33', '<br><div><br></div>', 12, 'Unpublished', ''),
(137, 'dgsdggdgdsg', 'undefined', 'dgsdggdgdsg', '', 'News', 'Free Access', 'fgfsgdsg', 'fgsg', 1, '', '', '2026-02-12 13:35:31', '2026-02-12 13:35:31', '0000-00-00 00:00:00', 'dsgdsg', 1, 'Draft', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_messages`
--
ALTER TABLE `admin_messages`
  ADD PRIMARY KEY (`admin_messageId`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_categories`
--
ALTER TABLE `content_categories`
  ADD PRIMARY KEY (`content_categoryId`);

--
-- Indexes for table `content_performance`
--
ALTER TABLE `content_performance`
  ADD PRIMARY KEY (`content_viewId`);

--
-- Indexes for table `content_versions`
--
ALTER TABLE `content_versions`
  ADD PRIMARY KEY (`content_versionId`);

--
-- Indexes for table `developer_tools`
--
ALTER TABLE `developer_tools`
  ADD PRIMARY KEY (`developer_toolId`);

--
-- Indexes for table `developer_tool_files`
--
ALTER TABLE `developer_tool_files`
  ADD PRIMARY KEY (`developer_tool_fileId`);

--
-- Indexes for table `editor_edits`
--
ALTER TABLE `editor_edits`
  ADD PRIMARY KEY (`editor_editId`);

--
-- Indexes for table `file_purchase`
--
ALTER TABLE `file_purchase`
  ADD PRIMARY KEY (`file_purchaseId`);

--
-- Indexes for table `other_registrations`
--
ALTER TABLE `other_registrations`
  ADD PRIMARY KEY (`otherId`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`promotionId`);

--
-- Indexes for table `registrant_activities`
--
ALTER TABLE `registrant_activities`
  ADD PRIMARY KEY (`registrant_activityId`);

--
-- Indexes for table `registrant_subscriptions`
--
ALTER TABLE `registrant_subscriptions`
  ADD PRIMARY KEY (`registrant_subscriptionId`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`registrantId`);

--
-- Indexes for table `school_researches`
--
ALTER TABLE `school_researches`
  ADD PRIMARY KEY (`school_researchId`);

--
-- Indexes for table `teacher_files`
--
ALTER TABLE `teacher_files`
  ADD PRIMARY KEY (`teacher_fileId`);

--
-- Indexes for table `writer_articles`
--
ALTER TABLE `writer_articles`
  ADD PRIMARY KEY (`writer_articleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_messages`
--
ALTER TABLE `admin_messages`
  MODIFY `admin_messageId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `contentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `content_categories`
--
ALTER TABLE `content_categories`
  MODIFY `content_categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `content_performance`
--
ALTER TABLE `content_performance`
  MODIFY `content_viewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_versions`
--
ALTER TABLE `content_versions`
  MODIFY `content_versionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `developer_tools`
--
ALTER TABLE `developer_tools`
  MODIFY `developer_toolId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `developer_tool_files`
--
ALTER TABLE `developer_tool_files`
  MODIFY `developer_tool_fileId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `editor_edits`
--
ALTER TABLE `editor_edits`
  MODIFY `editor_editId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `file_purchase`
--
ALTER TABLE `file_purchase`
  MODIFY `file_purchaseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `other_registrations`
--
ALTER TABLE `other_registrations`
  MODIFY `otherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `promotionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `registrant_activities`
--
ALTER TABLE `registrant_activities`
  MODIFY `registrant_activityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=831;

--
-- AUTO_INCREMENT for table `registrant_subscriptions`
--
ALTER TABLE `registrant_subscriptions`
  MODIFY `registrant_subscriptionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `registrantId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `school_researches`
--
ALTER TABLE `school_researches`
  MODIFY `school_researchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `teacher_files`
--
ALTER TABLE `teacher_files`
  MODIFY `teacher_fileId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `writer_articles`
--
ALTER TABLE `writer_articles`
  MODIFY `writer_articleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
