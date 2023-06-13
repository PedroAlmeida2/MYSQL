-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jun-2023 às 00:17
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pousada`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acoes`
--

CREATE TABLE `acoes` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `cargos_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(45) NOT NULL,
  `DESCRICAO` text NOT NULL,
  `ARQUIVAR_EM` varchar(5) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`ID`, `NOME`, `DESCRICAO`, `ARQUIVAR_EM`) VALUES
(1, 'Gerente', 'Um gerente de pousada é um profissional responsável pela gestão estratégica da pousada, garantindo que todas as áreas e departamentos estejam alinhados para atingir os objetivos do negócio.\nAs principais atividades desse profissional incluem definir e implementar a estratégia de negócio da pousada, gerenciar as finanças e o fluxo de caixa, supervisionar e coordenar a equipe de funcionários, cuidar da manutenção e limpeza das instalações, gerenciar a experiência dos hóspedes e garantir o cumprimento de todas as regulamentações e leis.', 'N'),
(2, 'Atendente', 'Um atendente de pousada é um profissional que trabalha no atendimento ao público. Esse profissional é responsável por receber e atender os hóspedes, prestando informações e orientações sobre a pousada e os serviços oferecidos.\nAs principais atividades desse profissional incluem realizar o check-in e o check-out dos hóspedes, fornecer informações sobre a pousada e a região, atender solicitações e reclamações dos clientes, fazer reservas e gerenciar a disponibilidade dos quartos. Além disso, ele também pode ser responsável por realizar a cobrança das diárias e de outros serviços adicionais, como café da manhã e lavanderia.', 'N'),
(3, 'Admin', 'Um administrador de pousada é um profissional responsável pela gestão e coordenação de todas as atividades relacionadas ao funcionamento da pousada, como finanças, marketing, recursos humanos, manutenção e atendimento ao cliente.\nAs principais atividades desse profissional incluem definir e implementar as políticas e estratégias da pousada, gerenciar as finanças e o fluxo de caixa, supervisionar a equipe de funcionários, cuidar da manutenção e limpeza das instalações e coordenar as atividades de marketing e vendas para a atração de novos clientes.', 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartoes`
--

