-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2026 at 10:20 AM
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
  `admin_messageRegistrantId` int(11) NOT NULL,
  `admin_messageRegistrantAccountName` longtext NOT NULL,
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
  `contentRegistrantId` int(11) NOT NULL,
  `contentSharedWith` longtext NOT NULL,
  `contentStatus` varchar(64) NOT NULL,
  `contentPubDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`contentId`, `contentTable`, `contentForeignId`, `contentRegistrantId`, `contentSharedWith`, `contentStatus`, `contentPubDate`) VALUES
(6, 'teacher_files', 68, 0, '', 'Unpublished', '2026-02-12 14:57:54'),
(24, 'teacher_files', 83, 18, '46', 'Unpublished', '2026-02-13 22:36:06'),
(36, 'developer_tools', 4, 1, '', 'Draft', '0000-00-00 00:00:00'),
(37, 'developer_tools', 5, 1, '', 'Draft', '0000-00-00 00:00:00'),
(38, 'writer_articles', 143, 18, '', 'To Revise', '2026-02-26 21:37:12');

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
(13, 'Article', 'News', '2026-02-22 09:14:32'),
(16, 'Tool', 'math', '2026-02-26 12:50:38'),
(17, 'Teacher File', 'fdgdfhfdh', '2026-02-28 06:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `content_comments`
--

CREATE TABLE `content_comments` (
  `content_commentId` int(11) NOT NULL,
  `content_commentContentType` varchar(100) NOT NULL,
  `content_commentContentId` int(11) NOT NULL,
  `content_commentRegistrant` int(11) NOT NULL,
  `content_commentRole` varchar(100) NOT NULL,
  `content_commentContent` longtext NOT NULL,
  `content_commentTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `content_commentReaction` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_comments`
--

INSERT INTO `content_comments` (`content_commentId`, `content_commentContentType`, `content_commentContentId`, `content_commentRegistrant`, `content_commentRole`, `content_commentContent`, `content_commentTimestamp`, `content_commentReaction`) VALUES
(1, 'Article', 137, 1, 'Editor', 'zdfgds', '2026-02-22 08:31:18', ''),
(2, 'Article', 137, 1, 'Editor', 'dssgsdgdhg', '2026-02-22 08:59:46', ''),
(3, 'Article', 141, 18, 'Editor', 'Good day', '2026-02-22 09:15:06', ''),
(4, 'Article', 141, 18, 'Editor', 'sgdghfh', '2026-02-22 09:16:56', ''),
(5, 'Article', 141, 1, 'Writer', 'yup', '2026-02-22 09:18:38', ''),
(6, 'Article', 141, 1, 'Writer', 'fdhh', '2026-02-22 09:23:20', ''),
(7, 'Article', 141, 1, 'Writer', 'fdgfdgfdgfdggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', '2026-02-22 09:23:23', ''),
(8, 'Article', 141, 1, 'Writer', 'fdbfhgfhgfjgfjgfjjgf', '2026-02-22 09:26:34', ''),
(9, 'Article', 141, 1, 'Writer', 'gjghhgghkgk', '2026-02-22 09:26:36', ''),
(10, 'Article', 141, 1, 'Writer', 'hghgkhhk', '2026-02-22 09:26:37', ''),
(11, 'Article', 141, 18, 'Editor', 'fgfdhhh', '2026-02-22 09:39:13', ''),
(12, 'Article', 141, 1, 'Writer', 'yes', '2026-02-22 09:39:35', ''),
(13, 'Article', 141, 18, 'Editor', 'check', '2026-02-22 09:46:41', ''),
(14, 'Article', 141, 1, 'Writer', 'ok po', '2026-02-22 09:48:20', ''),
(15, 'Article', 141, 18, 'Editor', 'ok', '2026-02-22 09:48:32', ''),
(16, 'Article', 141, 1, 'Writer', 'fggh', '2026-02-22 09:55:23', ''),
(17, 'Article', 141, 1, 'Writer', 'dsgh', '2026-02-22 09:59:46', ''),
(18, 'Article', 141, 1, 'Writer', 'fgdhh', '2026-02-22 10:00:30', ''),
(19, 'Article', 141, 1, 'Writer', 'sgdhfh', '2026-02-22 10:00:33', ''),
(20, 'Article', 141, 1, 'Writer', 'fdfgg', '2026-02-22 10:01:26', ''),
(21, 'Article', 141, 1, 'Writer', 'fdgfg', '2026-02-22 10:01:28', ''),
(22, 'Article', 141, 1, 'Writer', 'dfgfg', '2026-02-22 10:01:31', ''),
(23, 'Article', 141, 1, 'Writer', 'sdgg', '2026-02-22 10:02:13', ''),
(24, 'Article', 141, 1, 'Writer', 'fdgh', '2026-02-22 10:02:38', ''),
(25, 'Article', 141, 1, 'Writer', 'sdgdg', '2026-02-22 10:03:46', ''),
(26, 'Article', 141, 1, 'Writer', 'chh', '2026-02-22 10:06:26', ''),
(27, 'Article', 141, 1, 'Writer', 'sdgg', '2026-02-22 10:10:07', ''),
(28, 'Article', 141, 1, 'Writer', 'sdfgs', '2026-02-22 10:11:12', ''),
(29, 'Article', 141, 1, 'Writer', 'sdfgg', '2026-02-22 10:13:16', ''),
(30, 'Article', 141, 1, 'Writer', 'fg', '2026-02-22 10:16:47', ''),
(31, 'Article', 141, 1, 'Writer', 'dsfsg', '2026-02-22 10:21:34', ''),
(32, 'Article', 141, 1, 'Editor', 'sgfdhfghgfj', '2026-02-22 12:05:33', ''),
(33, 'Article', 141, 1, 'Editor', 'sdfdsgdhfhgfhfj', '2026-02-22 12:06:55', ''),
(34, 'Article', 141, 1, 'Editor', 'asfddgdhdh', '2026-02-22 12:17:47', ''),
(35, 'Article', 143, 18, 'Writer', 'vdffghgfh', '2026-02-26 13:37:06', ''),
(36, 'Article', 143, 1, 'Editor', 'dsgfdg', '2026-02-26 13:37:36', ''),
(37, 'Article', 143, 1, 'Editor', 'fdhfgh', '2026-02-26 13:37:37', ''),
(38, 'Article', 143, 1, 'Editor', 'gfjgfj', '2026-02-26 13:37:39', ''),
(39, 'Article', 143, 1, 'Editor', 'gjgj', '2026-02-26 13:37:40', ''),
(40, 'Article', 143, 1, 'Editor', 'jghjhg', '2026-02-26 13:37:41', ''),
(41, 'Article', 143, 1, 'Editor', 'hgjh', '2026-02-26 13:37:42', ''),
(42, 'Article', 143, 1, 'Editor', 'gfjgj', '2026-02-26 13:37:44', ''),
(43, 'Article', 141, 1, 'Editor', 'hgfgfj', '2026-02-26 13:42:55', ''),
(44, 'Article', 141, 1, 'Editor', 'DSGFDGH', '2026-02-26 13:45:29', ''),
(45, 'Article', 141, 1, 'Editor', 'gfdhh', '2026-02-26 13:46:52', ''),
(46, 'Article', 141, 1, 'Editor', 'okay na na', '2026-02-26 13:48:54', ''),
(47, 'Article', 143, 1, 'Editor', 'please add', '2026-02-26 13:51:32', ''),
(48, 'Article', 143, 18, 'Writer', 'sdgg', '2026-02-26 14:07:30', ''),
(49, 'Article', 143, 18, 'Writer', 'hfh', '2026-02-26 14:13:21', ''),
(50, 'Article', 143, 18, 'Writer', 'fgfh', '2026-02-26 14:17:17', ''),
(51, 'Article', 143, 18, 'Writer', 'sdggdadhfhfggfjhgjhghgkgkhkhhhjljh', '2026-02-26 14:29:19', ''),
(52, 'Article', 143, 18, 'Writer', 'fdgfdhgfh', '2026-02-26 14:29:22', ''),
(53, 'Article', 143, 18, 'Writer', 'dgfdhgfhgfhgfjgfjhgfjghjghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2026-02-26 14:30:06', ''),
(54, 'Article', 143, 18, 'Writer', 'By default, modern browsers will apply the :invalid pseudo-class to the &lt;select&gt; element when the empty-value option is selected. You can target this state to style the placeholder text. ', '2026-02-26 14:34:39', ''),
(55, 'Article', 143, 1, 'Editor', 'By default, modern browsers will apply the :invalid pseudo-class to the &lt;select&gt; element when the empty-value option is selected. You can target this state to style the placeholder text. ', '2026-02-26 14:35:25', ''),
(56, 'Article', 143, 18, 'Writer', 'fghghhg', '2026-02-26 14:39:14', ''),
(57, 'Article', 143, 18, 'Writer', 'dggfh', '2026-02-26 14:39:24', ''),
(58, 'Article', 143, 18, 'Writer', 'hjhghg', '2026-02-26 14:41:32', ''),
(59, 'Article', 143, 18, 'Writer', 'rgftfuu', '2026-02-26 14:47:00', ''),
(60, 'Article', 143, 1, 'Editor', 'gfdfghjgjj', '2026-02-26 14:47:17', ''),
(61, 'Article', 141, 1, 'Writer', 'fdhdhdh', '2026-03-01 05:26:43', '');

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
(1, '2026-02-10 07:16:19', 'developer_tools', 1, 1, 20, '2026-02-18 13:46:11'),
(2, '2026-02-19 15:16:46', 'developer_tools', 3, 18, 2, '2026-02-19 15:45:34'),
(3, '2026-02-20 05:58:09', 'developer_tools', 3, 1, 1, '2026-02-20 05:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `content_purchase`
--

CREATE TABLE `content_purchase` (
  `content_purchaseId` int(11) NOT NULL,
  `content_purchaseTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `content_purchaseType` varchar(100) NOT NULL,
  `content_purchaseContentId` int(11) NOT NULL,
  `content_purchaseSeller` int(11) NOT NULL,
  `content_purchaseAmount` int(11) NOT NULL,
  `content_purchaseRegistrantId` int(11) NOT NULL,
  `content_purchasePaymentChannel` varchar(64) NOT NULL,
  `content_purchaseReferenceNumber` varchar(64) NOT NULL,
  `content_purchaseStatus` varchar(64) NOT NULL,
  `content_purchaseProofLink` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_purchase`
--

INSERT INTO `content_purchase` (`content_purchaseId`, `content_purchaseTimestamp`, `content_purchaseType`, `content_purchaseContentId`, `content_purchaseSeller`, `content_purchaseAmount`, `content_purchaseRegistrantId`, `content_purchasePaymentChannel`, `content_purchaseReferenceNumber`, `content_purchaseStatus`, `content_purchaseProofLink`) VALUES
(1, '2025-12-07 06:18:06', 'Teacher File', 28, 18, 10, 1, 'GCASH', 'vsdsdgdsfsdg', 'Approved', '/uploads/file-purchase/proof/userid-1-20251207141806.jpeg'),
(6, '2026-02-16 06:21:27', 'Teacher File', 77, 1, 10, 1, 'GCash', 'dsgdgdh', 'Revoked', '/uploads/content-purchase/proof/userid-1-20260216142127.jpeg'),
(9, '2026-02-16 14:18:54', 'Teacher File', 77, 1, 10, 18, 'PayMaya', 'ffgfdhfh', 'Revoked', '/uploads/content-purchase/proof/userid-18-20260216221854.jpeg'),
(10, '2026-02-19 14:56:24', 'Teacher File', 84, 1, 50, 18, 'GCash', 'fsddsg', 'Approved', '/uploads/content-purchase/proof/userid-18-20260219225624.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `content_tags`
--

CREATE TABLE `content_tags` (
  `content_tagId` int(11) NOT NULL,
  `content_tagName` varchar(100) NOT NULL,
  `content_tagCreator` int(11) NOT NULL,
  `content_tagCreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_tags`
--

INSERT INTO `content_tags` (`content_tagId`, `content_tagName`, `content_tagCreator`, `content_tagCreated`) VALUES
(3, 'erfel', 1, '2026-03-01 02:42:58');

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
(85, 'writer_articles', 143, 1, 'gfhgfjhjhj', '2026-02-26 13:36:57');

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
(4, 'sefdsgdd', 'math', '', 'ffhgfgfjgjghhg', '', '1', '2026-02-26 12:50:55', '0000-00-00 00:00:00', '2026-02-26 12:50:55', 1, 'Draft', 'Free Access', 0, '', '/public/tools/sefdsgdd/', ''),
(5, 'dfgfdh', 'math', '', 'fdgfdhgfgfjgj', '', '1', '2026-02-26 13:18:13', '0000-00-00 00:00:00', '2026-02-26 13:18:13', 1, 'Draft', 'Free Access', 0, '', '/public/tools/dfgfdh/', '');

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
-- Table structure for table `from_no_admin_users_messages`
--

CREATE TABLE `from_no_admin_users_messages` (
  `from_no_admin_users_messageId` int(20) NOT NULL,
  `from_no_admin_users_messageRegistrantId` int(11) NOT NULL,
  `from_no_admin_users_messageContent` longtext NOT NULL,
  `from_no_admin_users_messageTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_no_admin_users_messageStatus` varchar(64) NOT NULL DEFAULT 'Unread',
  `from_no_admin_users_messageStatusSender` varchar(64) NOT NULL DEFAULT 'Read',
  `from_no_admin_users_messageStatusRecipient` varchar(64) NOT NULL DEFAULT 'Unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_threads`
