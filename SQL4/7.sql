SELECT sum(zarobki)
FROM pracownicy 
INNER JOIN dzialy
ON pracownicy.id_dzialu = dzialy.id_dzialu
WHERE miejsce = (SELECT miejsce FROM dzialy WHERE miejsce = 'KRAKOW' )