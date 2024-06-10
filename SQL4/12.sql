SELECT nazwa_dzialu
FROM dzialy
WHERE NOT EXISTS
(
	SELECT 1 
	FROM pracownicy
	WHERE pracownicy.id_dzialu = dzialy.id_dzialu
)