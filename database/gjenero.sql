CREATE DEFINER=`root`@`localhost` FUNCTION `gjenero`(p_idprod int,p_id_klient int) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
declare l_emri varchar(50);
declare l_mbiemri varchar(50);
declare l_piket int;

declare l_emri_prod varchar(50);
declare l_cmimi int;
declare l_piket_fatura int; 

declare counter_klient int;
declare counter_prod int;

SELECT COUNT(id_prod)
FROM produkte
where id_prod=p_idprod 
INTO counter_prod;

SELECT COUNT(id)
FROM klientet 
where id=p_id_klient 
INTO counter_klient;

if(counter_prod=0 or counter_klient=0) 
then return false;
end if;

SELECT emri_prod INTO l_emri_prod from produkte where p_idprod = id_prod;
SELECT cmimi INTO l_cmimi from produkte where p_idprod = id_prod;


SELECT emri INTO l_emri from klientet where p_id_klient = id;
SELECT mbiemri INTO l_mbiemri from klientet where p_id_klient = id;
SELECT piket INTO l_piket from klientet where p_id_klient = id;

SET l_piket_fatura = l_cmimi/10;
SET l_piket = l_piket+l_piket_fatura;

UPDATE klientet
SET piket = l_piket
WHERE
p_id_klient=id;

INSERT INTO faturat(emri,mbiemri,id_klienti,piket,id_prod,emri_prod,totali,dita)
VALUES(l_emri,l_mbiemri,p_id_klient,l_piket,p_idprod,l_emri_prod,l_cmimi,curdate());

RETURN true;
END