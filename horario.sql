-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Mar-2020 às 11:56
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `horario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `horarios`
--

DROP TABLE IF EXISTS `horarios`;
CREATE TABLE IF NOT EXISTS `horarios` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `Sala1` varchar(50) DEFAULT NULL,
  `Sala2` varchar(50) DEFAULT NULL,
  `Sala3` varchar(50) DEFAULT NULL,
  `Sala4` varchar(50) DEFAULT NULL,
  `Sala5` varchar(50) DEFAULT NULL,
  `Sala6` varchar(50) DEFAULT NULL,
  `Sala7` varchar(50) DEFAULT NULL,
  `Sala8` varchar(50) DEFAULT NULL,
  `Sala9` varchar(50) DEFAULT NULL,
  `Sala10` varchar(50) DEFAULT NULL,
  `Sala11` varchar(50) DEFAULT NULL,
  `Sala12` varchar(50) DEFAULT NULL,
  `Aula` int(2) DEFAULT NULL,
  `Dia` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `horarios`
--

INSERT INTO `horarios` (`id`, `Sala1`, `Sala2`, `Sala3`, `Sala4`, `Sala5`, `Sala6`, `Sala7`, `Sala8`, `Sala9`, `Sala10`, `Sala11`, `Sala12`, `Aula`, `Dia`) VALUES
(1, 'Matematica - Luis Ricardo', 'Portugues - Gessica Perfeita', 'Matematica - Luis Ricardo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1'),
(2, 'Educacao Fisica - Luciane', 'Portugues - Gessica Perfeita', 'Matematica - Luis Ricardo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '1'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '1'),
(5, 'Portugues - Gessica Perfeita', 'Oficina de Redacao - Gessica Perfeita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '1'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '1'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '1'),
(8, 'Matematica - Luis Ricardo', 'Matematica - Luis Ricardo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '1'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '1'),
(10, 'Oficina de Redacao - Gessica Perfeita', 'PROFESSOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '1'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2'),
(12, 'Educacao Fisica - Luciane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '2'),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '2'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2'),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3'),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '3'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '3'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '3'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '3'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '3'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '3'),
(38, 'Portugues - Jessica Perfeita', 'Portugues - Jessica Perfeita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '3'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '3'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '3'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '4'),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '4'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '4'),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '4'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '4'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '4'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '4'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '4'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '4'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '4'),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '5'),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '5'),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '5'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '5'),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '5'),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '5'),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, '5'),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '5'),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '5'),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_curso`
--

