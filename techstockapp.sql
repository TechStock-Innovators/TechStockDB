-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09/09/2024 às 17:43
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `techstockapp`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `chamados`
--

CREATE TABLE `chamados` (
  `id` int(11) NOT NULL,
  `patrimonio` int(11) DEFAULT NULL,
  `descricao` text NOT NULL,
  `responsavel` text NOT NULL,
  `setor` text DEFAULT NULL,
  `tecnico` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `mensagens` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '[]',
  `status` text NOT NULL DEFAULT 'Novo',
  `linksBase` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`linksBase`)),
  `edited_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `edited_by` text DEFAULT NULL,
  `created_by` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `chamados`
--

INSERT INTO `chamados` (`id`, `patrimonio`, `descricao`, `responsavel`, `setor`, `tecnico`, `tags`, `mensagens`, `status`, `linksBase`, `edited_at`, `created_at`, `edited_by`, `created_by`) VALUES
(1, 1, 'description', 'fred', 'TI', 'Alfred', 'PC', '[]', 'Novo', NULL, NULL, '2024-08-27 10:53:58', NULL, 'g'),
(2, 573, 'asd', '1', 'sv', 'Novato', 'PC', '[{\"dtEnvio\":\"29/08/2024\",\"usuario\":\"fred\",\"mensagem\":\"string da mensagem\"},{\"dtEnvio\":\"29/08/2024\",\"usuario\":\"TESTE\",\"mensagem\":\"string da mensagem 2\"},{\"dtEnvio\":\"29/08/2024\",\"usuario\":\"TESTE\",\"mensagem\":\"string da mensagem 3\"},{\"dtEnvio\":\"29/08/2024\",\"usuario\":\"TESTE\",\"mensagem\":\"string da mensagem 4\"},{\"dtEnvio\":\"29/08/2024\",\"usuario\":\"fred\",\"mensagem\":\"string da mensagem 5\"},{\"dtEnvio\":\"29/08/2024\",\"usuario\":\"TESTE\",\"mensagem\":\"string da mensagem 2\"},{\"dtEnvio\":\"function now() { [native code] }\",\"usuario\":\"SEM NOME 123\",\"mensagem\":\"asd\"},{\"dtEnvio\":\"1724960166395\",\"usuario\":\"SEM NOME 123\",\"mensagem\":\"asd\"},{\"dtEnvio\":\"2024-08-29T19:45:41.366Z\",\"usuario\":\"SEM NOME 123\",\"mensagem\":\"asd\"},{\"dtEnvio\":\"2024-08-30T14:39:43.630Z\",\"usuario\":\"fred\",\"mensagem\":\"Teste de Envio Novo\"},{\"dtEnvio\":\"2024-08-30T14:41:07.455Z\",\"usuario\":\"fred\",\"mensagem\":\"123\"},{\"dtEnvio\":\"2024-08-30T14:47:05.996Z\",\"usuario\":\"fred\",\"mensagem\":\"321\"},{\"dtEnvio\":\"2024-08-30T14:47:27.291Z\",\"usuario\":\"fred\",\"mensagem\":\"\"},{\"dtEnvio\":\"2024-08-30T14:49:25.957Z\",\"usuario\":\"fred\",\"mensagem\":\"envia\"},{\"dtEnvio\":\"2024-08-30T14:49:29.469Z\",\"usuario\":\"fred\",\"mensagem\":\"\"},{\"dtEnvio\":\"2024-08-30T14:49:31.964Z\",\"usuario\":\"fred\",\"mensagem\":\"enviaas\"},{\"dtEnvio\":\"2024-08-30T14:49:47.108Z\",\"usuario\":\"fred\",\"mensagem\":\"\"},{\"dtEnvio\":\"2024-08-30T14:50:57.773Z\",\"usuario\":\"fred\",\"mensagem\":\"\"},{\"dtEnvio\":\"2024-08-30T14:51:38.206Z\",\"usuario\":\"fred\",\"mensagem\":\"\"},{\"dtEnvio\":\"2024-08-30T14:52:31.319Z\",\"usuario\":\"fred\",\"mensagem\":\"147\"},{\"dtEnvio\":\"2024-08-30T14:53:36.777Z\",\"usuario\":\"fred\",\"mensagem\":\"\"},{\"dtEnvio\":\"2024-08-30T14:54:28.376Z\",\"usuario\":\"fred\",\"mensagem\":\"\"},{\"dtEnvio\":\"2024-08-30T14:55:31.288Z\",\"usuario\":\"fred\",\"mensagem\":\"\"},{\"dtEnvio\":\"2024-08-30T14:56:36.313Z\",\"usuario\":\"fred\",\"mensagem\":\"dfg\"},{\"dtEnvio\":\"2024-08-30T14:57:47.979Z\",\"usuario\":\"fred\",\"mensagem\":\"\"},{\"dtEnvio\":\"2024-08-30T15:31:12.922Z\",\"usuario\":\"fred\",\"mensagem\":\"teste novo\"},{\"dtEnvio\":\"2024-08-30T20:25:42.327Z\",\"usuario\":\"fred\",\"mensagem\":\"e\"}]', 'Novo', NULL, '2024-08-30 17:30:08', '2024-08-27 17:27:18', 'SEM NOME AINDA', 'SEM NOME'),
(4, 789, 'asd', 'asd', 'asd', NULL, NULL, '[]', 'Novo', NULL, NULL, '2024-08-27 17:28:44', NULL, 'SEM NOME'),
(5, 159456, 'TESTE', 'FRED', 'TI', NULL, NULL, '[]', 'Novo', NULL, NULL, '2024-08-28 11:19:14', NULL, 'SEM NOME'),
(6, 15987533, 'teste de carregamento de dados em tabela', 'TI', 'TI', NULL, NULL, '[]', 'Novo', NULL, NULL, '2024-09-04 14:45:42', NULL, 'SEM NOME'),
(7, 123456789, 'um texto', 'Técnico', 'TI', 'null', 'null', '[{\"dtEnvio\":\"2024-09-04T18:10:02.829Z\",\"usuario\":\"fred\",\"mensagem\":\"Boa noite!\"}]', 'Novo', NULL, '2024-09-04 15:10:19', '2024-09-04 15:09:34', 'SEM NOME AINDA', 'SEM NOME');

-- --------------------------------------------------------

--
-- Estrutura para tabela `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `patrimonio` int(11) NOT NULL,
  `modelo` text NOT NULL,
  `processador` text DEFAULT NULL,
  `placamae` text DEFAULT NULL,
  `fonte` text DEFAULT NULL,
  `armazenamento` text DEFAULT NULL,
  `ram` text DEFAULT NULL,
  `placadevideo` text DEFAULT NULL,
  `sistemaoperacional` text DEFAULT NULL,
  `tipo` text NOT NULL,
  `responsavel` text DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `created_by` text NOT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `inventario`