--

CREATE TABLE `message_threads` (
  `message_threadId` int(11) NOT NULL,
  `message_threadType` varchar(64) NOT NULL,
  `message_threadCode` longtext NOT NULL,
  `message_threadTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `message_threadUpdateDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message_threads`
--

INSERT INTO `message_threads` (`message_threadId`, `message_threadType`, `message_threadCode`, `message_threadTimestamp`, `message_threadUpdateDate`) VALUES
(1, 'Personal', '20260000042719982026000004271998', '2026-02-28 08:13:33', '2026-03-01 04:13:47'),
(2, 'Message Manager', 'TOADMIN2026000004271998', '2026-02-28 08:13:49', '2026-02-28 08:13:49'),
(3, 'Personal', '20260000042719982026000004272015', '2026-02-28 08:14:15', '2026-02-28 15:19:57'),
(4, 'Message Manager', 'TOADMIN2026000004272015', '2026-02-28 08:14:26', '2026-03-01 05:20:30'),
(5, 'Personal', '20260000042720152026000004272015', '2026-02-28 08:16:22', '2026-02-28 08:16:22'),
(6, 'Personal', '20260000042720062026000004271998', '2026-03-01 12:12:24', '2026-03-01 12:12:24'),
(7, 'Message Manager', 'TOADMIN2026000004272044', '2026-03-02 03:08:58', '2026-03-02 03:09:22'),
(8, 'Personal', '20260000042720442026000004271998', '2026-03-02 03:09:38', '2026-03-02 09:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `other_registrations`
--

CREATE TABLE `other_registrations` (
  `otherId` int(11) NOT NULL,
  `otherTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `otherType` varchar(64) DEFAULT NULL,
  `otherUserId` int(11) NOT NULL,
  `otherRegistrantAccountName` longtext NOT NULL,
  `otherResume` varchar(150) NOT NULL,
  `otherLicenseCertification` varchar(150) NOT NULL,
  `otherSample` varchar(150) NOT NULL,
  `otherAgreement` varchar(150) NOT NULL,
  `otherNotes` longtext NOT NULL,
  `otherStatus` varchar(64) NOT NULL DEFAULT 'Pending',
  `otherApprovalDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `promotionId` int(11) NOT NULL,
  `promotionCode` varchar(100) NOT NULL,
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

INSERT INTO `promotions` (`promotionId`, `promotionCode`, `promotionTimestamp`, `promotionNameCompany`, `promotionTitle`, `promotionTopics`, `promotionDescription`, `promotionType`, `promotionImage`, `promotionLink`, `promotionDuration`, `promotionAmount`, `promotionAgreement`, `promotionDate`, `promotionExpiry`, `promotionStatus`) VALUES
(1, '', '2025-12-04 11:21:16', 'Erfel Suriaga', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Products', '/uploads/promotion/image/erfel_suriaga-20260220185812.jpeg', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20251204192116.pdf', '2025-12-04 20:47:49', '2025-12-08 20:47:49', 'Published'),
(2, '', '2025-12-04 13:11:59', 'Erfel Suriaga', 'Promoting the EskQuip App', 'Education', 'sdfdssgdsg', 'Products', '/uploads/promotion/image/erfel_suriaga-20251204211159.jpeg', 'https://facebook.com', '5', 6, '/uploads/promotion/agreement/erfel_suriaga-20251204211159.pdf', '2025-12-04 21:12:02', '2025-12-09 21:12:02', 'Unpublished'),
(3, '', '2025-12-04 13:22:30', 'Erfelddgfdg', 'fhdh', 'fgdfggfgfg', 'ghghhdfh', 'Services', '/uploads/promotion/image/erfelddgfdg-20251204212230.jpeg', 'https://youtube.com', '6', 7, '/uploads/promotion/agreement/erfelddgfdg-20251204212230.pdf', '2025-12-04 21:22:33', '2025-12-10 21:22:33', 'Unpublished'),
(4, '', '2025-12-04 14:08:33', 'sdg', 'fgfg', 'fdhfgh', 'gfjgfjgfj', 'Products', '/uploads/promotion/image/sdg-20251204220833.jpeg', 'dgdg', '56', 7, '/uploads/promotion/agreement/sdg-20251204220833.pdf', '2025-12-04 22:08:35', '2026-01-29 22:08:35', 'Unpublished'),
(5, '', '2025-12-04 14:09:06', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20251204220906.jpeg', 'fdgfdg', '67', 67, '/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '2025-12-04 22:09:08', '2026-02-09 22:09:08', 'Unpublished'),
(6, '', '2026-01-07 13:31:55', 'Erfel Suriaga', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Products', '/uploads/promotion/image/erfel_suriaga-20260220185508.jpeg', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20260107213155.', '2026-02-18 13:39:46', '2026-02-18 13:39:46', 'Unpublished'),
(7, '', '2026-01-07 13:54:52', 'Erfelddgfdg', 'fhdh', 'fgdfggfgfg', 'ghghhdfh', 'Services', '/uploads/promotion/image/erfelddgfdg-20260107215452.', 'https://youtube.com', '6', 7, '/uploads/promotion/agreement/erfelddgfdg-20260107215452.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(8, '', '2026-01-07 13:54:53', 'Erfelddgfdg', 'fhdh', 'fgdfggfgfg', 'ghghhdfh', 'Services', '/uploads/promotion/image/erfelddgfdg-20260107215453.', 'https://youtube.com', '6', 7, '/uploads/promotion/agreement/erfelddgfdg-20260107215453.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(9, '', '2026-01-07 14:10:22', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/eskquip/private/uploads/promotion/image/dgfdg-20251204220906.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(10, '', '2026-01-07 14:10:26', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/eskquip/private/uploads/promotion/image/dgfdg-20251204220906.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(11, '', '2026-01-07 14:11:05', 'Erfelddgfdg', 'fhdh', 'fgdfggfgfg', 'ghghhdfh', 'Services', '/eskquip/private/uploads/promotion/image/erfelddgfdg-20260107215452.', 'https://youtube.com', '6', 7, '/eskquip/private/uploads/promotion/agreement/erfelddgfdg-20260107215452.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(12, '', '2026-01-07 14:14:23', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107221423.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '2026-02-25 15:27:07', '2026-02-25 15:27:07', 'Unpublished'),
(13, '', '2026-01-07 14:16:17', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107221617.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(14, '', '2026-01-07 14:17:08', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107221708.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '2026-01-08 13:17:11', '2026-01-08 13:17:11', 'Unpublished'),
(15, '', '2026-01-07 14:20:38', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107222038.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '2026-01-08 13:17:08', '2026-01-08 13:17:08', 'Unpublished'),
(16, '', '2026-01-07 14:29:58', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107222958.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(17, '', '2026-01-07 14:30:45', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Products', '/uploads/promotion/image/dgfdg-20260107223045.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(18, '', '2026-01-07 14:31:13', 'dgfdg', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Services', '/eskquip/private/uploads/promotion/image/dgfdg-20260107223045.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/eskquip/private/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(19, '', '2026-01-07 14:31:21', 'Erfel', 'dhfgghfh', 'gfdg', 'fgfdhfdh', 'Services', '/eskquip/private/eskquip/private/uploads/promotion/image/dgfdg-20260107223045.jpeg', 'fdgfdg', '67', 67, '/eskquip/private/eskquip/private/eskquip/private/eskquip/private/eskquip/private/eskquip/private/uploads/promotion/agreement/dgfdg-20251204220906.pdf', '2026-01-08 13:15:56', '2026-01-08 13:15:56', 'Unpublished'),
(20, '', '2026-01-07 14:33:34', 'new', 'gfhgfh', 'gfhgfh', 'ghgfhg', 'Products', '/uploads/promotion/image/new-20260107223334.jpeg', 'fgffdhfdhfdhfdhhhh', '1', 56, '/uploads/promotion/agreement/new-20260107223334.jpeg', '2026-01-08 13:16:26', '2026-01-08 13:16:26', 'Unpublished'),
(21, '', '2026-01-07 14:33:57', 'new', 'gfhgfh', 'gfhgfh', 'ghgfhg', 'Products', '/eskquip/private/uploads/promotion/image/new-20260107223334.jpeg', 'fgffdhfdhfdhfdhhhh', '2', 56, '/eskquip/private/uploads/promotion/agreement/new-20260107223334.jpeg', '2026-01-08 13:17:06', '2026-03-16 13:17:06', 'Unpublished'),
(22, '', '2026-02-04 14:57:48', 'new', 'gfhgfh', 'gfhgfh', 'ghgfhg', 'Products', '/eskquip/private/eskquip/private/uploads/promotion/image/new-20260107223334.jpeg', 'fgffdhfdhfdhfdhhhh', '2', 56, '/eskquip/private/eskquip/private/uploads/promotion/agreement/new-20260107223334.jpeg', '2026-02-04 22:58:08', '2026-02-04 22:58:08', 'Unpublished'),
(23, '', '2026-02-18 10:04:34', 'Erfel Suriaga', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Products', '/uploads/promotion/image/erfel_suriaga-20251204192116.jpeg', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20251204192116.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(24, '', '2026-02-18 10:04:58', 'Erfel Suriagaf', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Products', '/uploads/promotion/image/erfel_suriaga-20251204192116.jpeg', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20251204192116.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(25, '', '2026-02-18 10:08:10', 'Erfel Suriaga', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Products', '/uploads/promotion/image/erfel_suriaga-20251204192116.jpeg', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20251204192116.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(26, '', '2026-02-18 10:08:43', 'Erfel Suriagas', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Products', '/uploads/promotion/image/erfel_suriaga-20251204192116.jpeg', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20251204192116.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(27, '', '2026-02-18 10:30:53', 'Erfel Suriaga', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Services', '/uploads/promotion/image/erfel_suriaga-20251204192116.jpeg', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20251204192116.pdf', '2026-02-23 14:24:28', '2026-02-23 14:24:28', 'Published'),
(28, '', '2026-02-18 10:31:04', 'Erfel Suriagaffff', 'Promoting the EskQuip Web App', 'education', 'This web app is awesome.', 'Services', '/uploads/promotion/image/erfel_suriaga-20251204192116.jpeg', 'https://shopee.ph/erfiaga', '4', 50, '/uploads/promotion/agreement/erfel_suriaga-20251204192116.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(29, '', '2026-02-18 10:38:15', 'gfdgfdg', 'hhfdh', 'hghdfh', 'hdfh', 'Products', '/uploads/promotion/image/gfdgfdg-20260218183815.jpeg', 'https://facebook.com', '2', 45, '/uploads/promotion/agreement/gfdgfdg-20260218183815.pdf', '2026-02-23 14:54:44', '2026-02-23 14:54:44', 'Unpublished'),
(30, '', '2026-02-18 10:49:14', 'dsgsdg', 'fdgfdg', 'fdgfdg', 'fgfdgfdg', 'Products', '/uploads/promotion/image/dsgsdg-20260218184914.jpeg', 'sgfdhhh', '3', 56, '/uploads/promotion/agreement/dsgsdg-20260218184914.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Draft'),
(31, '', '2026-02-18 10:58:19', 'Erfiaga Publishing', 'Erfiaga Advertisement', 'print', 'hfdhghgfjgfj', 'Services', '/uploads/promotion/image/erfiaga-20260218185819.jpeg', 'erfriaga.com', '4', 34, '/uploads/promotion/agreement/erfiaga-20260218185819.pdf', '2026-02-23 14:24:36', '2026-02-23 14:24:36', 'Published'),
(32, '', '2026-02-18 11:14:31', 'dgdhgghgg', 'ghgj', 'hgk', 'khjhl', 'Products', '/uploads/promotion/image/dgdh-20260218191431.jpeg', 'gfdgdsgdsg', '3', 45, '/uploads/promotion/agreement/dgdh-20260218191431.pdf', '2026-02-18 19:14:38', '2026-02-18 19:14:38', 'Published'),
(33, 'ESKQUIPPROMOTE000129454', '2026-02-20 12:11:53', 'Erfiaga Publishing', 'Personalized Paperback Tracing and Writing Workbook- 6x8 inches, 128 pages', 'activity book', 'This personalized tracing and writing workbook for letters and name is useful for kids in preparing for school and enhancing their fine motor skills. Contained in the workbook are: 3 Prepare Me activities, to familiarize the correct order of numbers.78 Letter activities, to trace and write letters using the indicated numbers and arrows.12 Name activities, to apply tracing and writing skills to own name, until becoming ready for school.', 'Products', '/uploads/promotion/image/erfiaga_publishing-20260220201153.jpg', 'https://shopee.ph/Personalized-Paperback-Tracing-and-Writing-Workbook-6x8-inches-128-pages-i.1596326265.44462169784?extraParams=%7B%22display_model_id%22%3A261020244618%2C%22model_selection_logic%22%3A3%7D', '45', 10, '/uploads/promotion/agreement/erfiaga_publishing-20260220201153.pdf', '2026-02-20 20:11:56', '2026-03-22 20:11:56', 'Published');

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
(830, '2026-02-12 06:56:35', 18, '', 'Logged in'),
(831, '2026-02-13 01:27:00', 1, '', 'Logged out'),
(832, '2026-02-13 01:27:08', 1, '', 'Logged in'),
(833, '2026-02-13 14:32:39', 1, '', 'Logged out'),
(834, '2026-02-13 14:34:03', 18, '', 'Logged out'),
(835, '2026-02-13 14:34:12', 18, '', 'Logged in'),
(836, '2026-02-13 14:47:13', 1, '', 'Logged in'),
(837, '2026-02-13 15:19:43', 18, '', 'Logged out'),
(838, '2026-02-13 15:20:02', 1, '', 'Logged out'),
(839, '2026-02-14 02:47:10', 1, '', 'Logged in'),
(840, '2026-02-14 02:48:12', 18, '', 'Logged in'),
(841, '2026-02-14 13:19:49', 18, '', 'Logged out'),
(842, '2026-02-14 13:19:52', 18, '', 'Logged in'),
(843, '2026-02-14 13:20:09', 18, '', 'Logged out'),
(844, '2026-02-14 13:20:19', 18, '', 'Logged in'),
(845, '2026-02-14 13:25:23', 18, '', 'Logged out'),
(846, '2026-02-14 13:25:50', 18, '', 'Logged out'),
(847, '2026-02-14 13:25:55', 18, '', 'Logged out'),
(848, '2026-02-14 13:26:19', 18, '', 'Logged out'),
(849, '2026-02-14 13:26:37', 18, '', 'Logged in'),
(850, '2026-02-14 13:28:22', 18, '', 'Logged out'),
(851, '2026-02-14 13:28:22', 18, '', 'Logged out'),
(852, '2026-02-14 13:28:28', 18, '', 'Logged out'),
(853, '2026-02-14 13:28:29', 18, '', 'Logged out'),
(854, '2026-02-14 13:28:29', 18, '', 'Logged out'),
(855, '2026-02-14 13:28:30', 18, '', 'Logged out'),
(856, '2026-02-14 13:28:30', 18, '', 'Logged out'),
(857, '2026-02-14 13:28:30', 18, '', 'Logged out'),
(858, '2026-02-14 13:28:31', 18, '', 'Logged out'),
(859, '2026-02-14 13:28:31', 18, '', 'Logged out'),
(860, '2026-02-14 13:28:31', 18, '', 'Logged out'),
(861, '2026-02-14 13:28:31', 18, '', 'Logged out'),
(862, '2026-02-14 13:28:31', 18, '', 'Logged out'),
(863, '2026-02-14 13:28:32', 18, '', 'Logged out'),
(864, '2026-02-14 13:28:32', 18, '', 'Logged out'),
(865, '2026-02-14 13:28:32', 18, '', 'Logged out'),
(866, '2026-02-14 13:28:32', 18, '', 'Logged out'),
(867, '2026-02-14 13:28:50', 18, '', 'Logged in'),
(868, '2026-02-14 13:30:11', 18, '', 'Logged out'),
(869, '2026-02-14 13:31:07', 1, '', 'Logged out'),
(870, '2026-02-14 13:31:45', 1, '', 'Logged in'),
(871, '2026-02-14 13:32:21', 1, '', 'Logged out'),
(872, '2026-02-14 13:32:49', 1, '', 'Logged in'),
(873, '2026-02-14 13:32:57', 1, '', 'Logged out'),
(874, '2026-02-14 13:34:49', 1, '', 'Logged in'),
(875, '2026-02-14 13:34:55', 1, '', 'Logged out'),
(876, '2026-02-14 13:36:22', 1, '', 'Logged in'),
(877, '2026-02-14 13:36:29', 1, '', 'Logged out'),
(878, '2026-02-14 13:37:35', 1, '', 'Logged in'),
(879, '2026-02-14 13:43:56', 1, '', 'Logged out'),
(880, '2026-02-14 13:43:57', 1, '', 'Logged out'),
(881, '2026-02-14 13:44:08', 1, '', 'Logged in'),
(882, '2026-02-14 13:44:23', 1, '', 'Logged out'),
(883, '2026-02-14 13:45:46', 1, '', 'Logged in'),
(884, '2026-02-14 13:47:03', 1, '', 'Logged out'),
(885, '2026-02-14 13:47:16', 18, '', 'Logged in'),
(886, '2026-02-14 13:47:42', 1, '', 'Logged in'),
(887, '2026-02-15 02:24:58', 1, '', 'Logged out'),
(888, '2026-02-15 02:25:07', 1, '', 'Logged in'),
(889, '2026-02-15 05:19:58', 18, '', 'Logged out'),
(890, '2026-02-15 05:20:05', 18, '', 'Logged in'),
(891, '2026-02-15 09:14:33', 1, '', 'Logged out'),
(892, '2026-02-15 09:14:42', 1, '', 'Logged in'),
(893, '2026-02-15 09:14:48', 1, '', 'Logged out'),
(894, '2026-02-15 09:16:22', 1, '', 'Logged in'),
(895, '2026-02-15 10:49:33', 18, '', 'Logged out'),
(896, '2026-02-15 10:50:43', 18, '', 'Logged in'),
(897, '2026-02-15 11:32:31', 18, '', 'Logged out'),
(898, '2026-02-15 11:41:02', 18, '', 'Logged in'),
(899, '2026-02-15 12:46:58', 18, '', 'Logged out'),
(900, '2026-02-15 12:47:08', 18, '', 'Logged in'),
(901, '2026-02-15 13:33:38', 18, '', 'Logged out'),
(902, '2026-02-15 13:36:11', 1, '', 'Logged out'),
(903, '2026-02-15 13:38:51', 1, '', 'Logged in'),
(904, '2026-02-15 13:39:19', 1, '', 'Logged out'),
(905, '2026-02-15 13:40:16', 1, '', 'Logged in'),
(906, '2026-02-15 13:40:46', 1, '', 'Logged out'),
(907, '2026-02-15 13:43:56', 1, '', 'Logged in'),
(908, '2026-02-15 13:43:59', 1, '', 'Logged out'),
(909, '2026-02-15 13:44:10', 1, '', 'Logged in'),
(910, '2026-02-15 13:45:34', 1, '', 'Logged out'),
(911, '2026-02-15 13:45:48', 1, '', 'Logged in'),
(912, '2026-02-15 13:45:51', 1, '', 'Logged out'),
(913, '2026-02-15 13:46:17', 1, '', 'Logged in'),
(914, '2026-02-15 14:15:16', 1, '', 'Logged out'),
(915, '2026-02-15 14:18:14', 9, '', 'Logged out'),
(916, '2026-02-15 14:18:21', 9, '', 'Logged in'),
(917, '2026-02-15 14:52:19', 18, '', 'Logged in'),
(918, '2026-02-15 14:52:59', 18, '', 'Logged out'),
(919, '2026-02-15 14:53:10', 1, '', 'Logged in'),
(920, '2026-02-15 15:08:49', 9, '', 'Logged out'),
(921, '2026-02-15 15:08:54', 1, '', 'Logged out'),
(922, '2026-02-15 15:09:04', 1, '', 'Logged in'),
(923, '2026-02-15 15:16:14', 9, '', 'Logged in'),
(924, '2026-02-16 01:22:05', 1, '', 'Logged out'),
(925, '2026-02-16 01:22:19', 1, '', 'Logged in'),
(926, '2026-02-16 13:05:45', 18, '', 'Logged in'),
(927, '2026-02-16 14:50:04', 18, '', 'Logged out'),
(928, '2026-02-16 14:50:57', 1, '', 'Logged out'),
(929, '2026-02-17 02:24:27', 1, '', 'Logged in'),
(930, '2026-02-17 03:03:21', 18, '', 'Logged in'),
(931, '2026-02-18 04:13:28', 1, '', 'Logged out'),
(932, '2026-02-18 04:13:34', 1, '', 'Logged in'),
(933, '2026-02-19 03:23:29', 1, '', 'Logged out'),
(934, '2026-02-19 03:23:35', 1, '', 'Logged in'),
(935, '2026-02-19 04:51:11', 18, '', 'Logged out'),
(936, '2026-02-19 04:51:22', 18, '', 'Logged in'),
(937, '2026-02-19 07:55:28', 18, '', 'Logged out'),
(938, '2026-02-19 10:02:58', 1, '', 'Logged out'),
(939, '2026-02-19 10:03:07', 1, '', 'Logged in'),
(940, '2026-02-19 10:05:29', 1, '', 'Logged out'),
(941, '2026-02-19 10:14:37', 46, '', 'Logged in'),
(942, '2026-02-19 10:15:37', 46, '', 'Logged out'),
(943, '2026-02-19 11:59:57', 1, '', 'Logged in'),
(944, '2026-02-19 12:29:42', 1, '', 'Logged out'),
(945, '2026-02-19 12:36:53', 1, '', 'Logged in'),
(946, '2026-02-19 12:43:06', 18, '', 'Logged in'),
(947, '2026-02-19 15:45:41', 18, '', 'Logged out'),
(948, '2026-02-19 15:45:53', 1, '', 'Logged out'),
(949, '2026-02-20 01:22:10', 1, '', 'Logged in'),
(950, '2026-02-20 04:46:21', 1, '', 'Logged out'),
(951, '2026-02-20 04:51:51', 1, '', 'Logged in'),
(952, '2026-02-20 15:17:43', 1, '', 'Logged out'),
(953, '2026-02-21 01:40:54', 1, '', 'Logged in'),
(954, '2026-02-21 08:53:21', 1, '', 'Logged out'),
(955, '2026-02-21 08:53:26', 18, '', 'Logged in'),
(956, '2026-02-21 09:07:23', 18, '', 'Logged out'),
(957, '2026-02-21 09:07:30', 1, '', 'Logged in'),
(958, '2026-02-21 09:18:08', 1, '', 'Logged out'),
(959, '2026-02-21 09:18:17', 1, '', 'Logged in'),
(960, '2026-02-22 01:13:28', 1, '', 'Logged out'),
(961, '2026-02-22 01:26:38', 1, '', 'Logged in'),
(962, '2026-02-22 01:32:03', 1, '', 'Logged out'),
(963, '2026-02-22 01:38:30', 1, '', 'Logged in'),
(964, '2026-02-22 01:40:07', 1, '', 'Logged out'),
(965, '2026-02-22 02:46:34', 1, '', 'Logged in'),
(966, '2026-02-22 02:46:37', 1, '', 'Logged out'),
(967, '2026-02-22 03:01:58', 1, '', 'Logged in'),
(968, '2026-02-22 03:36:47', 1, '', 'Logged out'),
(969, '2026-02-22 03:37:38', 1, '', 'Logged in'),
(970, '2026-02-22 03:37:42', 1, '', 'Logged out'),
(971, '2026-02-22 03:38:15', 1, '', 'Logged in'),
(972, '2026-02-22 03:38:20', 1, '', 'Logged out'),
(973, '2026-02-22 03:39:03', 1, '', 'Logged in'),
(974, '2026-02-22 03:39:06', 1, '', 'Logged out'),
(975, '2026-02-22 04:04:44', 1, '', 'Logged in'),
(976, '2026-02-22 06:55:40', 18, '', 'Logged in'),
(977, '2026-02-22 14:54:20', 18, '', 'Logged out'),
(978, '2026-02-22 14:58:36', 1, '', 'Logged out'),
(979, '2026-02-22 14:58:39', 1, '', 'Logged in'),
(980, '2026-02-23 01:32:42', 1, '', 'Logged out'),
(981, '2026-02-23 01:32:50', 1, '', 'Logged in'),
(982, '2026-02-23 04:04:27', 18, '', 'Logged in'),
(983, '2026-02-23 06:09:31', 18, '', 'Logged out'),
(984, '2026-02-23 06:09:36', 18, '', 'Logged in'),
(985, '2026-02-23 07:58:21', 18, '', 'Logged out'),
(986, '2026-02-23 07:58:37', 18, '', 'Logged in'),
(987, '2026-02-23 15:13:34', 1, '', 'Logged out'),
(988, '2026-02-23 15:14:43', 1, '', 'Logged in'),
(989, '2026-02-23 15:19:07', 1, '', 'Logged out'),
(990, '2026-02-23 15:19:38', 1, '', 'Logged in'),
(991, '2026-02-23 15:32:16', 18, '', 'Logged out'),
(992, '2026-02-23 15:32:22', 18, '', 'Logged in'),
(993, '2026-02-23 15:35:15', 18, '', 'Logged out'),
(994, '2026-02-23 15:35:53', 9, '', 'Logged out'),
(995, '2026-02-23 15:35:56', 9, '', 'Logged in'),
(996, '2026-02-23 15:58:27', 1, '', 'Logged out'),
(997, '2026-02-23 15:59:36', 1, '', 'Logged in'),
(998, '2026-02-23 16:00:26', 1, '', 'Logged out'),
(999, '2026-02-23 16:11:34', 1, '', 'Logged in'),
(1000, '2026-02-23 16:13:45', 1, '', 'Logged out'),
(1001, '2026-02-24 03:54:12', 1, '', 'Logged in'),
(1002, '2026-02-24 04:15:16', 1, '', 'Logged out'),
(1003, '2026-02-24 04:24:43', 47, '', 'Logged in'),
(1004, '2026-02-24 04:27:19', 47, '', 'Logged out'),
(1005, '2026-02-24 04:29:59', 9, '', 'Logged out'),
(1006, '2026-02-24 04:30:22', 9, '', 'Logged in'),
(1007, '2026-02-24 04:31:14', 16, '', 'Logged in'),
(1008, '2026-02-24 04:32:20', 16, '', 'Logged out'),
(1009, '2026-02-24 04:32:28', 18, '', 'Logged in'),
(1010, '2026-02-24 04:33:10', 18, '', 'Logged out'),
(1011, '2026-02-24 04:34:40', 47, '', 'Logged in'),
(1012, '2026-02-24 04:43:22', 47, '', 'Logged out'),
(1013, '2026-02-24 04:44:00', 18, '', 'Logged in'),
(1014, '2026-02-24 07:01:00', 1, '', 'Logged in'),
(1015, '2026-02-24 13:56:20', 18, '', 'Logged out'),
(1016, '2026-02-24 13:57:11', 47, '', 'Logged in'),
(1017, '2026-02-24 13:59:18', 47, '', 'Logged out'),
(1018, '2026-02-24 14:02:03', 1, '', 'Logged out'),
(1019, '2026-02-24 14:07:08', 1, '', 'Logged in'),
(1020, '2026-02-24 14:07:14', 1, '', 'Logged out'),
(1021, '2026-02-24 14:08:25', 1, '', 'Logged in'),
(1022, '2026-02-24 14:11:30', 1, '', 'Logged out'),
(1023, '2026-02-24 14:12:37', 1, '', 'Logged in');
INSERT INTO `registrant_activities` (`registrant_activityId`, `registrant_activityTimestamp`, `registrant_activityUserId`, `registrant_activityType`, `registrant_activityContent`) VALUES
(1024, '2026-02-24 14:13:11', 1, '', 'Logged out'),
(1025, '2026-02-24 14:13:28', 1, '', 'Logged in'),
(1026, '2026-02-25 02:17:13', 1, '', 'Logged out'),
(1027, '2026-02-25 02:17:17', 1, '', 'Logged in'),
(1028, '2026-02-25 03:08:58', 18, '', 'Logged in'),
(1029, '2026-02-25 05:22:56', 18, '', 'Logged out'),
(1030, '2026-02-25 05:23:01', 18, '', 'Logged in'),
(1031, '2026-02-25 08:33:41', 18, '', 'Logged out'),
(1032, '2026-02-25 08:33:57', 18, '', 'Logged in'),
(1033, '2026-02-25 12:03:04', 18, '', 'Logged out'),
(1034, '2026-02-25 12:03:23', 18, '', 'Logged in'),
(1035, '2026-02-25 12:58:00', 18, '', 'Logged out'),
(1036, '2026-02-25 12:58:04', 18, '', 'Logged in'),
(1037, '2026-02-26 01:51:35', 1, '', 'Logged out'),
(1038, '2026-02-26 01:51:38', 1, '', 'Logged in'),
(1039, '2026-02-26 02:13:21', 18, '', 'Logged out'),
(1040, '2026-02-26 02:13:29', 18, '', 'Logged in'),
(1041, '2026-02-26 04:27:42', 18, '', 'Logged out'),
(1042, '2026-02-26 04:27:43', 18, '', 'Logged in'),
(1043, '2026-02-26 06:37:01', 18, '', 'Logged out'),
(1044, '2026-02-26 06:44:26', 18, '', 'Logged in'),
(1045, '2026-02-26 10:34:30', 18, '', 'Logged out'),
(1046, '2026-02-26 10:34:40', 18, '', 'Logged in'),
(1047, '2026-02-27 03:57:46', 1, '', 'Logged out'),
(1048, '2026-02-27 03:57:50', 1, '', 'Logged in'),
(1049, '2026-02-27 04:02:39', 1, '', 'Logged out'),
(1050, '2026-02-27 04:05:27', 1, '', 'Logged in'),
(1051, '2026-02-27 10:16:44', 1, '', 'Logged out'),
(1052, '2026-02-27 10:16:48', 1, '', 'Logged in'),
(1053, '2026-02-28 03:39:57', 1, '', 'Logged out'),
(1054, '2026-02-28 03:40:02', 1, '', 'Logged in'),
(1055, '2026-02-28 03:45:26', 1, '', 'Logged out'),
(1056, '2026-02-28 03:47:12', 1, '', 'Logged in'),
(1057, '2026-02-28 03:49:46', 1, '', 'Logged out'),
(1058, '2026-02-28 03:56:52', 1, '', 'Logged in'),
(1059, '2026-02-28 04:41:16', 18, '', 'Logged out'),
(1060, '2026-02-28 04:41:22', 18, '', 'Logged in'),
(1061, '2026-02-28 05:14:45', 18, '', 'Logged out'),
(1062, '2026-02-28 05:15:33', 9, '', 'Logged out'),
(1063, '2026-02-28 05:15:38', 9, '', 'Logged in'),
(1064, '2026-02-28 05:28:12', 9, '', 'Logged out'),
(1065, '2026-02-28 05:28:17', 18, '', 'Logged in'),
(1066, '2026-02-28 11:54:39', 1, '', 'Logged out'),
(1067, '2026-02-28 11:55:37', 1, '', 'Logged in'),
(1068, '2026-02-28 15:19:05', 18, '', 'Logged out'),
(1069, '2026-02-28 15:19:09', 18, '', 'Logged in'),
(1070, '2026-02-28 15:20:48', 18, '', 'Logged out'),
(1071, '2026-02-28 15:26:23', 1, '', 'Logged out'),
(1072, '2026-03-01 02:14:36', 1, '', 'Logged in'),
(1073, '2026-03-01 03:20:52', 1, '', 'Logged out'),
(1074, '2026-03-01 03:23:00', 1, '', 'Logged in'),
(1075, '2026-03-01 03:23:10', 1, '', 'Logged out'),
(1076, '2026-03-01 03:25:00', 1, '', 'Logged in'),
(1077, '2026-03-01 03:25:12', 1, '', 'Logged out'),
(1078, '2026-03-01 03:27:00', 1, '', 'Logged in'),
(1079, '2026-03-01 03:28:31', 1, '', 'Logged out'),
(1080, '2026-03-01 03:55:02', 1, '', 'Logged in'),
(1081, '2026-03-01 03:55:24', 1, '', 'Logged out'),
(1082, '2026-03-01 03:55:26', 1, '', 'Logged out'),
(1083, '2026-03-01 03:55:26', 1, '', 'Logged out'),
(1084, '2026-03-01 03:56:43', 1, '', 'Logged in'),
(1085, '2026-03-01 03:58:49', 1, '', 'Logged out'),
(1086, '2026-03-01 04:01:29', 1, '', 'Logged in'),
(1087, '2026-03-01 04:06:47', 1, '', 'Logged out'),
(1088, '2026-03-01 04:09:12', 1, '', 'Logged in'),
(1089, '2026-03-01 04:09:59', 1, '', 'Logged out'),
(1090, '2026-03-01 04:13:28', 1, '', 'Logged in'),
(1091, '2026-03-01 04:21:14', 1, '', 'Logged out'),
(1092, '2026-03-01 04:24:43', 1, '', 'Logged in'),
(1093, '2026-03-01 04:30:54', 1, '', 'Logged out'),
(1094, '2026-03-01 04:33:05', 1, '', 'Logged in'),
(1095, '2026-03-01 04:34:25', 18, '', 'Logged in'),
(1096, '2026-03-01 04:50:43', 1, '', 'Logged out'),
(1097, '2026-03-01 04:53:47', 1, '', 'Logged in'),
(1098, '2026-03-01 04:54:12', 1, '', 'Logged out'),
(1099, '2026-03-01 04:57:16', 1, '', 'Logged in'),
(1100, '2026-03-01 05:20:45', 18, '', 'Logged out'),
(1101, '2026-03-01 05:22:20', 18, '', 'Logged in'),
(1102, '2026-03-01 05:22:43', 18, '', 'Logged out'),
(1103, '2026-03-01 06:16:03', 18, '', 'Logged in'),
(1104, '2026-03-01 06:16:56', 18, '', 'Logged out'),
(1105, '2026-03-01 06:17:05', 47, '', 'Logged in'),
(1106, '2026-03-01 06:52:41', 47, '', 'Logged out'),
(1107, '2026-03-01 09:08:45', 1, '', 'Logged out'),
(1108, '2026-03-01 09:09:51', 1, '', 'Logged in'),
(1109, '2026-03-01 09:15:58', 18, '', 'Logged in'),
(1110, '2026-03-01 09:16:21', 18, '', 'Logged out'),
(1111, '2026-03-01 09:16:28', 47, '', 'Logged in'),
(1112, '2026-03-01 10:55:23', 47, '', 'Logged out'),
(1113, '2026-03-01 10:55:27', 1, '', 'Logged out'),
(1114, '2026-03-01 10:55:36', 47, '', 'Logged in'),
(1115, '2026-03-01 12:05:12', 47, '', 'Logged out'),
(1116, '2026-03-01 12:05:26', 9, '', 'Logged in'),
(1117, '2026-03-01 12:29:56', 9, '', 'Logged out'),
(1118, '2026-03-01 12:30:08', 1, '', 'Logged in'),
(1119, '2026-03-01 12:30:45', 1, '', 'Logged out'),
(1120, '2026-03-01 12:31:00', 9, '', 'Logged in'),
(1121, '2026-03-01 12:45:31', 9, '', 'Logged out'),
(1122, '2026-03-01 12:45:38', 1, '', 'Logged in'),
(1123, '2026-03-02 03:03:38', 1, '', 'Logged out'),
(1124, '2026-03-02 03:03:42', 1, '', 'Logged in'),
(1125, '2026-03-02 03:08:41', 47, '', 'Logged in'),
(1126, '2026-03-02 06:14:12', 1, '', 'Logged out'),
(1127, '2026-03-02 06:15:20', 1, '', 'Logged in'),
(1128, '2026-03-02 09:10:15', 1, '', 'Logged out'),
(1129, '2026-03-02 09:11:05', 47, '', 'Logged out'),
(1130, '2026-03-02 09:11:11', 47, '', 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `registrant_subscriptions`
--

CREATE TABLE `registrant_subscriptions` (
  `registrant_subscriptionId` int(11) NOT NULL,
  `registrant_subscriptionUserId` int(11) NOT NULL,
  `registrant_subscriptionRegistrantAccountName` longtext NOT NULL,
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

INSERT INTO `registrant_subscriptions` (`registrant_subscriptionId`, `registrant_subscriptionUserId`, `registrant_subscriptionRegistrantAccountName`, `registrant_subscriptionType`, `registrant_subscriptionDuration`, `registrant_subscriptionTotal`, `registrant_subscriptionPaymentOption`, `registrant_subscriptionSenderName`, `registrant_subscriptionSenderAccountNumber`, `registrant_subscriptionRefNumber`, `registrant_subscriptionProofOfPayment`, `registrant_subscriptionTimestamp`, `registrant_subscriptionStatus`, `registrant_subscriptionDate`, `registrant_subscriptionExpiry`) VALUES
(1, 1, 'Erfel Contiga Suriaga', 'Tools', '3', 207, 'GCASH', '', '', 'sdfdsgt', '/uploads/subscription/proof/userid-1-20260228225032.jpeg', '2026-02-28 22:50:32', 'Approved', '2026-02-28 23:04:08', '2026-05-29 23:04:08');

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
  `registrantWebsiteManagerAccount` varchar(64) NOT NULL,
  `registrantDeveloperAccount` varchar(64) NOT NULL,
  `registrantResearchesAccount` varchar(64) NOT NULL,
  `registrantVerificationStatus` varchar(64) NOT NULL DEFAULT 'Unverified',
  `registrantStatus` varchar(64) NOT NULL DEFAULT 'Good',
  `registrantCreatedAt` datetime NOT NULL,
  `resetTokenHash` varchar(64) NOT NULL,
  `resetTokenHashExpiration` datetime NOT NULL,
  `registrantPaymentChannel` varchar(64) NOT NULL,
  `registrantBankAccountName` varchar(150) NOT NULL,
  `registrantBankAccountNumber` varchar(64) NOT NULL,
  `registrantReviewSchedules` varchar(150) NOT NULL,
  `registrantConnectedUsers` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`registrantId`, `registrantCode`, `registrantFirstName`, `registrantMiddleName`, `registrantLastName`, `registrantAccountName`, `registrantDescription`, `registrantAccountType`, `registrantProfilePictureStatus`, `registrantProfilePictureLink`, `registrantCoverPhotoLink`, `registrantBirthdate`, `registrantGender`, `registrantCivilStatus`, `registrantAddressStreet`, `registrantAddressBarangay`, `registrantAddressCity`, `registrantAddressProvince`, `registrantAddressRegion`, `registrantAddressCountry`, `registrantAddressZipCode`, `registrantEducationalAttainment`, `registrantSchool`, `registrantOccupation`, `registrantEmailAddress`, `registrantMobileNumber`, `registrantUsername`, `registrantPassword`, `registrantConfirmationCode`, `registrantBasicAccount`, `registrantTeacherAccount`, `registrantWriterAccount`, `registrantEditorAccount`, `registrantWebsiteManagerAccount`, `registrantDeveloperAccount`, `registrantResearchesAccount`, `registrantVerificationStatus`, `registrantStatus`, `registrantCreatedAt`, `resetTokenHash`, `resetTokenHashExpiration`, `registrantPaymentChannel`, `registrantBankAccountName`, `registrantBankAccountNumber`, `registrantReviewSchedules`, `registrantConnectedUsers`) VALUES
(1, '2026000004271998', 'Erfel', 'Contiga', 'Suriaga', 'Erfel Contiga Suriaga', 'This is the official page of Erfel Suriaga.', 'Personal', 0, '/uploads/profile-pictures/Erfel_Suriaga-20260224001215.jpeg', '/uploads/cover-photos/Erfel_Suriaga-20260224001156.jpeg', '1997-04-27', 'Male', 'Single', 'Prk Kalubihan', '', 'CADIZ CITY', 'NEGROS OCCIDENTAL', 'NIR', 'Philippines', '', 'College Graduate', 'PNU Visayas', 'Teacher', 'suriagaerfel@gmail.com', '09942762632', 'erfelsuriaga', '$2y$10$VkD6VZI5Ag59Of9.nN5wzunDJOEQmH9qoQEj10qeljwIR9UtALmEq', '', 'Basic User', 'Teacher', 'Writer', 'Editor', 'Website Manager', 'Developer', '', 'Verified', 'Kept', '2025-10-08 14:24:42', '919ff9459bd3a7f022be51071612187675e3fb820a1898269f8f8922544f4968', '2026-02-24 00:40:17', 'PNB', 'Erfel Suriaga', '09942761634', 'Monday-Friday(8am -9am)', ''),
(9, '2026000004272006', '', '', '', 'Example National High School', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &amp;amp;amp;#039;Content here, content here&amp;amp;amp;#039;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &amp;amp;amp;#039;lorem ipsum&amp;amp;amp;#039; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'School', 1, '/uploads/profile-pictures/Example_National_High_School-20260223233903.jpeg', '/uploads/cover-photos/Example_National_High_School-20260223235005.jpeg', '0000-00-00', '', '', '', '', 'ALLACAPAN', 'CAGAYAN', 'REGION II', 'Philippines', '', '', '', '', 'sirversafel@gmail.com', '09942762632', 'examplenhs', '$2y$10$EY5ISxLZDiTZ/xoEcBnQM.iSLhhQl/4QyaiMlQgjZuBusdBkzX1KW', '', 'Junior High School', '', '', '', '', '', 'Researches', 'Verified', 'Kept', '2025-10-18 11:50:01', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(16, '2026000004272013', 'Erfiaga', '', 'Publishing', 'Erfiaga Publishing', '', 'Personal', 1, '', '', '2025-10-15', 'Hide Gender', '', '', '', '', '', '', 'Philippines', '', 'Associate Degree Holder', '', '', 'erfiagaprintsandbooks@gmail.com', '', 'erfiaga', '$2y$10$YiTGGjQ30rKhWRG7iOfWM.Oj5xua63HL74cTaqHgma2.sEya9yfSi', '', 'Basic User', '', '', '', '', '', '', 'Verified', 'Kept', '2025-10-30 11:53:47', '', '0000-00-00 00:00:00', '', '', '', '', ''),
(18, '2026000004272015', 'Erfel', '', 'Printing', 'Erfel Printing', '', 'Personal', 1, '/uploads/profile-pictures/Erfel_S_Printing-20260223233408.jpeg', '/uploads/cover-photos/Erfel_S_Printing-20260223233442.jpeg', '2025-11-18', 'Male', '', 'dsgdgg', 'SAN RAFAEL (IDIANG)', 'ITBAYAT', 'BATANES', 'REGION II', 'Philippines', '', '', 'PNU', 'Teacher', 'erfelprintingservices@gmail.com', '09942762632', 'eps', '$2y$10$I.d83QSfQ/LX5RJkvcG56OYuAToGU17g82TT5GLqpKGBhlqvQEKiC', '', 'Basic User', 'Teacher', 'Writer', 'Editor', '', '', '', 'Verified', 'Revoked', '2025-11-11 16:37:14', '7e87a4ba6af4acb315c171675730123bc1fabcb9a776e6536024f9ea1867bce7', '2026-01-06 17:23:12', 'GCASH', 'Erfel Suriaga', '09942762632', 'Mon-Fri', ''),
(47, '2026000004272044', 'Noy', '', 'Trebyu', 'Noy Trebyu', '', 'Personal', 1, '', '', '2026-02-14', 'Male', '', '', '', '', '', '', 'Philippines', '', '', '', '', 'noytrebyu@gmail.com', '', 'noytrebyu', '$2y$10$aenkYulz0RMAzA/j.7lPw./ymIO2IIASV1EinwFV50ocbC7nMjnN6', '', 'Basic User', '', '', '', '', '', '', 'Verified', 'Good', '2026-02-24 12:15:52', '', '0000-00-00 00:00:00', '', '', '', '', '');

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
(68, 'rtty', 'rtty', 'Uncategorized', 'trhh', 'Free Access', 'thtrh', 'rhhrhr', 1, '', 'pdf', '18', '0000-00-00 00:00:00', '2026-02-12 14:57:54', '2026-02-21 22:02:42', 'Unpublished', 'Not for Sale', 0, '/uploads/documents/teacher/files/18-72747479.pdf'),
(83, 'dhfgh', 'dhfgh', 'Test Paper', '', 'Free Access', '46', 'hgfhgfjgfjgjhj', 1, '', 'pdf', '18', '0000-00-00 00:00:00', '2026-02-13 22:36:06', '2026-02-19 14:20:14', 'Unpublished', 'Not for Sale', 0, '/uploads/documents/teacher/files/18-6468666768.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `thread_messages`
--

CREATE TABLE `thread_messages` (
  `thread_messageId` int(20) NOT NULL,
  `thread_messageThreadCode` varchar(100) NOT NULL,
  `thread_messageRegistrantId` int(11) NOT NULL,
  `thread_messageContent` longtext NOT NULL,
  `thread_messageTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `thread_messageStatus` varchar(64) NOT NULL DEFAULT 'Unread',
  `thread_messageStatusSender` varchar(64) NOT NULL DEFAULT 'Read',
  `thread_messageStatusRecipient` varchar(64) NOT NULL DEFAULT 'Unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thread_messages`
--

INSERT INTO `thread_messages` (`thread_messageId`, `thread_messageThreadCode`, `thread_messageRegistrantId`, `thread_messageContent`, `thread_messageTimestamp`, `thread_messageStatus`, `thread_messageStatusSender`, `thread_messageStatusRecipient`) VALUES
(1, '20260000042719982026000004271998', 1, 'to erfel personal', '2026-02-28 08:13:33', 'Unread', 'Read', 'Unread'),
(2, 'TOADMIN2026000004271998', 1, 'to erfel message manager', '2026-02-28 08:13:49', 'Unread', 'Read', 'Unread'),
(3, '20260000042719982026000004272015', 1, 'to eps personal', '2026-02-28 08:14:15', 'Unread', 'Read', 'Read'),
(4, 'TOADMIN2026000004272015', 1, 'to eps message manager', '2026-02-28 08:14:26', 'Unread', 'Read', 'Read'),
(5, '20260000042720152026000004272015', 18, 'to me', '2026-02-28 08:16:22', 'Unread', 'Read', 'Unread'),
(6, '20260000042719982026000004271998', 1, 'to myself', '2026-02-28 08:41:25', 'Unread', 'Read', 'Unread'),
(7, '20260000042719982026000004272015', 1, 'to eps', '2026-02-28 08:41:33', 'Unread', 'Read', 'Read'),
(8, '20260000042719982026000004271998', 1, 'ertt', '2026-02-28 15:17:23', 'Unread', 'Read', 'Unread'),
(9, '20260000042719982026000004272015', 1, 'fel?', '2026-02-28 15:17:34', 'Unread', 'Read', 'Read'),
(10, '20260000042719982026000004272015', 18, 'yes?', '2026-02-28 15:19:38', 'Unread', 'Read', 'Read'),
(11, '20260000042719982026000004272015', 1, 'nothing', '2026-02-28 15:19:57', 'Unread', 'Read', 'Read'),
(12, '20260000042719982026000004271998', 1, 'hhjj', '2026-03-01 03:27:08', 'Unread', 'Read', 'Unread'),
(13, '20260000042719982026000004271998', 1, 'rgsgsgg', '2026-03-01 03:55:16', 'Unread', 'Read', 'Unread'),
(14, '20260000042719982026000004271998', 1, 'er', '2026-03-01 04:13:47', 'Unread', 'Read', 'Unread'),
(15, 'TOADMIN2026000004272015', 18, 'hello', '2026-03-01 05:20:30', 'Unread', 'Read', 'Read'),
(16, '20260000042720062026000004271998', 9, 'hello', '2026-03-01 12:12:24', 'Unread', 'Read', 'Unread'),
(17, 'TOADMIN2026000004272044', 47, 'Good day, EskQuip!', '2026-03-02 03:08:58', 'Unread', 'Read', 'Read'),
(18, 'TOADMIN2026000004272044', 1, 'Good day!', '2026-03-02 03:09:22', 'Unread', 'Read', 'Read'),
(19, '20260000042720442026000004271998', 47, 'Hello erfel', '2026-03-02 03:09:38', 'Unread', 'Read', 'Read'),
(20, '20260000042720442026000004271998', 47, 'njghg', '2026-03-02 09:19:48', 'Unread', 'Read', 'Unread');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `updateId` int(11) NOT NULL,
  `updateType` varchar(100) NOT NULL,
  `updateTitle` longtext NOT NULL,
  `updateStatus` varchar(64) NOT NULL DEFAULT 'Draft',
  `updateTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateRegistrantId` int(11) NOT NULL,
  `updateContent` longtext NOT NULL,
  `updateSlug` longtext NOT NULL,
  `updatePubDate` datetime NOT NULL,
  `updateUpdateDate` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`updateId`, `updateType`, `updateTitle`, `updateStatus`, `updateTimestamp`, `updateRegistrantId`, `updateContent`, `updateSlug`, `updatePubDate`, `updateUpdateDate`) VALUES
