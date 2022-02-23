-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.28-0ubuntu0.20.04.3 - (Ubuntu)
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para tabela node_recipes.recipes
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `recipe` text COLLATE utf8mb4_general_ci NOT NULL,
  `ingredients` text COLLATE utf8mb4_general_ci NOT NULL,
  `preparation_method` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela node_recipes.recipes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` (`id`, `title`, `recipe`, `ingredients`, `preparation_method`) VALUES
	(1, 'Bacalhau com natas', 'Confira essa deliciosa receita de bacalhau com natas, feita pela Ana Karina, ex-participante do MasterChef Brasil 2021. Aprenda a fazer em casa em apenas 1 hora e 20 minutos!', '["1 kg(s) de lombos de bacalhau dessalgados","500 ml(s) de creme de leite fresco","100 grama(s) de queijo parmesão ralado na hora","sal a gosto","pimenta-do-reino a gosto","1 folha(s) de louro","ramo(s) de tomilho fresco a gosto","500 ml(s) de leite"]', 'Ferva o leite com a folha de louro. Desligue o fogo e adicione os lombos de bacalhau. Aguarde alguns minutos até amolecer a pele do bacalhau. Retire os lombos do leite, remova a pele e as espinhas e seque o bacalhau com papel toalha. Em um refratário, adicione os lombos de bacalhau, tempere com sal e pimenta-do-reino, cubra com o creme de leite fresco e o queijo parmesão, e coloque os ramos de tomilho por cima. Leve ao forno a 250ºC por cerca de 1 hora ou até que o queijo esteja bem dourado. Sirva com arroz de amêndoas e salada de folhas, palmito e tomate cereja.'),
	(2, 'Enroladinho de hot dog', 'Confira essa deliciosa receita de enroladinho de hot dog, feita pelo chef Edu Guedes, no programa The Chef. Aprenda a fazer em casa em apenas 1 hora! ', '["1 xícara(s) de chá de leite morno","1 pacote(s) de fermento biológico seco","1 colher(es) de sopa de açúcar","1 colher(es) de café de sal","1 unidade(s) de ovo","1/4 xícara(s) de chá de óleo","4 xícara(s) de chá de farinha de trigo"]', 'Em uma tigela, misture o leite com o fermento, o açúcar, o sal, o ovo e o óleo. Acrescente a farinha aos poucos, até desgrudar das mãos. Cubra a massa com um pano limpo e deixe crescer por 30 minutos. Abra a massa com um rolo e corte com um cortador redondo de tamanho aproximado ao da salsicha. Envolva as salsichas com essa massa, caso prefira substitua a salsicha por presunto e queijo, coloque numa assadeira e deixe crescer por mais 10 minutos. Pincele um ovo por cima da massa e leve para assar em forno preaquecido a 190ºC por 25 minutos.'),
	(3, 'Croquete de carne moída', 'Confira essa deliciosa receita de croquete de carne moída, feita pelo chef Edu Guedes, no programa The Chef. Aprenda a fazer em casa em apenas 45 minutos!', '["3 colher(es) de sopa de azeite de oliva","1 xícara(s) de chá de cebola picada","2 dente(s) de alho picados","1/2 kg(s) de carne moída","sal a gosto","pimenta-do-reino a gosto","1 xícara(s) de chá de molho de tomate","1/2 xícara(s) de chá de azeitona preta picada","2 colher(es) de sopa de molho inglês","1 colher(es) de chá de molho de pimenta","2 colher(es) de sopa de salsinha picada","1 xícara(s) de chá de farinha de trigo","3 xícara(s) de chá de farinha de rosca","óleo para fritar a gosto"]', 'Em uma panela quente com azeite, refogue a cebola e o alho. Junte a carne moída, tempere com sal e pimenta e mexa até estar totalmente cozida. Junte o molho de tomate, a azeitona, o molho inglês, o molho de pimenta e a salsinha. Deixe apurar por 5 minutos. Então, coloque a farinha de trigo aos poucos, mexendo sempre, até ficar com a consistência boa para enrolar. Deixe esfriar. Modele no formato desejado, passe na farinha de rosca e frite por imersão em óleo quente. Sirva.'),
	(4, 'Parmegiana', 'Confira essa deliciosa receita de parmegiana, feita pelo chef Edu Guedes, no programa The Chef. Aprenda a fazer em casa em apenas 30 minutos!', '["4 unidade(s) de Bifes Empanados Swift","1 litro(s) de óleo quente","3 colher(es) de sopa de azeite","1 xícara(s) de chá de cebola picada","4 dente(s) de Alho Picado Swift","1 1/2 xícara(s) de chá de molho de tomate","sal a gosto","2 colher(es) de sopa de Orégano Swift","1 1/2 xícara(s) de chá de muçarela ralada","2 xícara(s) de chá de Batata Rústica Swift frita"]', 'Frite os Bifes Empanados Swift em óleo quente até ficarem dourados. Reserve. Em uma panela quente com azeite, refogue a cebola e o Alho Picado Swift. Junte o molho de tomate e tempere com sal e Orégano Swift. Cubra os bifes com o molho e o queijo e leve ao forno preaquecido a 200ºC por 10 minutos ou até o queijo gratinar. Sirva acompanhado das Batatas Rústicas Swift.');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