CREATE TABLE `cartoes` (
  `ID` int(11) NOT NULL,
  `NOME_TITULAR` varchar(45) NOT NULL,
  `NUMERO` varchar(21) NOT NULL,
  `VALIDADE` varchar(7) NOT NULL,
  `CVV` varchar(32) NOT NULL,
  `TIPO` varchar(12) NOT NULL,
  `clientes_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clientecartao`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clientecartao` (
`ID` int(11)
,`NOME` varchar(70)
,`CPF` varchar(14)
,`RG` varchar(12)
,`EMAIL` varchar(70)
,`NOME_TITULAR` varchar(45)
,`NUMERO` varchar(21)
,`VALIDADE` varchar(7)
,`CVV` varchar(32)
,`TIPO` varchar(12)
,`clientes_ID` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clientepedidoreservas`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clientepedidoreservas` (
`CLIENTE_ID` int(11)
,`CLIENTE_NOME` varchar(70)
,`CLIENTE_CPF` varchar(14)
,`RG` varchar(12)
,`CLIENTE_EMAIL` varchar(70)
,`ID_PEDIDO` int(11)
,`DATA_RESERVA` datetime
,`PEDIDO_DATA_ENTRADA` datetime
,`PEDIDO_DATA_SAIDA` datetime
,`PEDIDO_NOME` varchar(70)
,`PEDIDO_CPF` varchar(14)
,`PEDIDO_EMAIL` varchar(70)
,`ACOMPANHANTES` int(11)
,`PEDIDO_PEDIDO_QUARTOS_ID` int(11)
,`PEDIDO_PEDIDO_STATUS_ID` int(11)
,`QUARTO_ID` int(11)
,`QUARTO` varchar(45)
,`DESCRICAO` text
,`PRECO_DIARIA` double(6,2)
,`QTDE_PESSOAS` int(11)
,`DESTAQUE` bit(1)
,`QUARTO_STATUS_ID` int(11)
,`QUARTO_TIPOS_ID` int(11)
,`TIPO_ID` int(11)
,`TIPO` varchar(45)
,`STATUS_ID` int(11)
,`STATUS` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `clientepedidoreservasgeral`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `clientepedidoreservasgeral` (
`CLIENTE_ID` int(11)
,`CLIENTE_NOME` varchar(70)
,`CLIENTE_CPF` varchar(14)
,`RG` varchar(12)
,`CLIENTE_EMAIL` varchar(70)
,`ID_PEDIDO` int(11)
,`DATA_RESERVA` datetime
,`PEDIDO_DATA_ENTRADA` datetime
,`PEDIDO_DATA_SAIDA` datetime
,`PEDIDO_NOME` varchar(70)
,`PEDIDO_CPF` varchar(14)
,`PEDIDO_EMAIL` varchar(70)
,`ACOMPANHANTES` int(11)
,`PEDIDO_PEDIDO_QUARTOS_ID` int(11)
,`PEDIDO_PEDIDO_STATUS_ID` int(11)
,`QUARTO_ID` int(11)
,`QUARTO` varchar(45)
,`DESCRICAO` text
,`PRECO_DIARIA` double(6,2)
,`QTDE_PESSOAS` int(11)
,`DESTAQUE` bit(1)
,`QUARTO_STATUS_ID` int(11)
,`QUARTO_TIPOS_ID` int(11)
,`TIPO_ID` int(11)
,`TIPO` varchar(45)
,`RESERVA_ID` int(11)
,`PRECO_TOTAL` float(6,2)
,`PARCELAS_TOTAL` int(2)
,`RESERVA_DATA_ENTRADA` datetime
,`RESERVA_DATA_SAIDA` datetime
,`RESERVA_PEDIDOS_RESERVAS_ID` int(11)
,`RESERVA_FUNCIONARIOS_ID` int(11)
,`RESERVA_STATUS_ID` int(11)
,`STATUS_ID` int(11)
,`STATUS` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(70) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `RG` varchar(12) NOT NULL,
  `SENHA` varchar(32) NOT NULL,
  `EMAIL` varchar(70) NOT NULL,
  `RECUPERAR_SENHA` varchar(100) DEFAULT NULL,
  `ARQUIVAR_EM` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`ID`, `NOME`, `CPF`, `RG`, `SENHA`, `EMAIL`, `RECUPERAR_SENHA`, `ARQUIVAR_EM`) VALUES
(2, 'henrique', '544.225.444-11', '55.474.152-5', 'dcd32e316ca0dd502589c01ae56b8785', 'henrique@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `dataquartoindisponivel`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `dataquartoindisponivel` (
`ID_PEDIDO` int(11)
,`DATA_RESERVA` datetime
,`DATA_ENTRADA` datetime
,`DATA_SAIDA` datetime
,`NOME` varchar(70)
,`CPF` varchar(14)
,`EMAIL` varchar(70)
,`ACOMPANHANTES` int(11)
,`pedido_quartos_ID` int(11)
,`pedido_status_ID` int(11)
,`ID_STATUS` int(11)
,`STATUS` varchar(20)
,`ID_QUARTOS` int(11)
,`QUARTO` varchar(45)
,`DESCRICAO` text
,`PRECO_DIARIA` double(6,2)
,`QTDE_PESSOAS` int(11)
,`DESTAQUE` bit(1)
,`ARQUIVAR_EM` datetime
,`quarto_status_ID` int(11)
,`tipos_ID` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos_cli`
--

CREATE TABLE `enderecos_cli` (
  `ID` int(11) NOT NULL,
  `CEP` varchar(9) NOT NULL,
  `CIDADE` varchar(30) NOT NULL COMMENT 'Pensando que o sistema atendera no máximo o BRASIL, a cidade tem varchar de 30 pois o muncipio brasileiro com o nome mais comprido é: São José do Vale do Rio Preto no estado do Rio de Janeiro.',
  `UF` varchar(2) NOT NULL,
  `LOGRADOURO` varchar(60) NOT NULL,
  `NUMERO` varchar(6) NOT NULL,
  `cliente_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `enderecos_cli`
--

INSERT INTO `enderecos_cli` (`ID`, `CEP`, `CIDADE`, `UF`, `LOGRADOURO`, `NUMERO`, `cliente_ID`) VALUES
(2, '01310-904', 'São Paulo', 'SP', 'Avenida Paulista', '1000', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos_func`
--

CREATE TABLE `enderecos_func` (
  `ID` int(11) NOT NULL,
  `LOGRADOURO` varchar(70) NOT NULL,
  `NUMERO` varchar(5) NOT NULL,
  `CEP` varchar(9) NOT NULL,
  `BAIRRO` varchar(30) NOT NULL,
  `CIDADE` varchar(30) NOT NULL,
  `UF` varchar(2) NOT NULL,
  `funcionario_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_pagamentos`
--

CREATE TABLE `formas_pagamentos` (
  `ID` int(11) NOT NULL,
  `TIPO` varchar(12) NOT NULL COMMENT 'o tipo do pagamento será: credito, debito, boleto, dinheiro e dois cartões. por isso varchar de 12'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(70) NOT NULL,
  `DATA_NASC` date NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `RG` varchar(12) NOT NULL,
  `SALARIO` double(7,2) NOT NULL,
  `EMAIL` varchar(70) NOT NULL,
  `SENHA` varchar(32) NOT NULL,
  `PERIODO` varchar(20) NOT NULL,
  `ADMISSAO` datetime NOT NULL DEFAULT current_timestamp(),
  `DEMISSAO` datetime DEFAULT NULL,
  `cargos_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historicos`
--

CREATE TABLE `historicos` (
  `ID` int(11) NOT NULL,
  `LOGS` text NOT NULL,
  `DATA_HORA` datetime NOT NULL,
  `funcionarios_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `ID` int(11) NOT NULL,
  `IMAGEM_CAMINHO_1` varchar(100) NOT NULL,
  `IMAGEM_CAMINHO_2` varchar(100) NOT NULL,
  `quartos_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`ID`, `IMAGEM_CAMINHO_1`, `IMAGEM_CAMINHO_2`, `quartos_ID`) VALUES
(24, 'images/quartos/quarto1.jpg', '../images/quartos/quarto1.jpg', 1),
(25, 'images/quartos/quarto1-2.jpg', '../images/quartos/quarto1-2.jpg', 1),
(26, 'images/quartos/quarto1-3.jpg', '../images/quartos/quarto1-3.jpg', 1),
(27, 'images/quartos/quarto2.jpg', '../images/quartos/quarto2.jpg', 2),
(28, 'images/quartos/quarto2-2.jpg', '../images/quartos/quarto2-2.jpg', 2),
(29, 'images/quartos/quarto2-3.jpg', '../images/quartos/quarto2-3.jpg', 2),
(30, 'images/quartos/quarto2-4.jpg', '../images/quartos/quarto2-4.jpg', 2),
(31, 'images/quartos/quarto3.jpg', '../images/quartos/quarto3.jpg', 3),
(32, 'images/quartos/quarto3-2.jpg', '../images/quartos/quarto3-2.jpg', 3),
(33, 'images/quartos/quarto3-3.jpg', '../images/quartos/quarto3-3.jpg', 3),
(34, 'images/quartos/quarto3-4.jpg', '../images/quartos/quarto3-4.jpg', 3),
(35, 'images/quartos/quarto4.jpg', '../images/quartos/quarto4.jpg', 4),
(36, 'images/quartos/quarto4-2.jpg', '../images/quartos/quarto4-2.jpg', 4),
(37, 'images/quartos/quarto4-3.jpg', '../images/quartos/quarto4-3.jpg', 4),
(38, 'images/quartos/quarto4-4.jpg', '../images/quartos/quarto4-4.jpg', 4),
(39, 'images/quartos/quarto5.jpg', '../images/quartos/quarto5.jpg', 5),
(40, 'images/quartos/quarto5-2.webp', '../images/quartos/quarto5-2.webp', 5),
(41, 'images/quartos/quarto5-3.webp', '../images/quartos/quarto5-3.webp', 5),
(42, 'images/quartos/quarto5-4.jpg', '../images/quartos/quarto5-4.jpg', 5),
(43, 'images/quartos/quarto6.jpg', '../images/quartos/quarto6.jpg', 6),
(44, 'images/quartos/quarto6-2.jpg', '../images/quartos/quarto6-2.jpg', 6),
(45, 'images/quartos/quarto7.jpg', '../images/quartos/quarto7.jpg', 7),
(46, 'images/quartos/quarto7-2.jpg', '../images/quartos/quarto7-2.jpg', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `negativas`
--

CREATE TABLE `negativas` (
  `ID` int(11) NOT NULL,
  `MOTIVO_NEGATIVA` text NOT NULL,
  `pedidos_reservas_ID` int(11) NOT NULL,
  `funcionarios_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `novidades`
--

CREATE TABLE `novidades` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(70) NOT NULL,
  `EMAIL` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `ID` int(11) NOT NULL,
  `ENTRADA` float(6,2) NOT NULL,
  `RESTANTE` float(6,2) DEFAULT NULL,
  `TAXA_JUROS` float(6,2) NOT NULL,
  `formas_pagamento_ID` int(11) NOT NULL,
  `reservas_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos_reservas`
--

CREATE TABLE `pedidos_reservas` (
  `ID` int(11) NOT NULL,
  `DATA_RESERVA` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DATA_ENTRADA` datetime NOT NULL,
  `DATA_SAIDA` datetime NOT NULL,
  `NOME` varchar(70) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `EMAIL` varchar(70) NOT NULL,
  `ACOMPANHANTES` int(11) NOT NULL,
  `quartos_ID` int(11) NOT NULL,
  `status_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos_reservas`
--

INSERT INTO `pedidos_reservas` (`ID`, `DATA_RESERVA`, `DATA_ENTRADA`, `DATA_SAIDA`, `NOME`, `CPF`, `EMAIL`, `ACOMPANHANTES`, `quartos_ID`, `status_ID`) VALUES
(1, '2023-05-08 13:41:38', '2023-05-17 13:41:00', '2023-05-19 13:41:00', 'henrique', '544.225.444-11', 'henrique@gmail.com', 1, 2, 7),
(2, '2023-05-08 13:52:14', '2023-05-25 13:50:00', '2023-05-27 13:50:00', 'henrique', '544.225.444-11', 'henrique@gmail.com', 2, 2, 5),
(3, '2023-05-08 14:50:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'henrique', '544.225.444-11', 'henrique@gmail.com', 2, 1, 7),
(4, '2023-05-08 14:53:02', '2023-05-11 14:52:00', '2023-05-12 14:52:00', 'henrique', '544.225.444-11', 'henrique@gmail.com', 1, 1, 7),
(5, '2023-05-08 14:54:40', '2023-05-11 14:52:00', '2023-05-12 14:52:00', 'henrique', '544.225.444-11', 'henrique@gmail.com', 1, 1, 7),
(6, '2023-05-08 16:20:28', '2023-05-10 16:20:00', '2023-05-12 16:20:00', 'henrique', '544.225.444-11', 'henrique@gmail.com', 1, 2, 7),
(7, '2023-05-09 16:50:51', '2023-05-25 16:50:00', '2023-05-26 16:50:00', 'henrique', '544.225.444-11', 'henrique@gmail.com', 3, 4, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes`
--

CREATE TABLE `permissoes` (
  `ID` int(11) NOT NULL,
  `CONSULTA` bit(1) NOT NULL,
  `DELETE` bit(1) NOT NULL,
  `CRIAR` bit(1) NOT NULL,
  `ALTERAR` bit(1) NOT NULL,
  `acoes_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quartos`
--

CREATE TABLE `quartos` (
  `ID` int(11) NOT NULL,
  `QUARTO` varchar(45) NOT NULL,
  `DESCRICAO` text NOT NULL,
  `PRECO_DIARIA` double(6,2) NOT NULL,
  `QTDE_PESSOAS` int(11) NOT NULL,
  `DESTAQUE` bit(1) NOT NULL,
  `ARQUIVAR_EM` datetime DEFAULT NULL,
  `status_ID` int(11) NOT NULL,
  `tipos_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `quartos`
--

INSERT INTO `quartos` (`ID`, `QUARTO`, `DESCRICAO`, `PRECO_DIARIA`, `QTDE_PESSOAS`, `DESTAQUE`, `ARQUIVAR_EM`, `status_ID`, `tipos_ID`) VALUES
(1, 'Suíte com Varanda', 'Bem-vindo(a) à nossa pousada! Nosso quarto duplo é o lugar perfeito para duas pessoas que procuram uma estadia confortável e acolhedora. O quarto está equipado com duas camas comuns e confortáveis, roupa de cama macia e travesseiros para uma boa noite de sono. Além disso, há um armário para guardar as suas roupas e pertences.\n\nA decoração é simples e elegante, com paredes claras e detalhes em madeira que trazem uma sensação de tranquilidade e relaxamento ao ambiente. A iluminação é suave e aconchegante, criando um ambiente agradável para descansar após um dia cheio de atividades.\n\nO quarto também possui uma mesa de trabalho para aqueles que precisam trabalhar durante a estadia, bem como uma televisão para os momentos de lazer. Além disso, há uma conexão Wi-Fi gratuita para que você possa se manter conectado durante a sua estadia.\n\nO banheiro privativo é equipado com um chuveiro com água quente, toalhas macias e produtos de higiene pessoal gratuitos para sua conveniência.\n\nNo geral, nosso quarto duplo é uma excelente escolha para casais ou amigos que desejam desfrutar de uma estadia tranquila e confortável em nossa pousada. Estamos ansiosos para recebê-lo(a)!', 340.10, 2, b'1', NULL, 1, 2),
(2, 'Quarto com Varanda Privativa', 'Bem-vindo(a) à nossa pousada! Nosso quarto duplo com uma decoração inspirada na natureza. Este quarto é perfeito para duas pessoas que buscam um ambiente relaxante e tranquilo durante a estadia. A paleta de cores verdes traz uma sensação de harmonia e frescor, convidando você a desfrutar de um ambiente natural e pacífico.\n\nO quarto é equipado com duas camas comuns e confortáveis, lençóis macios e travesseiros aconchegantes para uma noite de sono perfeita.\n\nA decoração do quarto é minimalista, com toques de madeira e elementos naturais, como plantas e pedras, que trazem uma sensação de serenidade e conexão com a natureza. A iluminação suave e natural cria um ambiente acolhedor para relaxar após um longo dia.\n\nO banheiro privativo está equipado com um chuveiro com água quente, toalhas macias e produtos de higiene pessoal gratuitos para sua conveniência.\n\nEste quarto também possui uma mesa de trabalho, bem como uma TV e Wi-Fi gratuito para garantir que você tenha tudo o que precisa para se sentir confortável e produtivo durante a sua estadia.\n\nEm resumo, o nosso quarto duplo verde é uma escolha excelente para casais ou amigos que procuram uma estadia agradável e relaxante na nossa pousada. Esperamos recebê-lo(a) em breve!', 290.50, 2, b'1', NULL, 1, 2),
(3, 'Quarto com Cama de Casal', 'Bem-vindo(a) à nossa pousada! Nosso quarto duplo com decoração em tons pastel de verde, perfeito para casais ou amigos que procuram uma estadia tranquila e relaxante. A paleta de cores suaves cria um ambiente calmo e sereno, perfeito para uma noite de sono reparadora.\n\nO quarto possui uma cama de casal confortável, roupa de cama macia e travesseiros fofos para uma noite de sono agradável. Há também um armário para guardar suas roupas e pertences durante a estadia.\n\nA decoração do quarto é elegante e minimalista, com paredes verdes pastel que trazem uma sensação de frescor e serenidade ao ambiente. A iluminação suave e natural cria um ambiente acolhedor e relaxante, convidando você a desfrutar de um ambiente tranquilo durante sua estadia.\n\nO banheiro privativo é equipado com um chuveiro com água quente, toalhas macias e produtos de higiene pessoal gratuitos para sua comodidade.\n\nEste quarto também possui uma mesa de trabalho, bem como uma TV e Wi-Fi gratuito para garantir que você tenha tudo o que precisa para se sentir confortável e produtivo durante a sua estadia.\n\nEm resumo, o nosso quarto duplo verde pastel é uma excelente escolha para casais ou amigos que procuram uma estadia confortável e relaxante na nossa pousada. Esperamos recebê-lo(a) em breve!', 299.99, 2, b'1', NULL, 1, 2),
(4, 'Quarto Familiar', 'Bem-vindo(a) à nossa pousada! Nosso elegante quarto que acomoda até quatro pessoas, perfeito para famílias ou amigos que procuram uma estadia confortável e agradável juntos. Este quarto está equipado com uma cama de casal confortável e duas camas comuns, cada uma com roupa de cama macia e travesseiros para garantir uma noite de sono agradável e reparadora.\n\nA decoração é elegante e sofisticada, com paredes claras e detalhes em madeira que trazem um toque de modernidade e elegância ao ambiente. A iluminação é suave e aconchegante, criando um ambiente acolhedor para relaxar e desfrutar da companhia dos seus entes queridos.\n\nO quarto também possui uma mesa de trabalho para aqueles que precisam trabalhar durante a estadia, bem como uma televisão para os momentos de lazer. Além disso, há uma conexão Wi-Fi gratuita para que você possa se manter conectado durante a sua estadia.\n\nO banheiro privativo é equipado com um chuveiro com água quente, toalhas macias e produtos de higiene pessoal gratuitos para sua conveniência.\n\nNo geral, nosso quarto elegante que acomoda quatro pessoas é uma excelente escolha para famílias ou amigos que desejam desfrutar de uma estadia confortável e agradável juntos. Estamos ansiosos para recebê-lo(a) em nossa pousada!', 499.50, 4, b'1', NULL, 1, 2),
(5, 'Quarto com Beliche', 'Bem-vindo(a) à nossa pousada! Nosso quarto com cama de casal e beliche, perfeito para grupos de amigos ou famílias que procuram uma estadia confortável e agradável juntos. Este quarto pode acomodar até três pessoas, com uma cama de casal confortável e um beliche.\n\nA decoração é simples e acolhedora, com paredes claras e detalhes em madeira que trazem um toque de rusticidade ao ambiente. A iluminação é suave e aconchegante, criando um ambiente agradável para relaxar e desfrutar da sua estadia.\n\nO quarto também possui uma mesa de trabalho para aqueles que precisam trabalhar durante a estadia, bem como uma televisão para momentos de lazer. Além disso, há uma conexão Wi-Fi gratuita para que você possa se manter conectado durante a sua estadia.\n\nO banheiro privativo é equipado com um chuveiro com água quente, toalhas macias e produtos de higiene pessoal gratuitos para sua comodidade.\n\nNo geral, nosso quarto com cama de casal e beliche é uma excelente escolha para grupos pequenos de amigos ou famílias que desejam desfrutar de uma estadia confortável e agradável juntos. Estamos ansiosos para recebê-lo(a) em nossa pousada!', 350.20, 3, b'1', NULL, 1, 2),
(6, 'Quarto Standard', 'Bem-vindo(a) à nossa pousada! Nosso quarto com cama de casal, perfeito para casais ou viajantes individuais que procuram uma estadia confortável e agradável. Este quarto pode acomodar até duas pessoas, com uma cama de casal confortável e roupa de cama macia para garantir uma noite de sono tranquila e reparadora.\n\nA decoração é clássica e elegante, com paredes em tons claros e detalhes em madeira que trazem um toque de sofisticação ao ambiente. A iluminação é suave e aconchegante, criando um ambiente tranquilo para relaxar após um longo dia de passeios ou trabalho.\n\nO quarto também possui uma mesa de trabalho para aqueles que precisam trabalhar durante a estadia, bem como uma televisão para momentos de lazer. Além disso, há uma conexão Wi-Fi gratuita para que você possa se manter conectado durante a sua estadia.\n\nO banheiro privativo é equipado com um chuveiro com água quente, toalhas macias e produtos de higiene pessoal gratuitos para sua comodidade.\n\nNo geral, nosso quarto com cama de casal é uma excelente escolha para casais ou viajantes individuais que desejam desfrutar de uma estadia confortável e agradável em um ambiente clássico e elegante. Estamos ansiosos para recebê-lo(a) em nossa pousada!', 220.90, 2, b'1', NULL, 1, 2),
(7, 'Quarto com Vista para o Jardim', 'Bem-vindo(a) à nossa pousada! Nosso quarto com cama de casal, com um toque de verde para trazer tranquilidade e harmonia ao ambiente. Este quarto é perfeito para casais ou viajantes individuais que procuram uma estadia confortável e agradável.\n\nA decoração é clássica e elegante, com paredes em tons suaves de verde e detalhes em madeira que trazem um toque de naturalidade ao ambiente. A iluminação é suave e aconchegante, criando um ambiente tranquilo para relaxar após um longo dia de passeios ou trabalho.\n\nO quarto também possui uma mesa de trabalho para aqueles que precisam trabalhar durante a estadia, bem como uma televisão para momentos de lazer. Além disso, há uma conexão Wi-Fi gratuita para que você possa se manter conectado durante a sua estadia.\n\nO banheiro privativo é equipado com um chuveiro com água quente, toalhas macias e produtos de higiene pessoal gratuitos para sua comodidade.\n\nNo geral, nosso quarto com cama de casal e tons de verde é uma excelente escolha para casais ou viajantes individuais que desejam desfrutar de uma estadia confortável e agradável em um ambiente tranquilo e harmônico. Estamos ansiosos para recebê-lo(a) em nossa pousada!', 190.99, 2, b'1', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `ID` int(11) NOT NULL,
  `PRECO_TOTAL` float(6,2) NOT NULL,
  `PARCELAS_TOTAL` int(2) NOT NULL,
  `DATA_ENTRADA` datetime DEFAULT NULL,
  `DATA_SAIDA` datetime DEFAULT NULL,
  `pedidos_reservas_ID` int(11) NOT NULL,
  `funcionarios_ID` int(11) NOT NULL,
  `status_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `ID` int(11) NOT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `status`
--

INSERT INTO `status` (`ID`, `STATUS`) VALUES
(1, 'DISPONÍVEL'),
(2, 'INDISPONÍVEL'),
(3, 'MANUTENÇÃO'),
(4, 'PENDENTE'),
(5, 'CONFIRMADO'),
(6, 'CANCELADO'),
(7, 'EM ANDAMENTO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefones_cli`
--

CREATE TABLE `telefones_cli` (
  `ID` int(11) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `TEL` varchar(21) NOT NULL,
  `cliente_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefones_cli`
--

INSERT INTO `telefones_cli` (`ID`, `TIPO`, `TEL`, `cliente_ID`) VALUES
(2, 'Pessoal', '(+55) 11 97878-7878', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefones_func`
--

CREATE TABLE `telefones_func` (
  `ID` int(11) NOT NULL,
  `TIPO` varchar(20) NOT NULL,
  `TEL` varchar(21) NOT NULL,
  `funcionario_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos`
--

CREATE TABLE `tipos` (
  `ID` int(11) NOT NULL,
  `TIPO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipos`
--

INSERT INTO `tipos` (`ID`, `TIPO`) VALUES
(1, 'Quarto'),
(2, 'Suíte');

-- --------------------------------------------------------

--
-- Estrutura para vista `clientecartao`
--
DROP TABLE IF EXISTS `clientecartao`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clientecartao`  AS SELECT `cartoes`.`ID` AS `ID`, `clientes`.`NOME` AS `NOME`, `clientes`.`CPF` AS `CPF`, `clientes`.`RG` AS `RG`, `clientes`.`EMAIL` AS `EMAIL`, `cartoes`.`NOME_TITULAR` AS `NOME_TITULAR`, `cartoes`.`NUMERO` AS `NUMERO`, `cartoes`.`VALIDADE` AS `VALIDADE`, `cartoes`.`CVV` AS `CVV`, `cartoes`.`TIPO` AS `TIPO`, `cartoes`.`clientes_ID` AS `clientes_ID` FROM (`clientes` join `cartoes` on(`clientes`.`ID` = `cartoes`.`clientes_ID`))  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `clientepedidoreservas`
--
DROP TABLE IF EXISTS `clientepedidoreservas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clientepedidoreservas`  AS SELECT `clientes`.`ID` AS `CLIENTE_ID`, `clientes`.`NOME` AS `CLIENTE_NOME`, `clientes`.`CPF` AS `CLIENTE_CPF`, `clientes`.`RG` AS `RG`, `clientes`.`EMAIL` AS `CLIENTE_EMAIL`, `pedidos_reservas`.`ID` AS `ID_PEDIDO`, `pedidos_reservas`.`DATA_RESERVA` AS `DATA_RESERVA`, `pedidos_reservas`.`DATA_ENTRADA` AS `PEDIDO_DATA_ENTRADA`, `pedidos_reservas`.`DATA_SAIDA` AS `PEDIDO_DATA_SAIDA`, `pedidos_reservas`.`NOME` AS `PEDIDO_NOME`, `pedidos_reservas`.`CPF` AS `PEDIDO_CPF`, `pedidos_reservas`.`EMAIL` AS `PEDIDO_EMAIL`, `pedidos_reservas`.`ACOMPANHANTES` AS `ACOMPANHANTES`, `pedidos_reservas`.`quartos_ID` AS `PEDIDO_PEDIDO_QUARTOS_ID`, `pedidos_reservas`.`status_ID` AS `PEDIDO_PEDIDO_STATUS_ID`, `quartos`.`ID` AS `QUARTO_ID`, `quartos`.`QUARTO` AS `QUARTO`, `quartos`.`DESCRICAO` AS `DESCRICAO`, `quartos`.`PRECO_DIARIA` AS `PRECO_DIARIA`, `quartos`.`QTDE_PESSOAS` AS `QTDE_PESSOAS`, `quartos`.`DESTAQUE` AS `DESTAQUE`, `quartos`.`status_ID` AS `QUARTO_STATUS_ID`, `quartos`.`tipos_ID` AS `QUARTO_TIPOS_ID`, `tipos`.`ID` AS `TIPO_ID`, `tipos`.`TIPO` AS `TIPO`, `status`.`ID` AS `STATUS_ID`, `status`.`STATUS` AS `STATUS` FROM ((((`clientes` join `pedidos_reservas` on(`clientes`.`CPF` = `pedidos_reservas`.`CPF`)) join `quartos` on(`pedidos_reservas`.`quartos_ID` = `quartos`.`ID`)) join `tipos` on(`quartos`.`tipos_ID` = `tipos`.`ID`)) join `status` on(`pedidos_reservas`.`status_ID` = `status`.`ID`))  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `clientepedidoreservasgeral`
--
DROP TABLE IF EXISTS `clientepedidoreservasgeral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `clientepedidoreservasgeral`  AS SELECT `clientes`.`ID` AS `CLIENTE_ID`, `clientes`.`NOME` AS `CLIENTE_NOME`, `clientes`.`CPF` AS `CLIENTE_CPF`, `clientes`.`RG` AS `RG`, `clientes`.`EMAIL` AS `CLIENTE_EMAIL`, `pedidos_reservas`.`ID` AS `ID_PEDIDO`, `pedidos_reservas`.`DATA_RESERVA` AS `DATA_RESERVA`, `pedidos_reservas`.`DATA_ENTRADA` AS `PEDIDO_DATA_ENTRADA`, `pedidos_reservas`.`DATA_SAIDA` AS `PEDIDO_DATA_SAIDA`, `pedidos_reservas`.`NOME` AS `PEDIDO_NOME`, `pedidos_reservas`.`CPF` AS `PEDIDO_CPF`, `pedidos_reservas`.`EMAIL` AS `PEDIDO_EMAIL`, `pedidos_reservas`.`ACOMPANHANTES` AS `ACOMPANHANTES`, `pedidos_reservas`.`quartos_ID` AS `PEDIDO_PEDIDO_QUARTOS_ID`, `pedidos_reservas`.`status_ID` AS `PEDIDO_PEDIDO_STATUS_ID`, `quartos`.`ID` AS `QUARTO_ID`, `quartos`.`QUARTO` AS `QUARTO`, `quartos`.`DESCRICAO` AS `DESCRICAO`, `quartos`.`PRECO_DIARIA` AS `PRECO_DIARIA`, `quartos`.`QTDE_PESSOAS` AS `QTDE_PESSOAS`, `quartos`.`DESTAQUE` AS `DESTAQUE`, `quartos`.`status_ID` AS `QUARTO_STATUS_ID`, `quartos`.`tipos_ID` AS `QUARTO_TIPOS_ID`, `tipos`.`ID` AS `TIPO_ID`, `tipos`.`TIPO` AS `TIPO`, `reservas`.`ID` AS `RESERVA_ID`, `reservas`.`PRECO_TOTAL` AS `PRECO_TOTAL`, `reservas`.`PARCELAS_TOTAL` AS `PARCELAS_TOTAL`, `reservas`.`DATA_ENTRADA` AS `RESERVA_DATA_ENTRADA`, `reservas`.`DATA_SAIDA` AS `RESERVA_DATA_SAIDA`, `reservas`.`pedidos_reservas_ID` AS `RESERVA_PEDIDOS_RESERVAS_ID`, `reservas`.`funcionarios_ID` AS `RESERVA_FUNCIONARIOS_ID`, `reservas`.`status_ID` AS `RESERVA_STATUS_ID`, `status`.`ID` AS `STATUS_ID`, `status`.`STATUS` AS `STATUS` FROM (((((`clientes` join `pedidos_reservas` on(`clientes`.`CPF` = `pedidos_reservas`.`CPF`)) join `quartos` on(`pedidos_reservas`.`quartos_ID` = `quartos`.`ID`)) join `tipos` on(`quartos`.`tipos_ID` = `tipos`.`ID`)) join `reservas` on(`pedidos_reservas`.`ID` = `reservas`.`pedidos_reservas_ID`)) join `status` on(`pedidos_reservas`.`status_ID` = `status`.`ID`))  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `dataquartoindisponivel`
--
DROP TABLE IF EXISTS `dataquartoindisponivel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dataquartoindisponivel`  AS SELECT `pedidos_reservas`.`ID` AS `ID_PEDIDO`, `pedidos_reservas`.`DATA_RESERVA` AS `DATA_RESERVA`, `pedidos_reservas`.`DATA_ENTRADA` AS `DATA_ENTRADA`, `pedidos_reservas`.`DATA_SAIDA` AS `DATA_SAIDA`, `pedidos_reservas`.`NOME` AS `NOME`, `pedidos_reservas`.`CPF` AS `CPF`, `pedidos_reservas`.`EMAIL` AS `EMAIL`, `pedidos_reservas`.`ACOMPANHANTES` AS `ACOMPANHANTES`, `pedidos_reservas`.`quartos_ID` AS `pedido_quartos_ID`, `pedidos_reservas`.`status_ID` AS `pedido_status_ID`, `status`.`ID` AS `ID_STATUS`, `status`.`STATUS` AS `STATUS`, `quartos`.`ID` AS `ID_QUARTOS`, `quartos`.`QUARTO` AS `QUARTO`, `quartos`.`DESCRICAO` AS `DESCRICAO`, `quartos`.`PRECO_DIARIA` AS `PRECO_DIARIA`, `quartos`.`QTDE_PESSOAS` AS `QTDE_PESSOAS`, `quartos`.`DESTAQUE` AS `DESTAQUE`, `quartos`.`ARQUIVAR_EM` AS `ARQUIVAR_EM`, `quartos`.`status_ID` AS `quarto_status_ID`, `quartos`.`tipos_ID` AS `tipos_ID` FROM ((`pedidos_reservas` join `status` on(`pedidos_reservas`.`status_ID` = `status`.`ID`)) join `quartos` on(`pedidos_reservas`.`quartos_ID` = `quartos`.`ID`))  ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acoes`
--
ALTER TABLE `acoes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_acoes_cargos1_idx` (`cargos_ID`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NOME_UNIQUE` (`NOME`);

--
-- Índices para tabela `cartoes`
--
ALTER TABLE `cartoes`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CVV_UNIQUE` (`CVV`),
  ADD KEY `fk_cartoes_clientes1_idx` (`clientes_ID`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`),
  ADD UNIQUE KEY `CPF_UNIQUE` (`CPF`),
  ADD UNIQUE KEY `RG_UNIQUE` (`RG`);

--
-- Índices para tabela `enderecos_cli`
--
ALTER TABLE `enderecos_cli`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_endereco_cli_cliente1_idx` (`cliente_ID`);

--
-- Índices para tabela `enderecos_func`
--
ALTER TABLE `enderecos_func`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_endereco_func_funcionario1_idx` (`funcionario_ID`);

--
-- Índices para tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CPF_UNIQUE` (`CPF`),
  ADD UNIQUE KEY `RG_UNIQUE` (`RG`),
  ADD UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`),
  ADD KEY `fk_funcionarios_cargos1_idx` (`cargos_ID`);

--
-- Índices para tabela `historicos`
--
ALTER TABLE `historicos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_historicos_funcionarios1_idx` (`funcionarios_ID`);

--
-- Índices para tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_imagens_quartos_idx` (`quartos_ID`);

--
-- Índices para tabela `negativas`
--
ALTER TABLE `negativas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_motivo_negativa_pedidos_reservas1_idx` (`pedidos_reservas_ID`),
  ADD KEY `fk_motivo_negativa_funcionarios1_idx` (`funcionarios_ID`);

--
-- Índices para tabela `novidades`
--
ALTER TABLE `novidades`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`);

--
-- Índices para tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pagamentos_formas_pagamento1_idx` (`formas_pagamento_ID`),
  ADD KEY `fk_pagamentos_reservas1_idx` (`reservas_ID`);

--
-- Índices para tabela `pedidos_reservas`
--
ALTER TABLE `pedidos_reservas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pedidos_reservas_quartos1_idx` (`quartos_ID`),
  ADD KEY `fk_pedidos_reservas_status1_idx` (`status_ID`);

--
-- Índices para tabela `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_permissoes_acoes1_idx` (`acoes_ID`);

--
-- Índices para tabela `quartos`
--
ALTER TABLE `quartos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_quartos_status1_idx` (`status_ID`),
  ADD KEY `fk_quartos_tipos1_idx` (`tipos_ID`);

--
-- Índices para tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_reservas_pedidos_reservas1_idx` (`pedidos_reservas_ID`),
  ADD KEY `fk_reservas_funcionarios1_idx` (`funcionarios_ID`),
  ADD KEY `fk_reservas_status1_idx` (`status_ID`);

--
-- Índices para tabela `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `telefones_cli`
--
ALTER TABLE `telefones_cli`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_telefone_cli_cliente1_idx` (`cliente_ID`);

--
-- Índices para tabela `telefones_func`
--
ALTER TABLE `telefones_func`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_telefone_func_funcionario1_idx` (`funcionario_ID`);

--
-- Índices para tabela `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acoes`
--
ALTER TABLE `acoes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cartoes`
--
ALTER TABLE `cartoes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `enderecos_cli`
--
ALTER TABLE `enderecos_cli`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `enderecos_func`
--
ALTER TABLE `enderecos_func`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historicos`
--
ALTER TABLE `historicos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `negativas`
--
ALTER TABLE `negativas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `novidades`
--
ALTER TABLE `novidades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedidos_reservas`
--
ALTER TABLE `pedidos_reservas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quartos`
--
ALTER TABLE `quartos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `reservas`
--
ALTER TABLE `reservas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `status`
--
ALTER TABLE `status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `telefones_cli`
--
ALTER TABLE `telefones_cli`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `telefones_func`
--
ALTER TABLE `telefones_func`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipos`
--
ALTER TABLE `tipos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `acoes`
--
ALTER TABLE `acoes`
  ADD CONSTRAINT `fk_acoes_cargos1` FOREIGN KEY (`cargos_ID`) REFERENCES `cargos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cartoes`
--
ALTER TABLE `cartoes`
  ADD CONSTRAINT `fk_cartoes_clientes1` FOREIGN KEY (`clientes_ID`) REFERENCES `clientes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `enderecos_cli`
--
ALTER TABLE `enderecos_cli`
  ADD CONSTRAINT `fk_endereco_cli_cliente1` FOREIGN KEY (`cliente_ID`) REFERENCES `clientes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `enderecos_func`
--
ALTER TABLE `enderecos_func`
  ADD CONSTRAINT `fk_endereco_func_funcionario1` FOREIGN KEY (`funcionario_ID`) REFERENCES `funcionarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `fk_funcionarios_cargos1` FOREIGN KEY (`cargos_ID`) REFERENCES `cargos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `historicos`
--
ALTER TABLE `historicos`
  ADD CONSTRAINT `fk_historicos_funcionarios1` FOREIGN KEY (`funcionarios_ID`) REFERENCES `funcionarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `imagens`
--
ALTER TABLE `imagens`
  ADD CONSTRAINT `fk_imagens_quartos` FOREIGN KEY (`quartos_ID`) REFERENCES `quartos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `negativas`
--
ALTER TABLE `negativas`
  ADD CONSTRAINT `fk_motivo_negativa_funcionarios1` FOREIGN KEY (`funcionarios_ID`) REFERENCES `funcionarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_motivo_negativa_pedidos_reservas1` FOREIGN KEY (`pedidos_reservas_ID`) REFERENCES `pedidos_reservas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD CONSTRAINT `fk_pagamentos_formas_pagamento1` FOREIGN KEY (`formas_pagamento_ID`) REFERENCES `formas_pagamentos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pagamentos_reservas1` FOREIGN KEY (`reservas_ID`) REFERENCES `reservas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedidos_reservas`
--
ALTER TABLE `pedidos_reservas`
  ADD CONSTRAINT `fk_pedidos_reservas_quartos1` FOREIGN KEY (`quartos_ID`) REFERENCES `quartos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedidos_reservas_status1` FOREIGN KEY (`status_ID`) REFERENCES `status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `permissoes`
--
ALTER TABLE `permissoes`
  ADD CONSTRAINT `fk_permissoes_acoes1` FOREIGN KEY (`acoes_ID`) REFERENCES `acoes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `quartos`
--
ALTER TABLE `quartos`
  ADD CONSTRAINT `fk_quartos_status1` FOREIGN KEY (`status_ID`) REFERENCES `status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_quartos_tipos1` FOREIGN KEY (`tipos_ID`) REFERENCES `tipos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fk_reservas_funcionarios1` FOREIGN KEY (`funcionarios_ID`) REFERENCES `funcionarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_reservas_pedidos_reservas1` FOREIGN KEY (`pedidos_reservas_ID`) REFERENCES `pedidos_reservas` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_reservas_status1` FOREIGN KEY (`status_ID`) REFERENCES `status` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `telefones_cli`
--
ALTER TABLE `telefones_cli`
  ADD CONSTRAINT `fk_telefone_cli_cliente1` FOREIGN KEY (`cliente_ID`) REFERENCES `clientes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `telefones_func`
--
ALTER TABLE `telefones_func`
  ADD CONSTRAINT `fk_telefone_func_funcionario1` FOREIGN KEY (`funcionario_ID`) REFERENCES `funcionarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
