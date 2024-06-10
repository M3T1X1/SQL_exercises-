SELECT imie, nazwisko, stanowisko, zarobki
FROM pracownicy p
WHERE zarobki >
(
	SELECT sum(zarobki)
	FROM pracownicy p2
	GROUP BY stanowisko
	HAVING stanowisko = 'KIEROWNIK'
)