--

INSERT INTO `inventario` (`id`, `nome`, `patrimonio`, `modelo`, `processador`, `placamae`, `fonte`, `armazenamento`, `ram`, `placadevideo`, `sistemaoperacional`, `tipo`, `responsavel`, `observacoes`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'teste', 123321, 'de teste', 'um ruim', 'não tem', 'funciona', 'HD', '8GB', 'não tem', 'Win 10', 'PC', 'TI', NULL, '2024-09-03', 'ME', NULL, NULL),
(2, 'Aspargo', 15987533, 'Optiplex 7080', 'I3-12220X', 'A320-M', '300W', '1TB HD', '8GB 3200MHz', 'undefined', 'Win 10', 'PC', 'TI', 'undefined', '2024-09-04', 'SEM NOME', NULL, NULL),
(3, 'teste', 123456789, 'Optiplex 7070', 'I9-12220X', 'A320-micro', '350W', '1TB SSD', '8GB 3200MHz', 'undefined', 'Win 10', 'PC', 'Setor', 'Nenhuma', '2024-09-04', 'SEM NOME', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `email` text DEFAULT NULL,
  `permission` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `name`, `email`, `permission`, `section`, `created_at`) VALUES
(1, 'fred', '$2y$10$Oa26kDwjGwc7yMNAHKIXtOHx4w29qc5TMUGohBAXl/EmyDdYgvIzG', 'Fred', 'fred@exemplo.com', 'Administrador', 'TI', '2024-08-26');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `chamados`
--
ALTER TABLE `chamados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chamados`
--
ALTER TABLE `chamados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
