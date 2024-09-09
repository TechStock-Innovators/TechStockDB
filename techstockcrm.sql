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
-- Banco de dados: `techstockcrm`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `email` text NOT NULL,
  `mensagem` text NOT NULL,
  `sucesso` int(11) NOT NULL DEFAULT 0,
  `tentativas` int(11) NOT NULL DEFAULT 0,
  `feedback` text DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='sucesso: 0 sem resposta, 1 falha, 2 sucesso';

--
-- Despejando dados para a tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `nome`, `email`, `mensagem`, `sucesso`, `tentativas`, `feedback`, `observacoes`) VALUES
(1, 'Robin Hunt', 'mwilliams@example.net', 'Saudações\nPoderiamos conversar sobre o orçamento?\nGrato', 0, 0, '', ''),
(2, 'Bryan Williams', 'qbarnes@example.net', 'Boa Noite\nGostaria de saber mais sobre a plataforma.\nAgradeço desde já', 0, 0, NULL, NULL),
(3, 'Juan Castaneda', 'mark09@example.com', 'Olá\nGostaria de saber mais sobre a plataforma.\nAgradeço desde já', 0, 0, NULL, NULL),
(4, 'Thomas Mathews', 'qdavis@example.net', 'Saudações\nPoderiamos conversar sobre o orçamento?\nAtentamente', 0, 0, NULL, NULL),
(5, 'Elizabeth Anderson', 'ballardbrian@example.org', 'Olá\nGostaria de saber mais sobre a plataforma.\nAtenciosamente', 0, 0, NULL, NULL),
(6, 'Kendra Powell', 'alexandria16@example.com', 'Bom dia\nPoderiamos conversar sobre o orçamento?\nAtentamente', 0, 0, NULL, NULL),
(7, 'Wesley Evans', 'elizabeth54@example.org', 'Boa Noite\nPoderiamos conversar sobre o orçamento?\nAgradeço desde já', 0, 0, NULL, NULL),
(8, 'Jody Acosta', 'smithalexander@example.net', 'Olá\nPoderiamos conversar sobre o orçamento?\nGrato', 0, 0, NULL, NULL),
(9, 'Allen Watkins', 'nicole88@example.org', 'Olá\nPoderiamos conversar sobre o orçamento?\nAt.te', 0, 0, NULL, NULL),
(10, 'Austin Rodriguez', 'thomasapril@example.org', 'Boa Noite\nGostaria de saber mais sobre a plataforma.\nAgradeço desde já', 0, 0, NULL, NULL),
(11, 'Cynthia Bates', 'andersonkrista@example.com', 'Saudações\nGostaria de saber mais sobre a plataforma.\nAtentamente', 0, 0, NULL, NULL),
(12, 'Ryan Mays', 'martinezlisa@example.com', 'Saudações\nPoderiamos conversar sobre o orçamento?\nAt.te', 0, 0, NULL, NULL),
(13, 'Ryan Chan', 'anagarrett@example.com', 'Bom dia\nPoderiamos conversar sobre o orçamento?\nAtenciosamente', 0, 0, NULL, NULL),
(14, 'Alison Mullins', 'nicole07@example.net', 'Saudações\nPoderiamos conversar sobre o orçamento?\nAgradeço desde já', 0, 0, NULL, NULL),
(15, 'Anna Taylor', 'brentgilmore@example.com', 'Bom dia\nPoderiamos conversar sobre o orçamento?\nAtenciosamente', 0, 0, NULL, NULL),
(16, 'Joy Foster', 'leeriley@example.net', 'Boa Tarde\nPoderiamos conversar sobre o orçamento?\nGrato', 0, 0, NULL, NULL),
(17, 'Brandon Wright', 'jack36@example.net', 'Boa Noite\nPoderiamos conversar sobre o orçamento?\nAgradeço desde já', 0, 0, NULL, NULL),
(18, 'Sonya Meyer', 'brentburton@example.net', 'Boa Tarde\nPoderiamos conversar sobre o orçamento?\nAt.te', 0, 0, NULL, NULL),
(19, 'Gloria Carter', 'qholloway@example.org', 'Olá\nPoderiamos conversar sobre o orçamento?\nAt.te', 0, 0, NULL, NULL),
(20, 'Jeremy Wilson', 'cassandrabrown@example.org', 'Bom dia\nPoderiamos conversar sobre o orçamento?\nAtentamente', 0, 0, NULL, NULL),
(21, 'Gerald Hill', 'amanda60@example.org', 'Boa Noite\nGostaria de saber mais sobre a plataforma.\nAt.te', 0, 0, NULL, NULL),
(22, 'Tara Thompson', 'shannonhenry@example.net', 'Boa Noite\nGostaria de saber mais sobre a plataforma.\nAtentamente', 0, 0, NULL, NULL),
(23, 'Rebecca Rodriguez', 'xsanchez@example.net', 'Saudações\nPoderiamos conversar sobre o orçamento?\nAtentamente', 0, 0, NULL, NULL),
(24, 'Ian Scott', 'edwardskathleen@example.net', 'Saudações\nPoderiamos conversar sobre o orçamento?\nAtenciosamente', 0, 0, NULL, NULL),
(25, 'Sarah Jones', 'charles94@example.net', 'Boa Tarde\nGostaria de saber mais sobre a plataforma.\nAgradeço desde já', 0, 0, NULL, NULL),
(26, 'Matthew Miles', 'brittany75@example.org', 'Olá\nPoderiamos conversar sobre o orçamento?\nAtenciosamente', 0, 0, NULL, NULL),
(27, 'Kathy Alexander', 'kevin01@example.net', 'Boa Noite\nGostaria de saber mais sobre a plataforma.\nAt.te', 0, 0, NULL, NULL),
(28, 'Kenneth Rodriguez', 'jasonhiggins@example.org', 'Saudações\nGostaria de saber mais sobre a plataforma.\nAgradeço desde já', 0, 0, NULL, NULL),
(29, 'Duane Davis', 'thomasmisty@example.org', 'Bom dia\nGostaria de saber mais sobre a plataforma.\nAt.te', 0, 0, NULL, NULL),
(30, 'William Moore', 'bernardrussell@example.com', 'Boa Tarde\nGostaria de saber mais sobre a plataforma.\nAtentamente', 0, 0, NULL, NULL),
(31, 'Kelly Jackson', 'khart@example.org', 'Boa Noite\nPoderiamos conversar sobre o orçamento?\nGrato', 0, 0, NULL, NULL);

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
(15, 'admin', 'senha', 'Administrador', 'admin', 'Administrador', 'TI', '2024-08-08'),
(20, 'astolfobobo', 'senha', 'Astolfo, o Ridículo', 'astolfobobo@exemplo.com', 'Tester', 'Nenhum', '2024-08-09'),
(24, 'valdecir', 'senha', 'Valdecir', 'valdecir@exemplo.com', 'Desenvolvedor', 'Nenhum', '2024-08-09'),
(25, 'fred', 'senha', 'Frederico', 'fred@desimpedidos.br', 'Comissário', 'Futebol', '2024-08-09'),
(26, 'nathanielsullivan', '$v4xzLnu&m', 'Nathaniel Sullivan', 'jtaylor@example.com', 'Usuário', 'Operacional', '2024-08-14'),
(27, 'josephlewis', 'a2aKe6px#Q', 'Joseph Lewis', 'harveybenjamin@example.com', 'Usuário', 'Operacional', '2024-08-14'),
(28, 'carlfisher', 'pesK1pQlw(', 'Carl Fisher', 'figueroachristopher@example.com', 'Usuário', 'Operacional', '2024-08-14'),
(29, 'barbaralogan', 'W6SH&9wy$y', 'Barbara Logan', 'jennifer92@example.net', 'Usuário', 'Operacional', '2024-08-14'),
(30, 'rachellindsey', '$AWedVe(2f', 'Rachel Lindsey', 'myoung@example.com', 'Usuário', 'Operacional', '2024-08-14'),
(31, 'michaelcross', 'U*5iOh8LMB', 'Michael Cross', 'asutton@example.net', 'Usuário', 'Operacional', '2024-08-14');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `mensagens`
--
ALTER TABLE `mensagens`
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
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
