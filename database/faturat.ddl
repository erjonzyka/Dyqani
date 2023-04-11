CREATE TABLE `faturat` (
  `id_fature` int NOT NULL AUTO_INCREMENT,
  `emri` varchar(50) NOT NULL,
  `mbiemri` varchar(50) NOT NULL,
  `id_klienti` int NOT NULL,
  `emri_prod` varchar(50) NOT NULL,
  `id_prod` int NOT NULL,
  `totali` int DEFAULT NULL,
  `piket` int DEFAULT NULL,
  `dita` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id_fature`),
  KEY `id_klienti` (`id_klienti`),
  KEY `id_prod` (`id_prod`),
  CONSTRAINT `faturat_ibfk_1` FOREIGN KEY (`id_klienti`) REFERENCES `klientet` (`id`),
  CONSTRAINT `faturat_ibfk_2` FOREIGN KEY (`id_prod`) REFERENCES `produkte` (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci