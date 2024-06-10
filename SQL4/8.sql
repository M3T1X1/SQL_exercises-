
SELECT imie, nazwisko, zarobki, stanowisko 
FROM pracownicy p
WHERE EXISTS
(
	SELECT 1
	FROM pracownicy p2
	WHERE p.stanowisko = p2.stanowisko
	GROUP BY p.stanowisko
	HAVING p.zarobki < avg(p2.zarobki)
)
