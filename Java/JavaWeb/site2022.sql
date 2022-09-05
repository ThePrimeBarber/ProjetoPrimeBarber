-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07-Jul-2022 às 17:06
-- Versão do servidor: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `site2022`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Cpf` int(11) NOT NULL,
  `Telefone` int(20) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissionais`
--

CREATE TABLE IF NOT EXISTS `profissionais` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Senha` varchar(50) NOT NULL,
  `Funcao` varchar(50) NOT NULL,
  `Acesso` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `profissionais`
--

INSERT INTO `profissionais` (`Id`, `Nome`, `Email`, `Senha`, `Funcao`, `Acesso`) VALUES
(1, 'Bruno', 'bruno@barber.com', 'bRUNO018', 'Gerente', 'Comum'),
(2, 'Bruno', 'bruno@barber.com', 'Bruno018', 'Barbeiro', 'Admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Senha` varchar(50) NOT NULL,
  `Acesso` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nome`, `Email`, `Senha`, `Acesso`, `Status`) VALUES
(1, 'Maria', 'xxx@xxx', '123', 'Admin', 'ativo'),
(2, 'Pedro', 'yyy@yyy', 'abc', 'Comum', 'ativo'),
(3, 'Marta', 'marta@gmail', 'ddd', 'Comum', 'ativo'),
(4, 'Marcos', 'marcos@gmail', 'ddd', 'Comum', 'ativo'),
(5, 'Tânia', 'tania@gmail', 'ddd', 'Comum', 'ativo'),
(6, 'Carlos', 'carlos@gmail', 'ggg', 'Comum', 'ativo'),
(7, 'Paulo', 'paulo@gmail', 'ggg', 'Comum', 'ativo'),
(8, 'Sandra', 'sandra@gmail', 'ggg', 'Comum', 'ativo'),
(9, 'Joana', 'joana@gmail', 'ggg', 'Comum', 'ativo'),
(10, 'Débora', 'debora@gmail', 'ggg', 'Comum', 'ativo'),
(11, 'César', 'cesar@gmail', 'ggg', 'Comum', 'ativo');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
