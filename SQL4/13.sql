SELECT id_dzialu, nazwisko, stanowisko, zarobki,imie
FROM pracownicy p
WHERE p.zarobki =
(
	SELECT MAX(p2.zarobki)
	FROM pracownicy p2
	WHERE p.id_dzialu = p2.id_dzialu
)
ORDER BY zarobki DESC


