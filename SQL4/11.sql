SELECT imie, nazwisko, stanowisko, zarobki
FROM pracownicy p
INNER JOIN dzialy
ON p.id_dzialu = dzialy.id_dzialu
WHERE p.id_dzialu = 20
AND	
NOT EXISTS
(
	SELECT 1
	FROM pracownicy p2
	WHERE p2.id_dzialu = 10
	AND p2.stanowisko = p.stanowisko
)
