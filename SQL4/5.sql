SELECT imie, nazwisko 
FROM pracownicy 
WHERE zarobki > (SELECT zarobki FROM pracownicy WHERE nazwisko = 'KOWALSKI')