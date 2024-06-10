SELECT imie, nazwisko, zarobki, stanowisko 
FROM pracownicy p
WHERE EXISTS
(
	SELECT 1
	FROM pracownicy p2
	WHERE p2.stanowisko = p.stanowisko
	GROUP BY p2.stanowisko
	HAVING p.zarobki < avg(p2.zarobki)
)