(3, 'Subscription', 'Scheduled Maintenance', 'Unpublished', '2026-02-25 14:28:17', 1, 'Maintenance is the process of keeping equipment, machinery, buildings, or systems in good working condition through regular cleaning, repair, and inspection to prevent failure. It ensures operational efficiency, safety, and longevity, and can also refer to financial support or the act of keeping a situation stable.', 'scheduled+maintenance', '2026-02-25 22:35:59', '2026-03-01 10:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `website_manager_accounts`
--

CREATE TABLE `website_manager_accounts` (
  `website_manager_accountId` int(11) NOT NULL,
  `website_manager_accountRegistrant` int(11) NOT NULL,
  `website_manager_accountSuperManager` varchar(100) NOT NULL,
  `website_manager_accountSubscriptionManager` varchar(100) NOT NULL,
  `website_manager_accountRegistrationManager` varchar(100) NOT NULL,
  `website_manager_accountPromotionManager` varchar(100) NOT NULL,
  `website_manager_accountMessageManager` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `website_manager_accounts`
--

INSERT INTO `website_manager_accounts` (`website_manager_accountId`, `website_manager_accountRegistrant`, `website_manager_accountSuperManager`, `website_manager_accountSubscriptionManager`, `website_manager_accountRegistrationManager`, `website_manager_accountPromotionManager`, `website_manager_accountMessageManager`) VALUES
(1, 1, 'Super Manager', '', '', '', ''),
(3, 46, 'Super Manager', '', '', '', ''),
(4, 40, '', '', '', '', ''),
(5, 18, '', '', '', '', ''),
(6, 16, '', '', '', '', ''),
(7, 47, '', '', '', '', '');

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
(143, 'dsgdfgfdh', 'undefined', 'dsgdfgfdh', '', 'News', 'Free Access', '', '', 18, '', '1', '2026-02-26 21:36:57', '2026-02-26 22:47:17', '2026-02-26 21:37:12', 'gfhgfjhjhj', 1, 'To Revise', '');

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
-- Indexes for table `content_comments`
--
ALTER TABLE `content_comments`
  ADD PRIMARY KEY (`content_commentId`);

--
-- Indexes for table `content_performance`
--
ALTER TABLE `content_performance`
  ADD PRIMARY KEY (`content_viewId`);

--
-- Indexes for table `content_purchase`
--
ALTER TABLE `content_purchase`
  ADD PRIMARY KEY (`content_purchaseId`);

--
-- Indexes for table `content_tags`
--
ALTER TABLE `content_tags`
  ADD PRIMARY KEY (`content_tagId`);

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
-- Indexes for table `from_no_admin_users_messages`
--
ALTER TABLE `from_no_admin_users_messages`
  ADD PRIMARY KEY (`from_no_admin_users_messageId`);

--
-- Indexes for table `message_threads`
--
ALTER TABLE `message_threads`
  ADD PRIMARY KEY (`message_threadId`);

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
-- Indexes for table `thread_messages`
--
ALTER TABLE `thread_messages`
  ADD PRIMARY KEY (`thread_messageId`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`updateId`);

--
-- Indexes for table `website_manager_accounts`
--
ALTER TABLE `website_manager_accounts`
  ADD PRIMARY KEY (`website_manager_accountId`);

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
  MODIFY `contentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `content_categories`
--
ALTER TABLE `content_categories`
  MODIFY `content_categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `content_comments`
--
ALTER TABLE `content_comments`
  MODIFY `content_commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `content_performance`
--
ALTER TABLE `content_performance`
  MODIFY `content_viewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content_purchase`
--
ALTER TABLE `content_purchase`
  MODIFY `content_purchaseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `content_tags`
--
ALTER TABLE `content_tags`
  MODIFY `content_tagId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content_versions`
--
ALTER TABLE `content_versions`
  MODIFY `content_versionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `developer_tools`
--
ALTER TABLE `developer_tools`
  MODIFY `developer_toolId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `developer_tool_files`
--
ALTER TABLE `developer_tool_files`
  MODIFY `developer_tool_fileId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `editor_edits`
--
ALTER TABLE `editor_edits`
  MODIFY `editor_editId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `from_no_admin_users_messages`
--
ALTER TABLE `from_no_admin_users_messages`
  MODIFY `from_no_admin_users_messageId` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_threads`
--
ALTER TABLE `message_threads`
  MODIFY `message_threadId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `other_registrations`
--
ALTER TABLE `other_registrations`
  MODIFY `otherId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `promotionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `registrant_activities`
--
ALTER TABLE `registrant_activities`
  MODIFY `registrant_activityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1131;

--
-- AUTO_INCREMENT for table `registrant_subscriptions`
--
ALTER TABLE `registrant_subscriptions`
  MODIFY `registrant_subscriptionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `registrantId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `school_researches`
--
ALTER TABLE `school_researches`
  MODIFY `school_researchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `teacher_files`
--
ALTER TABLE `teacher_files`
  MODIFY `teacher_fileId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `thread_messages`
--
ALTER TABLE `thread_messages`
  MODIFY `thread_messageId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `updateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `website_manager_accounts`
--
ALTER TABLE `website_manager_accounts`
  MODIFY `website_manager_accountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `writer_articles`
--
ALTER TABLE `writer_articles`
  MODIFY `writer_articleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
