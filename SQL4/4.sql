SELECT imie, nazwisko
FROM pracownicy
INNER JOIN dzialy
ON dzialy.id_dzialu=pracownicy.id_dzialu
	
WHERE pracownicy.id_dzialu = (SELECT id_dzialu 
FROM pracownicy
WHERE nazwisko = 'BRACKI')
AND zarobki < (SELECT AVG(zarobki) FROM pracownicy)

