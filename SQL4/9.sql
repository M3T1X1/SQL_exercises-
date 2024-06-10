SELECT nazwa_dzialu
FROM dzialy
WHERE EXISTS
(
	SELECT 1
	FROM pracownicy
	WHERE prowizja IS NOT NULL
)