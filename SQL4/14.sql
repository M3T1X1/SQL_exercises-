SELECT nazwa_dzialu, miejsce, id_dzialu
FROM dzialy
WHERE 4 <=
(
	SELECT COUNT(1)
	FROM pracownicy
	WHERE pracownicy.id_dzialu=dzialy.id_dzialu
) 