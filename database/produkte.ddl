CREATE TABLE `produkte` (
  `id_prod` int NOT NULL AUTO_INCREMENT,
  `emri_prod` varchar(20) NOT NULL,
  `sasia` int NOT NULL,
  `cmimi` int NOT NULL,
  `udf1` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO produkte (emri_prod,sasia,cmimi)
VALUES('Ferrota Brembo',100,8500);
INSERT INTO produkte (emri_prod,sasia,cmimi)
VALUES('Castrol 5w40',100,1300);
INSERT INTO produkte (emri_prod,sasia,cmimi)
VALUES('Freksion Sachs',10,23000);
INSERT INTO produkte (emri_prod,sasia,cmimi)
VALUES('Kandela NGK',800,850);