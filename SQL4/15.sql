SELECT imie, nazwisko, id_dzialu
FROM pracownicy p
WHERE p.stanowisko = 'KIEROWNIK'
AND 
NOT EXISTS
(
	SELECT 1
	FROM pracownicy p2
	WHERE p.kierownik = p2.kierownik
	AND p2.stanowisko = 'ANALITYK'
) 