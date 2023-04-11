CREATE TABLE `klientet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emri` varchar(20) NOT NULL,
  `mbiemri` varchar(20) NOT NULL,
  `nr_tel` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `piket` int DEFAULT NULL,
  `udf2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO klientet (emri,mbiemri,nr_tel,email,piket)
VALUES('Kleardo','Dura','+355693449380','gmail.com',0);
INSERT INTO klientet (emri,mbiemri,nr_tel,email,piket)
VALUES('Aldin','Xhaxhamani','+355683838837','gmail.com',0);
INSERT INTO klientet (emri,mbiemri,nr_tel,email,piket)
VALUES('Erjon','Zyka','+355677171520','gmail.com',0);