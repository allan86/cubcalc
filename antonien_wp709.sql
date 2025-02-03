-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03/02/2025 às 16:21
-- Versão do servidor: 10.6.20-MariaDB-cll-lve
-- Versão do PHP: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `antonien_wp709`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_commentmeta`
--

CREATE TABLE `wpwv_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_comments`
--

CREATE TABLE `wpwv_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpwv_comments`
--

INSERT INTO `wpwv_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-02-01 18:34:59', '2025-02-01 18:34:59', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_cubcalc_indices`
--

CREATE TABLE `wpwv_cubcalc_indices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estado` char(2) NOT NULL,
  `tipo_obra` varchar(50) NOT NULL,
  `padrao` varchar(20) NOT NULL,
  `custo` decimal(10,2) NOT NULL DEFAULT 0.00,
  `mes` varchar(20) NOT NULL,
  `ano` int(4) NOT NULL,
  `sinduscon` varchar(50) NOT NULL,
  `sinduscon_referencia` varchar(50) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpwv_cubcalc_indices`
--

INSERT INTO `wpwv_cubcalc_indices` (`id`, `estado`, `tipo_obra`, `padrao`, `custo`, `mes`, `ano`, `sinduscon`, `sinduscon_referencia`, `descricao`) VALUES
(1, 'AC', 'R1', 'padrao_baixo', 7.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(2, 'AC', 'R1', 'padrao_normal', 555.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(3, 'AC', 'R1', 'padrao_alto', 555.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(4, 'AC', 'R8', 'padrao_baixo', 555.00, '', 0, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(5, 'AC', 'R8', 'padrao_normal', 555.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(6, 'AC', 'R8', 'padrao_alto', 5555.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(7, 'AC', 'PP4', 'padrao_baixo', 55555.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(8, 'AC', 'PP4', 'padrao_normal', 55555.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(9, 'AC', 'PP4', 'padrao_alto', 555555.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(10, 'AC', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(11, 'AC', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(12, 'AC', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(13, 'AC', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(14, 'AC', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(15, 'AC', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(16, 'AC', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AC NORTE', 'Cadastro inicial - Editar'),
(17, 'AL', 'R1', 'padrao_baixo', 1.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(18, 'AL', 'R1', 'padrao_normal', 1.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(19, 'AL', 'R1', 'padrao_alto', 1.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(20, 'AL', 'R8', 'padrao_baixo', 1.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(21, 'AL', 'R8', 'padrao_normal', 1.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(22, 'AL', 'R8', 'padrao_alto', 1.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(23, 'AL', 'PP4', 'padrao_baixo', 1.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(24, 'AL', 'PP4', 'padrao_normal', 2.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(25, 'AL', 'PP4', 'padrao_alto', 33.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(26, 'AL', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(27, 'AL', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(28, 'AL', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(29, 'AL', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(30, 'AL', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(31, 'AL', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(32, 'AL', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AL', 'Cadastro inicial - Editar'),
(33, 'AP', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(34, 'AP', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(35, 'AP', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(36, 'AP', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(37, 'AP', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(38, 'AP', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(39, 'AP', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(40, 'AP', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(41, 'AP', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(42, 'AP', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(43, 'AP', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(44, 'AP', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(45, 'AP', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(46, 'AP', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(47, 'AP', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(48, 'AP', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AP', 'Cadastro inicial - Editar'),
(49, 'AM', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(50, 'AM', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(51, 'AM', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(52, 'AM', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(53, 'AM', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(54, 'AM', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(55, 'AM', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(56, 'AM', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(57, 'AM', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(58, 'AM', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(59, 'AM', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(60, 'AM', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(61, 'AM', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(62, 'AM', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(63, 'AM', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(64, 'AM', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/AM', 'Cadastro inicial - Editar'),
(65, 'BA', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(66, 'BA', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(67, 'BA', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(68, 'BA', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(69, 'BA', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(70, 'BA', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(71, 'BA', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(72, 'BA', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(73, 'BA', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(74, 'BA', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(75, 'BA', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(76, 'BA', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(77, 'BA', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(78, 'BA', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(79, 'BA', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(80, 'BA', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/BA', 'Cadastro inicial - Editar'),
(81, 'CE', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(82, 'CE', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(83, 'CE', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(84, 'CE', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(85, 'CE', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(86, 'CE', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(87, 'CE', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(88, 'CE', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(89, 'CE', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(90, 'CE', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(91, 'CE', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(92, 'CE', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(93, 'CE', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(94, 'CE', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(95, 'CE', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(96, 'CE', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/CE', 'Cadastro inicial - Editar'),
(97, 'DF', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(98, 'DF', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(99, 'DF', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(100, 'DF', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(101, 'DF', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(102, 'DF', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(103, 'DF', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(104, 'DF', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(105, 'DF', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(106, 'DF', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(107, 'DF', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(108, 'DF', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(109, 'DF', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(110, 'DF', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(111, 'DF', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(112, 'DF', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/DF', 'Cadastro inicial - Editar'),
(113, 'ES', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(114, 'ES', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(115, 'ES', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(116, 'ES', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(117, 'ES', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(118, 'ES', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(119, 'ES', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(120, 'ES', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(121, 'ES', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(122, 'ES', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(123, 'ES', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(124, 'ES', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(125, 'ES', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(126, 'ES', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(127, 'ES', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(128, 'ES', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/ES', 'Cadastro inicial - Editar'),
(129, 'GO', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(130, 'GO', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(131, 'GO', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(132, 'GO', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(133, 'GO', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(134, 'GO', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(135, 'GO', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(136, 'GO', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(137, 'GO', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(138, 'GO', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(139, 'GO', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(140, 'GO', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(141, 'GO', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(142, 'GO', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(143, 'GO', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(144, 'GO', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/GO', 'Cadastro inicial - Editar'),
(145, 'MA', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(146, 'MA', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(147, 'MA', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(148, 'MA', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(149, 'MA', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(150, 'MA', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(151, 'MA', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(152, 'MA', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(153, 'MA', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(154, 'MA', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(155, 'MA', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(156, 'MA', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(157, 'MA', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(158, 'MA', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(159, 'MA', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(160, 'MA', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MA', 'Cadastro inicial - Editar'),
(161, 'MT', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(162, 'MT', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(163, 'MT', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(164, 'MT', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(165, 'MT', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(166, 'MT', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(167, 'MT', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(168, 'MT', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(169, 'MT', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(170, 'MT', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(171, 'MT', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(172, 'MT', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(173, 'MT', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(174, 'MT', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(175, 'MT', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(176, 'MT', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MT', 'Cadastro inicial - Editar'),
(177, 'MS', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(178, 'MS', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(179, 'MS', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(180, 'MS', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(181, 'MS', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(182, 'MS', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(183, 'MS', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(184, 'MS', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(185, 'MS', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(186, 'MS', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(187, 'MS', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(188, 'MS', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(189, 'MS', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(190, 'MS', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(191, 'MS', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(192, 'MS', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MS', 'Cadastro inicial - Editar'),
(193, 'MG', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(194, 'MG', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(195, 'MG', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(196, 'MG', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(197, 'MG', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(198, 'MG', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(199, 'MG', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(200, 'MG', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(201, 'MG', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(202, 'MG', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(203, 'MG', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(204, 'MG', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(205, 'MG', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(206, 'MG', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(207, 'MG', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(208, 'MG', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/MG', 'Cadastro inicial - Editar'),
(209, 'PA', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(210, 'PA', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(211, 'PA', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(212, 'PA', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(213, 'PA', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(214, 'PA', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(215, 'PA', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(216, 'PA', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(217, 'PA', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(218, 'PA', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(219, 'PA', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(220, 'PA', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(221, 'PA', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(222, 'PA', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(223, 'PA', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(224, 'PA', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PA', 'Cadastro inicial - Editar'),
(225, 'PB', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(226, 'PB', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(227, 'PB', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(228, 'PB', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(229, 'PB', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(230, 'PB', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(231, 'PB', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(232, 'PB', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(233, 'PB', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(234, 'PB', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(235, 'PB', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(236, 'PB', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(237, 'PB', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(238, 'PB', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(239, 'PB', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(240, 'PB', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PB', 'Cadastro inicial - Editar'),
(241, 'PR', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(242, 'PR', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(243, 'PR', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(244, 'PR', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(245, 'PR', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(246, 'PR', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(247, 'PR', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(248, 'PR', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(249, 'PR', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(250, 'PR', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(251, 'PR', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(252, 'PR', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(253, 'PR', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(254, 'PR', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(255, 'PR', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(256, 'PR', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PR', 'Cadastro inicial - Editar'),
(257, 'PE', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(258, 'PE', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(259, 'PE', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(260, 'PE', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(261, 'PE', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(262, 'PE', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(263, 'PE', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(264, 'PE', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(265, 'PE', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(266, 'PE', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(267, 'PE', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(268, 'PE', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(269, 'PE', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(270, 'PE', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(271, 'PE', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(272, 'PE', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PE', 'Cadastro inicial - Editar'),
(273, 'PI', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(274, 'PI', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(275, 'PI', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(276, 'PI', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(277, 'PI', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(278, 'PI', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(279, 'PI', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(280, 'PI', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(281, 'PI', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(282, 'PI', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(283, 'PI', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(284, 'PI', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(285, 'PI', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(286, 'PI', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(287, 'PI', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(288, 'PI', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/PI', 'Cadastro inicial - Editar'),
(289, 'RJ', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(290, 'RJ', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(291, 'RJ', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(292, 'RJ', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(293, 'RJ', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(294, 'RJ', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(295, 'RJ', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(296, 'RJ', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(297, 'RJ', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(298, 'RJ', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(299, 'RJ', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(300, 'RJ', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(301, 'RJ', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(302, 'RJ', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(303, 'RJ', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(304, 'RJ', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RJ', 'Cadastro inicial - Editar'),
(305, 'RN', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(306, 'RN', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(307, 'RN', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(308, 'RN', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(309, 'RN', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(310, 'RN', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(311, 'RN', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(312, 'RN', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(313, 'RN', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(314, 'RN', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(315, 'RN', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(316, 'RN', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(317, 'RN', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(318, 'RN', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(319, 'RN', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(320, 'RN', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RN', 'Cadastro inicial - Editar'),
(321, 'RS', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(322, 'RS', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(323, 'RS', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(324, 'RS', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(325, 'RS', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(326, 'RS', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(327, 'RS', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(328, 'RS', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(329, 'RS', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(330, 'RS', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(331, 'RS', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(332, 'RS', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(333, 'RS', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(334, 'RS', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(335, 'RS', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(336, 'RS', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RS', 'Cadastro inicial - Editar'),
(337, 'RO', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(338, 'RO', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(339, 'RO', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(340, 'RO', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(341, 'RO', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(342, 'RO', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(343, 'RO', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(344, 'RO', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(345, 'RO', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(346, 'RO', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(347, 'RO', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(348, 'RO', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(349, 'RO', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(350, 'RO', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(351, 'RO', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(352, 'RO', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RO', 'Cadastro inicial - Editar'),
(353, 'RR', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(354, 'RR', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(355, 'RR', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(356, 'RR', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(357, 'RR', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(358, 'RR', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(359, 'RR', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(360, 'RR', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(361, 'RR', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(362, 'RR', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(363, 'RR', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(364, 'RR', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(365, 'RR', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(366, 'RR', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(367, 'RR', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(368, 'RR', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/RR', 'Cadastro inicial - Editar'),
(369, 'SC', 'R1', 'padrao_baixo', 1000.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(370, 'SC', 'R1', 'padrao_normal', 2890.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(371, 'SC', 'R1', 'padrao_alto', 222.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(372, 'SC', 'R8', 'padrao_baixo', 222.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(373, 'SC', 'R8', 'padrao_normal', 222.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(374, 'SC', 'R8', 'padrao_alto', 222.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(375, 'SC', 'PP4', 'padrao_baixo', 222.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(376, 'SC', 'PP4', 'padrao_normal', 222.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(377, 'SC', 'PP4', 'padrao_alto', 222.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(378, 'SC', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(379, 'SC', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(380, 'SC', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(381, 'SC', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(382, 'SC', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(383, 'SC', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(384, 'SC', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SC', 'Cadastro inicial - Editar'),
(385, 'SP', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(386, 'SP', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(387, 'SP', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(388, 'SP', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(389, 'SP', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(390, 'SP', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(391, 'SP', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(392, 'SP', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(393, 'SP', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(394, 'SP', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(395, 'SP', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(396, 'SP', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(397, 'SP', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(398, 'SP', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(399, 'SP', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(400, 'SP', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SP', 'Cadastro inicial - Editar'),
(401, 'SE', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(402, 'SE', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(403, 'SE', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(404, 'SE', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(405, 'SE', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(406, 'SE', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(407, 'SE', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(408, 'SE', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(409, 'SE', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(410, 'SE', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(411, 'SE', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(412, 'SE', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(413, 'SE', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(414, 'SE', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(415, 'SE', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(416, 'SE', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/SE', 'Cadastro inicial - Editar'),
(417, 'TO', 'R1', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(418, 'TO', 'R1', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(419, 'TO', 'R1', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(420, 'TO', 'R8', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(421, 'TO', 'R8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(422, 'TO', 'R8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(423, 'TO', 'PP4', 'padrao_baixo', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(424, 'TO', 'PP4', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(425, 'TO', 'PP4', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(426, 'TO', 'CAL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(427, 'TO', 'CAL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(428, 'TO', 'CSL-8', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(429, 'TO', 'CSL-8', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(430, 'TO', 'CSL-16', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(431, 'TO', 'CSL-16', 'padrao_alto', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar'),
(432, 'TO', 'GI', 'padrao_normal', 0.00, 'Fevereiro', 2025, '', 'SINDUSCON/TO', 'Cadastro inicial - Editar');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_cubcalc_logs`
--

