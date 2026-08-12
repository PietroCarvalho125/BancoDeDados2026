-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/08/2026 às 21:19
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `clientes` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `clientes`, `email`, `cpf`) VALUES
(1, 'Pietro Carvalho', 'pietrocarvalho8@gmail.com', '481.928.731.39'),
(2, 'Melanye Garcon', 'helimel16@gmail.com', '928.481.731.39'),
(3, 'Marcos Balbino', 'mpbalbino08@gmail.com', '390.928.731.39'),
(4, 'Gustavo Soares', 'gugusoso8@gmail.com', '128.928.731.39'),
(5, 'Raphael Ferreira', 'resenha2@gmail.com', '876.928.731.39'),
(6, 'Renata Cruz', 'renatinha67@gmail.com', '967.928.731.39'),
(7, 'Heloisa Sansalone', 'helobest12@gmail.com', '546.928.731.39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospedagem`
--

CREATE TABLE `hospedagem` (
  `codhospedagem` int(11) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date DEFAULT NULL,
  `horaentrada` time NOT NULL,
  `horasaida` time DEFAULT NULL,
  `totalhospedagem` decimal(7,2) NOT NULL,
  `codcli` int(11) DEFAULT NULL,
  `codquart` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hospedagem`
--

INSERT INTO `hospedagem` (`codhospedagem`, `dataentrada`, `datasaida`, `horaentrada`, `horasaida`, `totalhospedagem`, `codcli`, `codquart`) VALUES
(3, '2026-08-08', NULL, '13:40:01', NULL, 0.00, 1, 1),
(4, '2026-08-08', NULL, '13:40:01', NULL, 0.00, 2, 2),
(5, '2026-08-15', NULL, '12:53:31', NULL, 0.00, 3, 12),
(6, '2026-08-08', NULL, '14:32:31', NULL, 0.00, 4, 3),
(7, '2026-08-15', NULL, '12:58:58', NULL, 0.00, 5, 11),
(8, '2026-08-08', NULL, '13:40:58', NULL, 0.00, 6, 4),
(9, '2026-08-08', NULL, '13:41:24', NULL, 0.00, 7, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `quarto`
--

CREATE TABLE `quarto` (
  `codquarto` int(11) NOT NULL,
  `quarto` varchar(255) NOT NULL,
  `andar` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `quarto`
--

INSERT INTO `quarto` (`codquarto`, `quarto`, `andar`, `tipo`) VALUES
(1, '11', '1º Andar', 'Individual'),
(2, '12', '1º Andar', 'Casal'),
(3, '13', '1º Andar', 'Familia + Cama Solteiro'),
(4, '14', '1º Andar', 'Familia + 2 Cama Solteiro'),
(5, '21', '2º Andar', 'Familia + Cama Solteiro'),
(6, '22', '2º Andar', 'Familia + 2 Cama Solteiro'),
(7, '23', '2º Andar', 'Mega Familia'),
(8, '24', '2º Andar', 'Suite Presidencial'),
(9, '31', '3º Andar', 'Familia + Cama Solteiro'),
(10, '32', '3º Andar', 'Familia + Cama Solteiro'),
(11, '33', '3º Andar', 'Mega Familia'),
(12, '34', '3º Andar', 'Suite Presidencial');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(255) NOT NULL,
  `valor` decimal(7,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`codservico`, `servico`, `valor`, `qtde`, `tipo`) VALUES
(1, 'Coca Cola Lata', 5.00, 0, 'Bebida'),
(2, 'Coca Cola 2L', 20.00, 0, 'Bebida'),
(3, 'Coca Cola 600', 8.00, 0, 'Bebida'),
(4, 'Cerveja Lata - Skol', 10.50, 0, 'Bebida'),
(5, 'Cerveja Lata - Amstel', 12.50, 0, 'Bebida'),
(6, 'Cerveja Lata - Amstel Ultra', 15.50, 0, 'Bebida'),
(7, 'Porção De Batata G', 25.00, 0, 'Comida'),
(8, 'Porção De Batata M', 20.00, 0, 'Comida'),
(9, 'Porção De Batata P', 15.00, 0, 'Comida'),
(10, 'Almoço', 25.00, 0, 'Comida'),
(11, 'Massagem 30 Min', 35.00, 0, 'Lazer'),
(12, 'Massagem 1 Hora', 60.00, 0, 'Lazer'),
(13, 'Aluguel Bicicleta', 50.00, 0, 'Lazer');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicoshospedagem`
--

CREATE TABLE `servicoshospedagem` (
  `codhospedagem` int(11) DEFAULT NULL,
  `codservico` int(11) DEFAULT NULL,
  `datacompra` date NOT NULL,
  `horacompra` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicoshospedagem`
--

INSERT INTO `servicoshospedagem` (`codhospedagem`, `codservico`, `datacompra`, `horacompra`) VALUES
(3, 10, '2026-08-09', '13:03:15'),
(3, 12, '2026-08-09', '18:03:15'),
(4, 9, '2026-08-09', '13:05:32'),
(4, 12, '2026-08-09', '18:05:32'),
(5, 6, '2026-08-19', '16:35:54'),
(5, 8, '2026-08-19', '16:35:54'),
(6, 1, '2026-08-21', '19:41:36'),
(6, 10, '2026-08-17', '12:41:36'),
(7, 9, '2026-08-19', '13:42:40'),
(8, 13, '2026-08-17', '19:29:40'),
(9, 3, '2026-08-20', '13:30:05'),
(9, 10, '2026-08-20', '13:30:05');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD PRIMARY KEY (`codhospedagem`),
  ADD KEY `codcli` (`codcli`),
  ADD KEY `codquart` (`codquart`);

--
-- Índices de tabela `quarto`
--
ALTER TABLE `quarto`
  ADD PRIMARY KEY (`codquarto`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`codservico`);

--
-- Índices de tabela `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD KEY `codhospedagem` (`codhospedagem`),
  ADD KEY `codservico` (`codservico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `hospedagem`
--
ALTER TABLE `hospedagem`
  MODIFY `codhospedagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `quarto`
--
ALTER TABLE `quarto`
  MODIFY `codquarto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `hospedagem`
--
ALTER TABLE `hospedagem`
  ADD CONSTRAINT `hospedagem_ibfk_1` FOREIGN KEY (`codcli`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `hospedagem_ibfk_2` FOREIGN KEY (`codquart`) REFERENCES `quarto` (`codquarto`);

--
-- Restrições para tabelas `servicoshospedagem`
--
ALTER TABLE `servicoshospedagem`
  ADD CONSTRAINT `servicoshospedagem_ibfk_1` FOREIGN KEY (`codhospedagem`) REFERENCES `hospedagem` (`codhospedagem`),
  ADD CONSTRAINT `servicoshospedagem_ibfk_2` FOREIGN KEY (`codservico`) REFERENCES `servicos` (`codservico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