DROP TABLE IF EXISTS `tb_curso`;
CREATE TABLE IF NOT EXISTS `tb_curso` (
  `cur_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cur_nome` varchar(30) DEFAULT NULL,
  `cur_ativo` int(1) DEFAULT NULL,
  PRIMARY KEY (`cur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_curso`
--

INSERT INTO `tb_curso` (`cur_id`, `cur_nome`, `cur_ativo`) VALUES
(1, 'Redes de Computadores', 1),
(2, 'Informática', 1),
(3, 'Finanças', 1),
(4, 'Segurança do Trabalho', 1),
(5, 'Enfermagem', 1),
(6, 'Comercio', 0),
(7, 'Agropecuária', 1),
(8, 'Administração', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_disciplina`
--

DROP TABLE IF EXISTS `tb_disciplina`;
CREATE TABLE IF NOT EXISTS `tb_disciplina` (
  `dis_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dis_nome` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`dis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_disciplina`
--

INSERT INTO `tb_disciplina` (`dis_id`, `dis_nome`) VALUES
(1, 'Matematica'),
(2, 'Quimica'),
(3, 'Portugues'),
(4, 'Geografia'),
(5, 'Historia'),
(6, 'Ingles'),
(7, 'Espanhol'),
(8, 'Biologia'),
(9, 'Filosofia'),
(10, 'Fisica'),
(11, 'Sociologia'),
(12, 'Educacao Fisica'),
(13, 'Projeto de Vida'),
(14, 'Artes'),
(15, 'Empreendedorismo'),
(16, 'Mundo Do Trabalho'),
(17, 'Oficina de Redacao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_disciplina_tecnica`
--

DROP TABLE IF EXISTS `tb_disciplina_tecnica`;
CREATE TABLE IF NOT EXISTS `tb_disciplina_tecnica` (
  `dis_tec_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dis_tec_nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dis_tec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_disciplina_tecnica`
--

INSERT INTO `tb_disciplina_tecnica` (`dis_tec_id`, `dis_tec_nome`) VALUES
(1, 'Montagem e Instalação'),
(2, 'Meios de Comunicaçao'),
(3, 'Resolução de Problemas'),
(4, 'Analise de Programação'),
(5, 'Banco de Dados'),
(6, 'Desing'),
(7, 'Redes'),
(8, 'HTML/CSS'),
(9, 'Lógica de Programação'),
(10, 'Urgencia e Emergencia'),
(18, 'Informática Básica'),
(19, 'Administração de Redes'),
(20, 'Sistemas Operacionais'),
(21, 'Interações Profissionais'),
(22, 'Restabelecimento de uma Estação do Trabalho'),
(23, 'Otimização de uma Estação de Trabalho'),
(24, 'Assistência Informática'),
(25, 'Arquitetura e Manutenção de Computadores'),
(26, 'Gestão do Tempo'),
(27, 'P.O.O / JAVA'),
(28, 'Programação Web (Java Script / PHP/Mysql)'),
(29, 'Noções de Robótica'),
(30, 'Gerenciador de Conteúdo / Banco de Dados '),
(31, 'Programação Web II (PHP / MySQL) '),
(32, 'Laboratório Hardware '),
(33, 'Laboratório Software'),
(34, 'Laboratório WEB'),
(35, 'Profissão e Formação'),
(37, 'Investigação das Informações'),
(38, 'Instalação de Hardware');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_disciplina_tecnica_has_tb_curso`
--

DROP TABLE IF EXISTS `tb_disciplina_tecnica_has_tb_curso`;
CREATE TABLE IF NOT EXISTS `tb_disciplina_tecnica_has_tb_curso` (
  `tb_disciplina_tecnica_dis_tec_id` int(5) UNSIGNED NOT NULL,
  `tb_curso_cur_id` int(5) UNSIGNED NOT NULL,
  `tb_dis_semestre` int(3) NOT NULL,
  `tb_dis_serie` int(3) NOT NULL,
  PRIMARY KEY (`tb_disciplina_tecnica_dis_tec_id`,`tb_curso_cur_id`),
  KEY `Index1` (`tb_curso_cur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_disciplina_tecnica_has_tb_curso`
--

INSERT INTO `tb_disciplina_tecnica_has_tb_curso` (`tb_disciplina_tecnica_dis_tec_id`, `tb_curso_cur_id`, `tb_dis_semestre`, `tb_dis_serie`) VALUES
(4, 1, 2, 1),
(7, 1, 2, 1),
(8, 2, 2, 1),
(9, 2, 2, 1),
(18, 1, 1, 1),
(18, 2, 1, 1),
(19, 1, 2, 1),
(22, 1, 1, 3),
(23, 1, 1, 3),
(24, 1, 1, 3),
(25, 2, 2, 1),
(26, 1, 1, 1),
(26, 2, 2, 1),
(32, 2, 1, 3),
(33, 2, 1, 3),
(34, 2, 1, 3),
(35, 1, 1, 1),
(35, 2, 1, 3),
(37, 1, 1, 1),
(38, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_disciplina_tecnica_has_tb_professor_tecnico`
--

DROP TABLE IF EXISTS `tb_disciplina_tecnica_has_tb_professor_tecnico`;
CREATE TABLE IF NOT EXISTS `tb_disciplina_tecnica_has_tb_professor_tecnico` (
  `tb_disciplina_tecnica_dis_tec_id` int(5) UNSIGNED NOT NULL,
  `tb_professor_tecnico_pro_tec_id` int(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`tb_disciplina_tecnica_dis_tec_id`,`tb_professor_tecnico_pro_tec_id`),
  KEY `fk_tb_disciplina_tecnica_has_tb_professor_tecnico__idx` (`tb_professor_tecnico_pro_tec_id`),
  KEY `fk_tb_disciplina_tecnica_has_tb_professor_tecnico__idx1` (`tb_disciplina_tecnica_dis_tec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_disciplina_tecnica_has_tb_professor_tecnico`
--

INSERT INTO `tb_disciplina_tecnica_has_tb_professor_tecnico` (`tb_disciplina_tecnica_dis_tec_id`, `tb_professor_tecnico_pro_tec_id`) VALUES
(4, 1),
(5, 1),
(33, 1),
(8, 2),
(18, 2),
(19, 2),
(25, 2),
(26, 2),
(32, 2),
(35, 2),
(37, 2),
(38, 2),
(18, 7),
(23, 7),
(34, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_professor`
--

DROP TABLE IF EXISTS `tb_professor`;
CREATE TABLE IF NOT EXISTS `tb_professor` (
  `pro_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_nome` varchar(50) DEFAULT NULL,
  `pro_dt` int(1) DEFAULT NULL,
  `pro_num_de_aula` int(4) UNSIGNED DEFAULT NULL,
  `pro_num_aula_dis` int(4) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_professor`
--

INSERT INTO `tb_professor` (`pro_id`, `pro_nome`, `pro_dt`, `pro_num_de_aula`, `pro_num_aula_dis`) VALUES
(1, 'Luis Ricardo', 1, 40, 40),
(2, 'Gessica', 1, 40, 40),
(3, 'Luciane', 1, 40, 40),
(4, 'Claudiane', 1, 40, 40),
(5, 'Alexandre', 1, 40, 40),
(6, 'Zeneide', 1, 40, 40),
(7, 'Luis Anastacio', 0, 40, 40),
(8, 'Rafaela', 1, 40, 40),
(9, 'Moisés', 0, 40, 40),
(10, 'Herberth', 0, 40, 40),
(11, 'Lidiane', 0, 40, 40),
(12, 'Aniza', 1, 40, 40),
(13, 'Patricia', 1, 40, 40),
(14, 'Jonas', 1, 40, 40),
(15, 'Zildelene', 1, 40, 40),
(16, 'Cristovão', 0, 40, 40),
(17, 'Laércio', 0, 40, 40),
(18, 'fsdfsdf', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_professor_has_tb_disciplina`
--

DROP TABLE IF EXISTS `tb_professor_has_tb_disciplina`;
CREATE TABLE IF NOT EXISTS `tb_professor_has_tb_disciplina` (
  `tb_professor_pro_id` int(5) UNSIGNED NOT NULL,
  `tb_disciplina_dis_id` int(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`tb_professor_pro_id`,`tb_disciplina_dis_id`),
  KEY `tb_professores_has_tb_disciplina_FKIndex1` (`tb_professor_pro_id`),
  KEY `tb_professores_has_tb_disciplina_FKIndex2` (`tb_disciplina_dis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_professor_has_tb_disciplina`
--

INSERT INTO `tb_professor_has_tb_disciplina` (`tb_professor_pro_id`, `tb_disciplina_dis_id`) VALUES
(1, 1),
(2, 3),
(2, 17),
(3, 12),
(3, 16),
(4, 6),
(5, 9),
(5, 11),
(6, 13),
(6, 14),
(8, 10),
(9, 4),
(10, 5),
(12, 2),
(12, 8),
(13, 7),
(13, 15),
(15, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_professor_has_tb_turma`
--

DROP TABLE IF EXISTS `tb_professor_has_tb_turma`;
CREATE TABLE IF NOT EXISTS `tb_professor_has_tb_turma` (
  `tb_professor_pro_id` int(5) UNSIGNED NOT NULL,
  `tb_turma_tur_id` int(6) UNSIGNED NOT NULL,
  PRIMARY KEY (`tb_professor_pro_id`,`tb_turma_tur_id`),
  KEY `tb_professor_has_tb_turma_FKIndex1` (`tb_professor_pro_id`),
  KEY `tb_professor_has_tb_turma_FKIndex2` (`tb_turma_tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_professor_has_tb_turma`
--

INSERT INTO `tb_professor_has_tb_turma` (`tb_professor_pro_id`, `tb_turma_tur_id`) VALUES
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10),
(10, 11),
(10, 12),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(12, 9),
(12, 10),
(12, 11),
(12, 12),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(16, 5),
(16, 6),
(16, 7),
(16, 8),
(17, 1),
(17, 2),
(17, 3),
(17, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_professor_tecnico`
--

DROP TABLE IF EXISTS `tb_professor_tecnico`;
CREATE TABLE IF NOT EXISTS `tb_professor_tecnico` (
  `pro_tec_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_tec_nome` varchar(30) DEFAULT NULL,
  `pro_tec_num_aula` int(4) UNSIGNED DEFAULT NULL,
  `pro_tec_num_aula_dis` int(4) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`pro_tec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_professor_tecnico`
--

INSERT INTO `tb_professor_tecnico` (`pro_tec_id`, `pro_tec_nome`, `pro_tec_num_aula`, `pro_tec_num_aula_dis`) VALUES
(1, 'Carlos Estevão', 40, 40),
(2, 'Jardel Sousa', 40, 40),
(3, 'Carla Gessica', 40, 40),
(4, 'Priscila', 40, 40),
(5, 'Paulo', 40, 40),
(6, 'Edineide', 40, 40),
(7, 'Aerton', 40, 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_professor_tecnico_has_tb_turma`
--

DROP TABLE IF EXISTS `tb_professor_tecnico_has_tb_turma`;
CREATE TABLE IF NOT EXISTS `tb_professor_tecnico_has_tb_turma` (
  `tb_turma_tur_id` int(6) UNSIGNED NOT NULL,
  `tb_professor_tecnico_pro_tec_id` int(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`tb_turma_tur_id`,`tb_professor_tecnico_pro_tec_id`),
  KEY `tb_professor_tecnico_has_tb_turma_FKIndex2` (`tb_turma_tur_id`),
  KEY `tb_professor_tecnico_pro_tec_id` (`tb_professor_tecnico_pro_tec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_professor_tecnico_has_tb_turma`
--

INSERT INTO `tb_professor_tecnico_has_tb_turma` (`tb_turma_tur_id`, `tb_professor_tecnico_pro_tec_id`) VALUES
(1, 3),
(2, 1),
(2, 2),
(2, 7),
(3, 1),
(3, 2),
(3, 7),
(4, 4),
(5, 1),
(5, 2),
(5, 7),
(6, 5),
(9, 1),
(9, 2),
(9, 7),
(10, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_turma`
--

DROP TABLE IF EXISTS `tb_turma`;
CREATE TABLE IF NOT EXISTS `tb_turma` (
  `tur_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tur_nome` varchar(30) DEFAULT NULL,
  `tur_serie` int(1) DEFAULT NULL,
  `tur_sala` int(3) NOT NULL,
  `tb_curso_cur_id` int(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`tur_id`),
  KEY `fk_tb_turmas_tb_curso1_idx` (`tb_curso_cur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_turma`
--

INSERT INTO `tb_turma` (`tur_id`, `tur_nome`, `tur_serie`, `tur_sala`, `tb_curso_cur_id`) VALUES
(1, 'Segurançaa do Trabalho', 3, 12, 4),
(2, 'Redes de Computadores', 3, 11, 1),
(3, 'Informática', 3, 10, 2),
(4, 'Enfermagem', 3, 9, 5),
(5, 'Informática', 2, 8, 2),
(6, 'Finanças', 2, 7, 3),
(7, 'Enfermagem', 2, 6, 5),
(8, 'Agropecuária', 2, 5, 7),
(9, 'Redes de Computadores', 1, 4, 1),
(10, 'Informática', 1, 3, 2),
(11, 'Enfermagem', 1, 2, 5),
(12, 'Administração', 1, 1, 8);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_disciplina_tecnica_has_tb_curso`
--
ALTER TABLE `tb_disciplina_tecnica_has_tb_curso`
  ADD CONSTRAINT `Index1` FOREIGN KEY (`tb_curso_cur_id`) REFERENCES `tb_curso` (`cur_id`),
  ADD CONSTRAINT `tb_disciplina_tecnica_has_tb_curso_ibfk_1` FOREIGN KEY (`tb_disciplina_tecnica_dis_tec_id`) REFERENCES `tb_disciplina_tecnica` (`dis_tec_id`);

--
-- Limitadores para a tabela `tb_disciplina_tecnica_has_tb_professor_tecnico`
--
ALTER TABLE `tb_disciplina_tecnica_has_tb_professor_tecnico`
  ADD CONSTRAINT `fk_tb_disciplina_tecnica_has_tb_professor_tecnico_tb1` FOREIGN KEY (`tb_disciplina_tecnica_dis_tec_id`) REFERENCES `tb_disciplina_tecnica` (`dis_tec_id`),
  ADD CONSTRAINT `fk_tb_disciplina_tecnica_has_tb_professor_tecnico_tb2` FOREIGN KEY (`tb_professor_tecnico_pro_tec_id`) REFERENCES `tb_professor_tecnico` (`pro_tec_id`);

--
-- Limitadores para a tabela `tb_professor_has_tb_disciplina`
--
ALTER TABLE `tb_professor_has_tb_disciplina`
  ADD CONSTRAINT `tb_professor_has_tb_disciplina_ibfk_1` FOREIGN KEY (`tb_professor_pro_id`) REFERENCES `tb_professor` (`pro_id`),
  ADD CONSTRAINT `tb_professor_has_tb_disciplina_ibfk_2` FOREIGN KEY (`tb_disciplina_dis_id`) REFERENCES `tb_disciplina` (`dis_id`);

--
-- Limitadores para a tabela `tb_professor_has_tb_turma`
--
ALTER TABLE `tb_professor_has_tb_turma`
  ADD CONSTRAINT `tb_professor_has_tb_turma_ibfk_1` FOREIGN KEY (`tb_professor_pro_id`) REFERENCES `tb_professor` (`pro_id`),
  ADD CONSTRAINT `tb_professor_has_tb_turma_ibfk_2` FOREIGN KEY (`tb_turma_tur_id`) REFERENCES `tb_turma` (`tur_id`);

--
-- Limitadores para a tabela `tb_professor_tecnico_has_tb_turma`
--
ALTER TABLE `tb_professor_tecnico_has_tb_turma`
  ADD CONSTRAINT `tb_professor_tecnico_has_tb_turma_ibfk_1` FOREIGN KEY (`tb_professor_tecnico_pro_tec_id`) REFERENCES `tb_professor_tecnico` (`pro_tec_id`),
  ADD CONSTRAINT `tb_professor_tecnico_has_tb_turma_ibfk_2` FOREIGN KEY (`tb_turma_tur_id`) REFERENCES `tb_turma` (`tur_id`);

--
-- Limitadores para a tabela `tb_turma`
--
ALTER TABLE `tb_turma`
  ADD CONSTRAINT `fk_tb_turma_tb_curso1` FOREIGN KEY (`tb_curso_cur_id`) REFERENCES `tb_curso` (`cur_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