CREATE TABLE `wpwv_cubcalc_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_obra` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `area` decimal(10,2) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `data` datetime NOT NULL,
  `data_calculo` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_cub_data`
--

CREATE TABLE `wpwv_cub_data` (
  `id` mediumint(9) NOT NULL,
  `state` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `standard` varchar(50) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_links`
--

CREATE TABLE `wpwv_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_options`
--

CREATE TABLE `wpwv_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpwv_options`
--

INSERT INTO `wpwv_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1738611300;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1738650899;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1738650900;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1738650912;a:1:{s:36:\"check_plugin_updates-softaculous-pro\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1738650915;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1738684339;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1738694099;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1738694121;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1738694700;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1739039702;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1739126099;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'https://ti.antoniengenharia.com', 'on'),
(3, 'home', 'https://ti.antoniengenharia.com', 'on'),
(4, 'blogname', 'Dev.', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'allan.antoni@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'm/d/Y', 'on'),
(25, 'time_format', 'G:i', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:2:{i:0;s:19:\"cubcalc/cubcalc.php\";i:1;s:35:\"softaculous-pro/softaculous-pro.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '-3', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'twentytwentyfive', 'on'),
(42, 'stylesheet', 'twentytwentyfive', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:2:{s:35:\"softaculous-pro/softaculous-pro.php\";s:30:\"softaculous_pro_uninstall_hook\";s:19:\"cubcalc/cubcalc.php\";a:2:{i:0;s:16:\"Cubcalc_Database\";i:1;s:12:\"on_uninstall\";}}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1753986899', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wpwv_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'recovery_keys', 'a:1:{s:22:\"WFGNZKW8Y72sqUqwOHEMkh\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BA/Xs7.dihNmNFVdELzzZNfY/PVpbo0\";s:10:\"created_at\";i:1738524201;}}', 'off'),
(122, 'theme_mods_twentytwentyfive', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'auto'),
(123, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(291, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1738609578;s:7:\"checked\";a:3:{s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.0.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:16:\"twentytwentyfive\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2025-01-29 01:27:12\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/translation/theme/twentytwentyfive/1.0/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:16:\"twentytwentyfour\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.3\";s:7:\"updated\";s:19:\"2024-09-08 21:55:32\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/translation/theme/twentytwentyfour/1.3/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:17:\"twentytwentythree\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2022-10-26 19:28:33\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/theme/twentytwentythree/1.6/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}', 'off'),
(350, '_site_transient_timeout_theme_roots', '1738611377', 'off'),
(351, '_site_transient_theme_roots', 'a:3:{s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'off');
INSERT INTO `wpwv_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(130, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"69f3d4f33efd057759fc0ba05928ee4c\";s:6:\"blocks\";a:52:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:12:\"core/columns\";s:769:\":root :where(.wp-block-columns-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flex){gap: var(--wp--preset--spacing--50);}:root :where(.wp-block-columns-is-layout-grid){gap: var(--wp--preset--spacing--50);}\";s:14:\"core/pullquote\";s:306:\":root :where(.wp-block-pullquote){font-size: var(--wp--preset--font-size--xx-large);font-weight: 300;line-height: 1.2;padding-top: var(--wp--preset--spacing--30);padding-bottom: var(--wp--preset--spacing--30);}:root :where(.wp-block-pullquote p:last-of-type){margin-bottom: var(--wp--preset--spacing--30);}\";s:32:\"c48738dcb285a3f6ab83acff204fc486\";s:106:\":root :where(.wp-block-pullquote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;}\";s:11:\"core/avatar\";s:57:\":root :where(.wp-block-avatar img){border-radius: 100px;}\";s:12:\"core/buttons\";s:665:\":root :where(.wp-block-buttons-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flow) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flex){gap: 16px;}:root :where(.wp-block-buttons-is-layout-grid){gap: 16px;}\";s:9:\"core/code\";s:427:\":root :where(.wp-block-code){background-color: var(--wp--preset--color--accent-5);color: var(--wp--preset--color--contrast);font-family: var(--wp--preset--font-family--fira-code);font-size: var(--wp--preset--font-size--medium);font-weight: 300;padding-top: var(--wp--preset--spacing--40);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);padding-left: var(--wp--preset--spacing--40);}\";s:24:\"core/comment-author-name\";s:169:\":root :where(.wp-block-comment-author-name){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);margin-top: 5px;margin-bottom: 0px;}\";s:32:\"c0002c260f8238c4212f3e4c369fc4f7\";s:143:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"1e7c38b45537b325dbbbaec17a301676\";s:112:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:20:\"core/comment-content\";s:178:\":root :where(.wp-block-comment-content){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--30);margin-bottom: var(--wp--preset--spacing--30);}\";s:17:\"core/comment-date\";s:127:\":root :where(.wp-block-comment-date){color: var(--wp--preset--color--contrast);font-size: var(--wp--preset--font-size--small);}\";s:32:\"c83ca7b3e52884c70f7830c54f99b318\";s:114:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:22:\"core/comment-edit-link\";s:90:\":root :where(.wp-block-comment-edit-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"41d70710612536a90e368c12bcb0efea\";s:119:\":root :where(.wp-block-comment-edit-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/comment-reply-link\";s:91:\":root :where(.wp-block-comment-reply-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"13c96340dbf37700add1f4c5cae19f3e\";s:120:\":root :where(.wp-block-comment-reply-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/post-comments-form\";s:565:\":root :where(.wp-block-post-comments-form){font-size: var(--wp--preset--font-size--medium);padding-top: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);}:root :where(.wp-block-post-comments-form textarea, .wp-block-post-comments-form input:not([type=submit])){border-radius:.25rem; border-color: var(--wp--preset--color--accent-6) !important;}:root :where(.wp-block-post-comments-form input[type=checkbox]){margin:0 .2rem 0 0 !important;}:root :where(.wp-block-post-comments-form label){font-size: var(--wp--preset--font-size--small);}\";s:24:\"core/comments-pagination\";s:182:\":root :where(.wp-block-comments-pagination){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--40);margin-bottom: var(--wp--preset--spacing--40);}\";s:29:\"core/comments-pagination-next\";s:98:\":root :where(.wp-block-comments-pagination-next){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"core/comments-pagination-numbers\";s:101:\":root :where(.wp-block-comments-pagination-numbers){font-size: var(--wp--preset--font-size--medium);}\";s:33:\"core/comments-pagination-previous\";s:102:\":root :where(.wp-block-comments-pagination-previous){font-size: var(--wp--preset--font-size--medium);}\";s:14:\"core/post-date\";s:124:\":root :where(.wp-block-post-date){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);}\";s:32:\"ac0d4e00f5ec22d14451759983e5bd43\";s:133:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"0ae6ffd1b886044c2da62d75d05ab13d\";s:102:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:25:\"core/post-navigation-link\";s:94:\":root :where(.wp-block-post-navigation-link){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/post-terms\";s:158:\":root :where(.wp-block-post-terms){font-size: var(--wp--preset--font-size--small);font-weight: 600;}:root :where(.wp-block-post-terms a){white-space: nowrap;}\";s:15:\"core/post-title\";s:0:\"\";s:32:\"bb496d3fcd9be3502ce57ff8281e5687\";s:92:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"12380ab98fdc81351bb32a39bbfc9249\";s:103:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:10:\"core/quote\";s:1315:\":root :where(.wp-block-quote){border-color: currentColor;border-width: 0 0 0 2px;border-style: solid;font-size: var(--wp--preset--font-size--large);font-weight: 300;margin-right: 0;margin-left: 0;padding-top: var(--wp--preset--spacing--30);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--30);padding-left: var(--wp--preset--spacing--40);}:root :where(.wp-block-quote-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flex){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote-is-layout-grid){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote.has-text-align-right ){border-width: 0 2px 0 0;}:root :where(.wp-block-quote.has-text-align-center ){border-width: 0;border-inline: 0; padding-inline: 0;}\";s:32:\"1de7a22e22013106efc5be82788cb6c0\";s:176:\":root :where(.wp-block-quote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;font-weight: 300;}:root :where(.wp-block-quote cite sub){font-size: 0.65em}\";s:21:\"core/query-pagination\";s:107:\":root :where(.wp-block-query-pagination){font-size: var(--wp--preset--font-size--medium);font-weight: 500;}\";s:11:\"core/search\";s:380:\":root :where(.wp-block-search .wp-block-search__label, .wp-block-search .wp-block-search__input, .wp-block-search .wp-block-search__button){font-size: var(--wp--preset--font-size--medium);line-height: 1.6;}:root :where(.wp-block-search .wp-block-search__input){border-radius:3.125rem;padding-left:1.5625rem;padding-right:1.5625rem;border-color:var(--wp--preset--color--accent-6);}\";s:32:\"14fa6a3d0cfbde171cbc0fb04aa8a6cf\";s:138:\":root :where(.wp-block-search .wp-element-button,.wp-block-search  .wp-block-button__link){border-radius: 3.125rem;margin-left: 1.125rem;}\";s:32:\"05993ee2f3de94b5d1350998a7e9b6b0\";s:130:\":root :where(.wp-block-search .wp-element-button:hover,.wp-block-search  .wp-block-button__link:hover){border-color: transparent;}\";s:14:\"core/separator\";s:148:\":root :where(.wp-block-separator){border-color: currentColor;border-width: 0 0 1px 0;border-style: solid;color: var(--wp--preset--color--accent-6);}\";s:17:\"core/site-tagline\";s:86:\":root :where(.wp-block-site-tagline){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/site-title\";s:75:\":root :where(.wp-block-site-title){font-weight: 700;letter-spacing: -.5px;}\";s:32:\"f513d889cf971b13995cc3fffed2f39b\";s:92:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"22c37a317cc0ebd50155b5ad78564f37\";s:103:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:21:\"core/term-description\";s:90:\":root :where(.wp-block-term-description){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/navigation\";s:84:\":root :where(.wp-block-navigation){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"25289a01850f5a0264ddb79a9a3baf3d\";s:92:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"026c04da08398d655a95047f1f235d97\";s:103:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:9:\"core/list\";s:52:\":root :where(.wp-block-list li){margin-top: 0.5rem;}\";s:12:\"core/heading\";s:0:\"\";s:14:\"core/paragraph\";s:0:\"\";s:10:\"core/group\";s:0:\"\";s:11:\"core/column\";s:0:\"\";}}', 'on'),
(131, 'WPLANG', 'pt_BR', 'yes'),
(289, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1738527467;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:0:{}}', 'off'),
(290, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1738609578;s:8:\"response\";a:0:{}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.3.5\";s:7:\"updated\";s:19:\"2024-11-18 21:27:02\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/5.3.5/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'off'),
(133, 'softaculous_pro_license', 'a:14:{s:7:\"license\";s:30:\"SOFTWP-16604-29233-25930-76253\";s:7:\"expires\";s:8:\"20250220\";s:4:\"type\";s:1:\"1\";s:8:\"type_txt\";s:7:\"Premium\";s:9:\"num_sites\";N;s:4:\"plan\";s:8:\"personal\";s:6:\"active\";i:1;s:10:\"licexpired\";N;s:4:\"thid\";N;s:6:\"status\";i:1;s:9:\"last_edit\";s:10:\"1738434901\";s:10:\"status_txt\";s:33:\"<font color=\"green\">Active</font>\";s:8:\"has_plid\";i:1;s:11:\"last_update\";i:1738609586;}', 'yes'),
(347, '_site_transient_timeout_wp_theme_files_patterns-b9305cabbcafd9b4e8e0c589af60a58d', '1738611377', 'off'),
(348, '_site_transient_wp_theme_files_patterns-b9305cabbcafd9b4e8e0c589af60a58d', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:98:{s:21:\"banner-about-book.php\";a:4:{s:5:\"title\";s:28:\"Banner with book description\";s:4:\"slug\";s:34:\"twentytwentyfive/banner-about-book\";s:11:\"description\";s:66:\"Banner with book description and accompanying image for promotion.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:28:\"banner-cover-big-heading.php\";a:4:{s:5:\"title\";s:22:\"Cover with big heading\";s:4:\"slug\";s:41:\"twentytwentyfive/banner-cover-big-heading\";s:11:\"description\";s:82:\"A full-width cover section with a large background image and an oversized heading.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}}s:22:\"banner-intro-image.php\";a:4:{s:5:\"title\";s:49:\"Short heading and paragraph and image on the left\";s:4:\"slug\";s:35:\"twentytwentyfive/banner-intro-image\";s:11:\"description\";s:68:\"A Intro pattern with Short heading, paragraph and image on the left.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:16:\"banner-intro.php\";a:4:{s:5:\"title\";s:35:\"Intro with left-aligned description\";s:4:\"slug\";s:29:\"twentytwentyfive/banner-intro\";s:11:\"description\";s:66:\"A large left-aligned heading with a brand name emphasized in bold.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:17:\"banner-poster.php\";a:4:{s:5:\"title\";s:19:\"Poster-like section\";s:4:\"slug\";s:30:\"twentytwentyfive/banner-poster\";s:11:\"description\";s:78:\"A section that can be used as a banner or a landing page to announce an event.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:5:\"media\";}}s:43:\"banner-with-description-and-images-grid.php\";a:4:{s:5:\"title\";s:39:\"Banner with description and images grid\";s:4:\"slug\";s:47:\"twentytwentyfive/banner-description-images-grid\";s:11:\"description\";s:75:\"A banner with a short paragraph, and two images displayed in a grid layout.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:18:\"binding-format.php\";a:4:{s:5:\"title\";s:16:\"Post format name\";s:4:\"slug\";s:31:\"twentytwentyfive/binding-format\";s:11:\"description\";s:75:\"Prints the name of the post format with the help of the Block Bindings API.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:12:\"comments.php\";a:5:{s:5:\"title\";s:8:\"Comments\";s:4:\"slug\";s:25:\"twentytwentyfive/comments\";s:11:\"description\";s:63:\"Comments area with comments list, pagination, and comment form.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:13:\"core/comments\";}}s:32:\"contact-centered-social-link.php\";a:5:{s:5:\"title\";s:30:\"Centered link and social links\";s:4:\"slug\";s:45:\"twentytwentyfive/contact-centered-social-link\";s:11:\"description\";s:73:\"Centered contact section with a prominent message and social media links.\";s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:3:{i:0;s:7:\"contact\";i:1;s:3:\"faq\";i:2;s:9:\"questions\";}}s:26:\"contact-info-locations.php\";a:6:{s:5:\"title\";s:27:\"Contact, info and locations\";s:4:\"slug\";s:39:\"twentytwentyfive/contact-info-locations\";s:11:\"description\";s:78:\"Contact section with social media links, email, and multiple location details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"location\";}}s:29:\"contact-location-and-link.php\";a:4:{s:5:\"title\";s:25:\"Contact location and link\";s:4:\"slug\";s:42:\"twentytwentyfive/contact-location-and-link\";s:11:\"description\";s:89:\"Contact section with a location address, a directions link, and an image of the location.\";s:10:\"categories\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"featured\";}}s:18:\"cta-book-links.php\";a:4:{s:5:\"title\";s:30:\"Call to action with book links\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-book-links\";s:11:\"description\";s:74:\"A call to action section with links to get the book in different websites.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:22:\"cta-book-locations.php\";a:4:{s:5:\"title\";s:29:\"Call to action with locations\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-book-locations\";s:11:\"description\";s:82:\"A call to action section with links to get the book in the most popular locations.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:24:\"cta-centered-heading.php\";a:4:{s:5:\"title\";s:16:\"Centered heading\";s:4:\"slug\";s:37:\"twentytwentyfive/cta-centered-heading\";s:11:\"description\";s:53:\"A hero with a centered heading, paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:19:\"cta-events-list.php\";a:4:{s:5:\"title\";s:11:\"Events list\";s:4:\"slug\";s:32:\"twentytwentyfive/cta-events-list\";s:11:\"description\";s:37:\"A list of events with call to action.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:26:\"cta-grid-products-link.php\";a:5:{s:5:\"title\";s:54:\"Call to action with grid layout with products and link\";s:4:\"slug\";s:39:\"twentytwentyfive/cta-grid-products-link\";s:11:\"description\";s:42:\"A call to action featuring product images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}}s:22:\"cta-heading-search.php\";a:4:{s:5:\"title\";s:23:\"Heading and search form\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-heading-search\";s:11:\"description\";s:54:\"Large heading with a search form for quick navigation.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:18:\"cta-newsletter.php\";a:5:{s:5:\"title\";s:18:\"Newsletter sign-up\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-newsletter\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:10:\"newsletter\";}}s:15:\"event-3-col.php\";a:5:{s:5:\"title\";s:46:\"Events, 3 columns with event images and titles\";s:4:\"slug\";s:28:\"twentytwentyfive/event-3-col\";s:11:\"description\";s:95:\"A header with title and text and three columns that show 3 events with their images and titles.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:6:\"events\";i:1;s:7:\"columns\";i:2;s:6:\"images\";}}s:14:\"event-rsvp.php\";a:7:{s:5:\"title\";s:10:\"Event RSVP\";s:4:\"slug\";s:27:\"twentytwentyfive/event-rsvp\";s:11:\"description\";s:64:\"RSVP for an upcoming event with a cover image and event details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:4:\"rsvp\";i:2;s:5:\"event\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:18:\"event-schedule.php\";a:5:{s:5:\"title\";s:14:\"Event schedule\";s:4:\"slug\";s:31:\"twentytwentyfive/event-schedule\";s:11:\"description\";s:54:\"A section with specified dates and times for an event.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}s:8:\"keywords\";a:4:{i:0;s:6:\"events\";i:1;s:6:\"agenda\";i:2;s:8:\"schedule\";i:3;s:8:\"lectures\";}}s:19:\"footer-centered.php\";a:5:{s:5:\"title\";s:15:\"Centered footer\";s:4:\"slug\";s:32:\"twentytwentyfive/footer-centered\";s:11:\"description\";s:44:\"Footer with centered site title and tagline.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:18:\"footer-columns.php\";a:5:{s:5:\"title\";s:19:\"Footer with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/footer-columns\";s:11:\"description\";s:45:\"Footer columns with title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:21:\"footer-newsletter.php\";a:5:{s:5:\"title\";s:29:\"Footer with newsletter signup\";s:4:\"slug\";s:34:\"twentytwentyfive/footer-newsletter\";s:11:\"description\";s:51:\"Footer with large site title and newsletter signup.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:17:\"footer-social.php\";a:5:{s:5:\"title\";s:33:\"Centered footer with social links\";s:4:\"slug\";s:30:\"twentytwentyfive/footer-social\";s:11:\"description\";s:49:\"Footer with centered site title and social links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:10:\"footer.php\";a:5:{s:5:\"title\";s:6:\"Footer\";s:4:\"slug\";s:23:\"twentytwentyfive/footer\";s:11:\"description\";s:51:\"Footer columns with logo, title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:16:\"format-audio.php\";a:4:{s:5:\"title\";s:12:\"Audio format\";s:4:\"slug\";s:29:\"twentytwentyfive/format-audio\";s:11:\"description\";s:73:\"An audio post format with an image, title, audio player, and description.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"format-link.php\";a:4:{s:5:\"title\";s:11:\"Link format\";s:4:\"slug\";s:28:\"twentytwentyfive/format-link\";s:11:\"description\";s:77:\"A link post format with a description and an emphasized link for key content.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"grid-videos.php\";a:4:{s:5:\"title\";s:16:\"Grid with videos\";s:4:\"slug\";s:28:\"twentytwentyfive/grid-videos\";s:11:\"description\";s:19:\"A grid with videos.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:24:\"grid-with-categories.php\";a:5:{s:5:\"title\";s:20:\"Grid with categories\";s:4:\"slug\";s:37:\"twentytwentyfive/grid-with-categories\";s:11:\"description\";s:41:\"A grid section with different categories.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:19:\"header-centered.php\";a:5:{s:5:\"title\";s:15:\"Centered header\";s:4:\"slug\";s:32:\"twentytwentyfive/header-centered\";s:11:\"description\";s:47:\"Header with centered site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:18:\"header-columns.php\";a:5:{s:5:\"title\";s:19:\"Header with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/header-columns\";s:11:\"description\";s:49:\"Header with site title and navigation in columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:22:\"header-large-title.php\";a:5:{s:5:\"title\";s:23:\"Header with large title\";s:4:\"slug\";s:35:\"twentytwentyfive/header-large-title\";s:11:\"description\";s:58:\"Header with large site title and right-aligned navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:10:\"header.php\";a:5:{s:5:\"title\";s:6:\"Header\";s:4:\"slug\";s:23:\"twentytwentyfive/header\";s:11:\"description\";s:38:\"Header with site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:36:\"heading-and-paragraph-with-image.php\";a:4:{s:5:\"title\";s:45:\"Heading and paragraph with image on the right\";s:4:\"slug\";s:49:\"twentytwentyfive/heading-and-paragraph-with-image\";s:11:\"description\";s:89:\"A two-column section with a heading and paragraph on the left, and an image on the right.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:13:\"hero-book.php\";a:5:{s:5:\"title\";s:9:\"Hero book\";s:4:\"slug\";s:26:\"twentytwentyfive/hero-book\";s:11:\"description\";s:66:\"A hero section for the book with a description and pre-order link.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:25:\"hero-full-width-image.php\";a:4:{s:5:\"title\";s:22:\"Hero, full width image\";s:4:\"slug\";s:38:\"twentytwentyfive/hero-full-width-image\";s:11:\"description\";s:68:\"A hero with a full width image, heading, short paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:41:\"hero-overlapped-book-cover-with-links.php\";a:4:{s:5:\"title\";s:38:\"Hero, overlapped book cover with links\";s:4:\"slug\";s:54:\"twentytwentyfive/hero-overlapped-book-cover-with-links\";s:11:\"description\";s:47:\"A hero with an overlapped book cover and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:16:\"hero-podcast.php\";a:5:{s:5:\"title\";s:12:\"Hero podcast\";s:4:\"slug\";s:29:\"twentytwentyfive/hero-podcast\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:3:\"404\";s:4:\"slug\";s:27:\"twentytwentyfive/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"hidden-blog-heading.php\";a:4:{s:5:\"title\";s:19:\"Hidden blog heading\";s:4:\"slug\";s:36:\"twentytwentyfive/hidden-blog-heading\";s:11:\"description\";s:52:\"Hidden heading for the home page and index template.\";s:8:\"inserter\";b:0;}s:17:\"hidden-search.php\";a:4:{s:5:\"title\";s:6:\"Search\";s:4:\"slug\";s:30:\"twentytwentyfive/hidden-search\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-sidebar.php\";a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"slug\";s:31:\"twentytwentyfive/hidden-sidebar\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-written-by.php\";a:4:{s:5:\"title\";s:10:\"Written by\";s:4:\"slug\";s:34:\"twentytwentyfive/hidden-written-by\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:9:\"logos.php\";a:4:{s:5:\"title\";s:5:\"Logos\";s:4:\"slug\";s:22:\"twentytwentyfive/logos\";s:11:\"description\";s:77:\"Showcasing the podcast\'s clients with a heading and a series of client logos.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:24:\"media-instagram-grid.php\";a:5:{s:5:\"title\";s:14:\"Instagram grid\";s:4:\"slug\";s:37:\"twentytwentyfive/media-instagram-grid\";s:11:\"description\";s:62:\"A grid section with photos and a link to an Instagram profile.\";s:13:\"viewportWidth\";i:1440;s:10:\"categories\";a:3:{i:0;s:5:\"media\";i:1;s:7:\"gallery\";i:2;s:8:\"featured\";}}s:14:\"more-posts.php\";a:5:{s:5:\"title\";s:10:\"More posts\";s:4:\"slug\";s:27:\"twentytwentyfive/more-posts\";s:11:\"description\";s:45:\"Displays a list of posts with title and date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:21:\"overlapped-images.php\";a:4:{s:5:\"title\";s:41:\"Overlapping images and paragraph on right\";s:4:\"slug\";s:34:\"twentytwentyfive/overlapped-images\";s:11:\"description\";s:53:\"A section with overlapping images, and a description.\";s:10:\"categories\";a:2:{i:0;s:5:\"about\";i:1;s:8:\"featured\";}}s:22:\"page-business-home.php\";a:8:{s:5:\"title\";s:17:\"Business homepage\";s:4:\"slug\";s:35:\"twentytwentyfive/page-business-home\";s:11:\"description\";s:28:\"A business homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:20:\"page-coming-soon.php\";a:8:{s:5:\"title\";s:11:\"Coming soon\";s:4:\"slug\";s:33:\"twentytwentyfive/page-coming-soon\";s:11:\"description\";s:96:\"A full-width cover banner that can be applied to a page or it can work as a single landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:15:\"page-cv-bio.php\";a:7:{s:5:\"title\";s:6:\"CV/bio\";s:4:\"slug\";s:28:\"twentytwentyfive/page-cv-bio\";s:11:\"description\";s:36:\"A pattern for a CV/Bio landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:21:\"page-landing-book.php\";a:8:{s:5:\"title\";s:21:\"Landing page for book\";s:4:\"slug\";s:34:\"twentytwentyfive/page-landing-book\";s:11:\"description\";s:104:\"A landing page for the book with a hero section, pre-order links, locations, FAQs and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-landing-event.php\";a:8:{s:5:\"title\";s:22:\"Landing page for event\";s:4:\"slug\";s:35:\"twentytwentyfive/page-landing-event\";s:11:\"description\";s:87:\"A landing page for the event with a hero section, description, FAQs and call to action.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:24:\"page-landing-podcast.php\";a:8:{s:5:\"title\";s:24:\"Landing page for podcast\";s:4:\"slug\";s:37:\"twentytwentyfive/page-landing-podcast\";s:11:\"description\";s:111:\"A landing page for the podcast with a hero section, description, logos, grid with videos and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:50:\"page-link-in-bio-heading-paragraph-links-image.php\";a:7:{s:5:\"title\";s:59:\"Link in bio heading, paragraph, links and full-height image\";s:4:\"slug\";s:63:\"twentytwentyfive/page-link-in-bio-heading-paragraph-links-image\";s:11:\"description\";s:84:\"A link in bio landing page with a heading, paragraph, links and a full height image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:33:\"page-link-in-bio-wide-margins.php\";a:7:{s:5:\"title\";s:48:\"Link in bio with profile, links and wide margins\";s:4:\"slug\";s:46:\"twentytwentyfive/page-link-in-bio-wide-margins\";s:11:\"description\";s:86:\"A link in bio landing page with social links, a profile photo and a brief description.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:39:\"page-link-in-bio-with-tight-margins.php\";a:8:{s:5:\"title\";s:30:\"Link in bio with tight margins\";s:4:\"slug\";s:52:\"twentytwentyfive/page-link-in-bio-with-tight-margins\";s:11:\"description\";s:90:\"A full-width, full-height link in bio section with an image, a paragraph and social links.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:23:\"page-portfolio-home.php\";a:8:{s:5:\"title\";s:18:\"Portfolio homepage\";s:4:\"slug\";s:36:\"twentytwentyfive/page-portfolio-home\";s:11:\"description\";s:29:\"A portfolio homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"posts\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:18:\"page-shop-home.php\";a:8:{s:5:\"title\";s:13:\"Shop homepage\";s:4:\"slug\";s:31:\"twentytwentyfive/page-shop-home\";s:11:\"description\";s:24:\"A shop homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfive_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:19:\"post-navigation.php\";a:5:{s:5:\"title\";s:15:\"Post navigation\";s:4:\"slug\";s:32:\"twentytwentyfive/post-navigation\";s:11:\"description\";s:29:\"Next and previous post links.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/post-navigation-link\";}}s:17:\"pricing-2-col.php\";a:5:{s:5:\"title\";s:18:\"Pricing, 2 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-2-col\";s:11:\"description\";s:88:\"Pricing section with two columns, pricing plan, description, and call-to-action buttons.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:17:\"pricing-3-col.php\";a:4:{s:5:\"title\";s:18:\"Pricing, 3 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-3-col\";s:11:\"description\";s:100:\"A three-column boxed pricing table designed to showcase services, descriptions, and pricing options.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:18:\"services-3-col.php\";a:4:{s:5:\"title\";s:19:\"Services, 3 columns\";s:4:\"slug\";s:31:\"twentytwentyfive/services-3-col\";s:11:\"description\";s:56:\"Three columns with images and text to showcase services.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:36:\"services-subscriber-only-section.php\";a:4:{s:5:\"title\";s:33:\"Services, subscriber only section\";s:4:\"slug\";s:49:\"twentytwentyfive/services-subscriber-only-section\";s:11:\"description\";s:72:\"A subscriber-only section highlighting exclusive services and offerings.\";s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"services\";}}s:24:\"services-team-photos.php\";a:4:{s:5:\"title\";s:21:\"Services, team photos\";s:4:\"slug\";s:37:\"twentytwentyfive/services-team-photos\";s:11:\"description\";s:59:\"Display team photos in a services section with grid layout.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";i:2;s:8:\"featured\";}}s:37:\"template-404-vertical-header-blog.php\";a:5:{s:5:\"title\";s:23:\"Right-aligned blog, 404\";s:4:\"slug\";s:50:\"twentytwentyfive/template-404-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:3:\"404\";}}s:30:\"template-archive-news-blog.php\";a:6:{s:5:\"title\";s:17:\"News blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:31:\"template-archive-photo-blog.php\";a:6:{s:5:\"title\";s:18:\"Photo blog archive\";s:4:\"slug\";s:44:\"twentytwentyfive/template-archive-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:30:\"template-archive-text-blog.php\";a:6:{s:5:\"title\";s:23:\"Text-only blog, archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:41:\"template-archive-vertical-header-blog.php\";a:6:{s:5:\"title\";s:34:\"Archive for the right-aligned blog\";s:4:\"slug\";s:54:\"twentytwentyfive/template-archive-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:27:\"template-home-news-blog.php\";a:6:{s:5:\"title\";s:14:\"News blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-home-photo-blog.php\";a:6:{s:5:\"title\";s:15:\"Photo blog home\";s:4:\"slug\";s:41:\"twentytwentyfive/template-home-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:38:\"template-home-posts-grid-news-blog.php\";a:5:{s:5:\"title\";s:34:\"News blog with featured posts grid\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-posts-grid-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:27:\"template-home-text-blog.php\";a:6:{s:5:\"title\";s:20:\"Text-only blog, home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:38:\"template-home-vertical-header-blog.php\";a:6:{s:5:\"title\";s:31:\"Homepage for right-aligned blog\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:40:\"template-home-with-sidebar-news-blog.php\";a:6:{s:5:\"title\";s:22:\"News blog with sidebar\";s:4:\"slug\";s:53:\"twentytwentyfive/template-home-with-sidebar-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-page-photo-blog.php\";a:5:{s:5:\"title\";s:15:\"Photo blog page\";s:4:\"slug\";s:41:\"twentytwentyfive/template-page-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:38:\"template-page-vertical-header-blog.php\";a:5:{s:5:\"title\";s:40:\"Page template for the right-aligned blog\";s:4:\"slug\";s:51:\"twentytwentyfive/template-page-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:33:\"template-query-loop-news-blog.php\";a:4:{s:5:\"title\";s:20:\"News blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:34:\"template-query-loop-photo-blog.php\";a:6:{s:5:\"title\";s:16:\"Photo blog posts\";s:4:\"slug\";s:47:\"twentytwentyfive/template-query-loop-photo-blog\";s:11:\"description\";s:54:\"A list of posts, 3 columns, with only featured images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:33:\"template-query-loop-text-blog.php\";a:4:{s:5:\"title\";s:21:\"Text-only blog, posts\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-text-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:44:\"template-query-loop-vertical-header-blog.php\";a:4:{s:5:\"title\";s:19:\"Right-aligned posts\";s:4:\"slug\";s:57:\"twentytwentyfive/template-query-loop-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"template-query-loop.php\";a:5:{s:5:\"title\";s:23:\"List of posts, 1 column\";s:4:\"slug\";s:36:\"twentytwentyfive/template-query-loop\";s:11:\"description\";s:61:\"A list of posts, 1 column, with featured image and post date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:29:\"template-search-news-blog.php\";a:6:{s:5:\"title\";s:24:\"News blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:30:\"template-search-photo-blog.php\";a:6:{s:5:\"title\";s:25:\"Photo blog search results\";s:4:\"slug\";s:43:\"twentytwentyfive/template-search-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-search-text-blog.php\";a:6:{s:5:\"title\";s:22:\"Text-only blog, search\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-search-vertical-header-blog.php\";a:6:{s:5:\"title\";s:26:\"Right-aligned blog, search\";s:4:\"slug\";s:53:\"twentytwentyfive/template-search-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-single-left-aligned-content.php\";a:6:{s:5:\"title\";s:30:\"Post with left-aligned content\";s:4:\"slug\";s:47:\"twentytwentyfive/post-with-left-aligned-content\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-news-blog.php\";a:6:{s:5:\"title\";s:34:\"News blog single post with sidebar\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:26:\"template-single-offset.php\";a:6:{s:5:\"title\";s:34:\"Offset post without featured image\";s:4:\"slug\";s:39:\"twentytwentyfive/template-single-offset\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:30:\"template-single-photo-blog.php\";a:6:{s:5:\"title\";s:22:\"Photo blog single post\";s:4:\"slug\";s:43:\"twentytwentyfive/template-single-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-text-blog.php\";a:6:{s:5:\"title\";s:27:\"Text-only blog, single post\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:40:\"template-single-vertical-header-blog.php\";a:6:{s:5:\"title\";s:25:\"Right-aligned single post\";s:4:\"slug\";s:53:\"twentytwentyfive/template-single-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:22:\"testimonials-2-col.php\";a:5:{s:5:\"title\";s:21:\"2 columns with avatar\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-2-col\";s:11:\"description\";s:42:\"Two columns with testimonials and avatars.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-6-col.php\";a:5:{s:5:\"title\";s:35:\"3 column layout with 6 testimonials\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-6-col\";s:11:\"description\";s:86:\"A section with three columns and two rows, each containing a testimonial and citation.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-large.php\";a:5:{s:5:\"title\";s:32:\"Review with large image on right\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-large\";s:11:\"description\";s:46:\"A testimonial with a large image on the right.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:13:\"text-faqs.php\";a:6:{s:5:\"title\";s:4:\"FAQs\";s:4:\"slug\";s:26:\"twentytwentyfive/text-faqs\";s:11:\"description\";s:68:\"A FAQs section with a FAQ heading and list of questions and answers.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}s:8:\"keywords\";a:5:{i:0;s:3:\"faq\";i:1;s:5:\"about\";i:2;s:10:\"frequently\";i:3;s:5:\"asked\";i:4;s:9:\"questions\";}}s:19:\"vertical-header.php\";a:6:{s:5:\"title\";s:15:\"Vertical header\";s:4:\"slug\";s:32:\"twentytwentyfive/vertical-header\";s:11:\"description\";s:46:\"Vertical Header with site title and navigation\";s:13:\"viewportWidth\";i:300;s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:34:\"core/template-part/vertical-header\";}}}}', 'off'),
(136, 'softaculous_pro_settings', 'a:1:{s:19:\"ai_history_duration\";i:90;}', 'auto'),
(137, 'softaculous_pro_version', '2.2.0', 'auto'),
(138, 'softaculous_pro_rebranding', 'a:4:{s:2:\"sn\";s:11:\"Softaculous\";s:8:\"logo_url\";s:0:\"\";s:13:\"default_hf_bg\";s:0:\"\";s:15:\"default_hf_text\";s:0:\"\";}', 'yes'),
(148, 'external_updates-softaculous-pro', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1738609586;s:14:\"checkedVersion\";s:5:\"2.2.0\";s:6:\"update\";O:8:\"stdClass\":9:{s:2:\"id\";i:0;s:4:\"slug\";s:15:\"softaculous-pro\";s:7:\"version\";s:5:\"2.2.0\";s:8:\"homepage\";s:19:\"https://softwp.net/\";s:6:\"tested\";s:5:\"6.7.1\";s:12:\"download_url\";s:137:\"https://s5.softaculous.com/a/softwp/download.php?version=2.2.0&license=SOFTWP-16604-29233-25930-76253&url=https://ti.antoniengenharia.com\";s:14:\"upgrade_notice\";N;s:8:\"filename\";s:35:\"softaculous-pro/softaculous-pro.php\";s:12:\"translations\";a:0:{}}}', 'off'),
(151, 'softaculous_pro_onboarding_shown', '1738434914', 'auto'),
(153, 'can_compress_scripts', '1', 'on'),
(154, 'softaculous_pro_onboarding_dismiss', '1738434920', 'auto'),
(158, 'finished_updating_comment_type', '1', 'auto'),
(159, '_site_transient_timeout_browser_41770e408d453f0e18b6cf535e220c84', '1739040299', 'off'),
(160, '_site_transient_browser_41770e408d453f0e18b6cf535e220c84', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"132.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(161, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1739040300', 'off'),
(162, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(177, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(178, 'recently_activated', 'a:1:{s:33:\"cub-calculator/cub-calculator.php\";i:1738517034;}', 'off'),
(179, 'softaculous_pro_onboarding_notice_dismiss', '1738435630', 'auto'),
(184, 'new_admin_email', 'allan.antoni@gmail.com', 'auto'),
(191, 'recovery_mode_email_last_sent', '1738524201', 'auto');
INSERT INTO `wpwv_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(268, '_site_transient_php_check_feede18ab91a39786f5028b7215ed6a6', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(267, '_site_transient_timeout_php_check_feede18ab91a39786f5028b7215ed6a6', '1739127320', 'off'),
(269, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'on');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_postmeta`
--

CREATE TABLE `wpwv_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpwv_postmeta`
--

INSERT INTO `wpwv_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(6, 2, '_edit_lock', '1738436213:1'),
(7, 1, '_wp_trash_meta_status', 'publish'),
(8, 1, '_wp_trash_meta_time', '1738436217'),
(9, 1, '_wp_desired_post_slug', 'hello-world'),
(10, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(12, 11, '_edit_lock', '1738511798:1'),
(20, 16, '_edit_lock', '1738547803:1'),
(21, 19, 'footnotes', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_posts`
--

CREATE TABLE `wpwv_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpwv_posts`
--

INSERT INTO `wpwv_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-02-01 18:34:59', '2025-02-01 18:34:59', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2025-02-01 18:56:57', '2025-02-01 18:56:57', '', 0, 'https://ti.antoniengenharia.com/?p=1', 0, 'post', '', 1),
(2, 1, '2025-02-01 18:34:59', '2025-02-01 18:34:59', '<!-- wp:paragraph -->\n<p>Aplicação para desenvolvimento de novos módulos web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Desenvolvimento.', '', 'publish', 'closed', 'open', '', 'dev', '', '', '2025-02-01 18:56:39', '2025-02-01 18:56:39', '', 0, 'https://ti.antoniengenharia.com/?page_id=2', 0, 'page', '', 0),
(8, 1, '2025-02-01 18:56:26', '2025-02-01 18:56:26', '<!-- wp:paragraph -->\n<p>Aplicação para desenvolvimento de novos módulos web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Desenvolvimento.', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-02-01 18:56:26', '2025-02-01 18:56:26', '', 2, 'https://ti.antoniengenharia.com/?p=8', 0, 'revision', '', 0),
(9, 1, '2025-02-01 18:56:57', '2025-02-01 18:56:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2025-02-01 18:56:57', '2025-02-01 18:56:57', '', 1, 'https://ti.antoniengenharia.com/?p=9', 0, 'revision', '', 0),
(11, 1, '2025-02-02 12:56:38', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-02 12:56:38', '0000-00-00 00:00:00', '', 0, 'https://ti.antoniengenharia.com/?p=11', 0, 'post', '', 0),
(4, 0, '2025-02-01 18:35:00', '2025-02-01 18:35:00', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-02-01 18:35:00', '2025-02-01 18:35:00', '', 0, 'https://ti.antoniengenharia.com/2025/02/01/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2025-02-01 18:45:00', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-02-01 18:45:00', '0000-00-00 00:00:00', '', 0, 'https://ti.antoniengenharia.com/?p=5', 0, 'post', '', 0),
(7, 1, '2025-02-01 18:55:50', '2025-02-01 18:55:50', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfive', '', '', '2025-02-01 18:55:50', '2025-02-01 18:55:50', '', 0, 'https://ti.antoniengenharia.com/2025/02/01/wp-global-styles-twentytwentyfive/', 0, 'wp_global_styles', '', 0),
(19, 1, '2025-02-02 20:22:25', '2025-02-02 23:22:25', '<!-- wp:paragraph -->\n<p>[CUBCALC-RESIDENCIAL]</p>\n<!-- /wp:paragraph -->', 'calc resid', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2025-02-02 20:22:25', '2025-02-02 23:22:25', '', 16, 'https://ti.antoniengenharia.com/?p=19', 0, 'revision', '', 0),
(16, 1, '2025-02-02 20:21:28', '2025-02-02 23:21:28', '<!-- wp:paragraph -->\n<p>[CUBCALC-RESIDENCIAL]</p>\n<!-- /wp:paragraph -->', 'calc resid', '', 'publish', 'closed', 'closed', '', 'calc-resid', '', '', '2025-02-02 21:22:03', '2025-02-03 00:22:03', '', 0, 'https://ti.antoniengenharia.com/?page_id=16', 0, 'page', '', 0),
(17, 1, '2025-02-02 20:21:28', '2025-02-02 23:21:28', '<!-- wp:paragraph -->\n<p>[cubcalc-residencial]</p>\n<!-- /wp:paragraph -->', 'calc resid', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2025-02-02 20:21:28', '2025-02-02 23:21:28', '', 16, 'https://ti.antoniengenharia.com/?p=17', 0, 'revision', '', 0),
(18, 1, '2025-02-02 20:22:15', '2025-02-02 23:22:15', '<!-- wp:paragraph -->\n<p>[CUBCALC-RESIDENCIAL]</p>\n<!-- /wp:paragraph -->', 'calc resid', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2025-02-02 20:22:15', '2025-02-02 23:22:15', '', 16, 'https://ti.antoniengenharia.com/?p=18', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_termmeta`
--

CREATE TABLE `wpwv_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_terms`
--

CREATE TABLE `wpwv_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpwv_terms`
--

INSERT INTO `wpwv_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentyfive', 'twentytwentyfive', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_term_relationships`
--

CREATE TABLE `wpwv_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpwv_term_relationships`
--

INSERT INTO `wpwv_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_term_taxonomy`
--

CREATE TABLE `wpwv_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpwv_term_taxonomy`
--

INSERT INTO `wpwv_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_usermeta`
--

CREATE TABLE `wpwv_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpwv_usermeta`
--

INSERT INTO `wpwv_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'allan'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wpwv_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpwv_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"9eaa985f05267fb168583af7fd89a4aa25ed50ae9ad71232329f7a174e267509\";a:4:{s:10:\"expiration\";i:1738607711;s:2:\"ip\";s:13:\"45.187.141.92\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\";s:5:\"login\";i:1738434911;}s:64:\"47fb92d060ab7c8dc4b78aa2a237306c1e6f61caab227abf6b79b9b68a988c78\";a:4:{s:10:\"expiration\";i:1739716438;s:2:\"ip\";s:38:\"2804:6514:d780:800:f1b8:762e:7278:2300\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36\";s:5:\"login\";i:1738506838;}}'),
(17, 1, 'wpwv_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:20:\"2804:6514:d780:800::\";}'),
(19, 1, 'wpwv_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-02-01T19:07:01.000Z\";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpwv_users`
--

CREATE TABLE `wpwv_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wpwv_users`
--

INSERT INTO `wpwv_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'allan', '$P$BLBZVar25ee1IZowUepcTFs3ottvkL0', 'allan', 'allan.antoni@gmail.com', 'https://ti.antoniengenharia.com', '2025-02-01 18:34:59', '', 0, 'allan');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `wpwv_commentmeta`
--
ALTER TABLE `wpwv_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpwv_comments`
--
ALTER TABLE `wpwv_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wpwv_cubcalc_indices`
--
ALTER TABLE `wpwv_cubcalc_indices`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wpwv_cubcalc_logs`
--
ALTER TABLE `wpwv_cubcalc_logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wpwv_cub_data`
--
ALTER TABLE `wpwv_cub_data`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wpwv_links`
--
ALTER TABLE `wpwv_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wpwv_options`
--
ALTER TABLE `wpwv_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wpwv_postmeta`
--
ALTER TABLE `wpwv_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpwv_posts`
--
ALTER TABLE `wpwv_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wpwv_termmeta`
--
ALTER TABLE `wpwv_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpwv_terms`
--
ALTER TABLE `wpwv_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wpwv_term_relationships`
--
ALTER TABLE `wpwv_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wpwv_term_taxonomy`
--
ALTER TABLE `wpwv_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wpwv_usermeta`
--
ALTER TABLE `wpwv_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpwv_users`
--
ALTER TABLE `wpwv_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wpwv_commentmeta`
--
ALTER TABLE `wpwv_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpwv_comments`
--
ALTER TABLE `wpwv_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wpwv_cubcalc_indices`
--
ALTER TABLE `wpwv_cubcalc_indices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT de tabela `wpwv_cubcalc_logs`
--
ALTER TABLE `wpwv_cubcalc_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpwv_cub_data`
--
ALTER TABLE `wpwv_cub_data`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpwv_links`
--
ALTER TABLE `wpwv_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpwv_options`
--
ALTER TABLE `wpwv_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT de tabela `wpwv_postmeta`
--
ALTER TABLE `wpwv_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `wpwv_posts`
--
ALTER TABLE `wpwv_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `wpwv_termmeta`
--
ALTER TABLE `wpwv_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpwv_terms`
--
ALTER TABLE `wpwv_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wpwv_term_taxonomy`
--
ALTER TABLE `wpwv_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wpwv_usermeta`
--
ALTER TABLE `wpwv_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `wpwv_users`
--
ALTER TABLE `wpwv_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
