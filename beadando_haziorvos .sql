CREATE DATABASE HaziOrvos;
USE HaziOrvos;

-- beteg tábla
CREATE TABLE Paciensek (
    paciens_id INT PRIMARY KEY,
    nev NVARCHAR(100),
    szuletesi_datum DATE,
    cim NVARCHAR(255),
    telefon NVARCHAR(20)
);

--orvos tábla
CREATE TABLE Orvosok (
    orvos_id INT PRIMARY KEY,
    nev NVARCHAR(100),
    szakterulet NVARCHAR(100)
);

--időpont tábla
CREATE TABLE Idopontok (
    idopont_id INT PRIMARY KEY,
    orvos_id INT,
    paciens_id INT,
    idopont_datum DATE,
    ora TIME,
    indok NVARCHAR(255),
    FOREIGN KEY (paciens_id) REFERENCES Paciensek(paciens_id),
    FOREIGN KEY (orvos_id) REFERENCES Orvosok(orvos_id)
);

--recept tábla
CREATE TABLE Receptek (
    recept_id INT PRIMARY KEY,
    orvos_id INT,
    paciens_id INT,
    recept_datum DATE,
    gyogyszer NVARCHAR(100),
    dozis NVARCHAR(50),
    FOREIGN KEY (paciens_id) REFERENCES Paciensek(paciens_id),
    FOREIGN KEY (orvos_id) REFERENCES Orvosok(orvos_id)
);

--diagnózis tábla
CREATE TABLE Diagnozisok (
    diagnozis_id INT PRIMARY KEY,
    orvos_id INT,
    paciens_id INT,
    diagnozis_datum DATE,
    reszletek NVARCHAR(255),
    FOREIGN KEY (paciens_id) REFERENCES Paciensek(paciens_id),
    FOREIGN KEY (orvos_id) REFERENCES Orvosok(orvos_id)
);

--adatok
INSERT INTO Paciensek (paciens_id, nev, szuletesi_datum, cim, telefon)
VALUES 
(1, 'Kis Anna', '1990-12-03', 'Szeged, Dugonics tér 8.', '+36 70 555 1234'),
(2, 'Tóth Gábor', '1972-08-25', 'Pécs, Alkotmány utca 15.', '+36 20 333 9876'),
(3, 'Szabó Éva', '1983-04-17', 'Székesfehérvár, Fő utca 21.', '+36 30 444 5678'),
(4, 'Molnár Péter', '1975-06-10', 'Győr, Szent István tér 12.', '+36 70 777 2345'),
(5, 'Varga Katalin', '1995-10-08', 'Debrecen, Kossuth utca 3.', '+36 20 888 3456'),
(6, 'Nagy Tamás', '1980-02-28', 'Budapest, Rákóczi út 5.', '+36 30 999 6789'),
(7, 'Farkas Dániel', '1991-07-14', 'Eger, Kossuth tér 6.', '+36 20 111 4321'),
(8, 'Kovácsné Szilvia', '1987-05-19', 'Miskolc, Erzsébet tér 9.', '+36 70 222 7654'),
(9, 'Balogh István', '1979-09-30', 'Szombathely, Bajcsy-Zs. utca 4.', '+36 30 333 9876'),
(10, 'Takács János', '1988-03-12', 'Veszprém, Szabadság tér 11.', '+36 20 444 2345'),
(11, 'Pintér Zsolt', '1974-11-07', 'Nyíregyháza, Bajcsy-Zs. utca 22.', '+36 70 555 8765'),
(12, 'Kocsis Eszter', '1982-01-25', 'Székesfehérvár, Bajcsy-Zs. utca 2.', '+36 30 777 9876'),
(13, 'Simon Krisztina', '1993-06-03', 'Pécs, Fő tér 7.', '+36 20 888 3456'),
(14, 'Németh András', '1986-08-18', 'Győr, Baross út 4.', '+36 70 999 6789'),
(15, 'Török László', '1977-04-20', 'Debrecen, Kossuth tér 12.', '+36 30 111 4321'),
(16, 'Gáspár Ágnes', '1989-10-15', 'Budapest, Andrássy út 3.', '+36 70 222 7654'),
(17, 'Váradi Márton', '1976-12-05', 'Szolnok, Kossuth tér 8.', '+36 20 333 8765'),
(18, 'Boros Judit', '1990-02-14', 'Szeged, Római körút 6.', '+36 70 444 9876'),
(19, 'Király Dóra', '1984-07-28', 'Pécs, Kossuth tér 1.', '+36 30 555 2345'),
(20, 'Fehér Béla', '1971-03-18', 'Budapest, József körút 13.', '+36 20 777 8765');

INSERT INTO Orvosok (orvos_id, nev, szakterulet)
VALUES 
(1, 'Dr. Nagy Emese', 'Belgyógyász'),
(2, 'Dr. Kiss Gergő', 'Belgyógyász'),
(3, 'Dr. Varga István', 'Belgyógyász'),
(4, 'Dr. Kovács Mónika', 'Belgyógyász'),
(5, 'Dr. Tóth Péter', 'Belgyógyász');

INSERT INTO Idopontok (idopont_id, orvos_id, paciens_id, idopont_datum, ora, indok)
VALUES 
(1, 1, 1, '2024-05-13', '10:00', 'Fejfájás'),
(2, 1, 2, '2024-05-13', '11:30', 'Hasfájás'),
(3, 1, 3, '2024-05-13', '14:00', 'Köhögés'),
(4, 1, 4, '2024-05-13', '15:00', 'Láz'),
(5, 2, 5, '2024-05-14', '13:45', 'Fejfájás'),
(6, 2, 6, '2024-05-14', '10:30', 'Hasfájás'),
(7, 2, 7, '2024-05-14', '12:15', 'Köhögés'),
(8, 2, 8, '2024-05-14', '15:30', 'Láz'),
(9, 2, 9, '2024-05-15', '09:00', 'Fejfájás'),
(10, 3, 10, '2024-05-15', '14:45', 'Hasfájás'),
(11, 3, 11, '2024-05-15', '11:00', 'Köhögés'),
(12, 3, 12, '2024-05-15', '13:30', 'Láz'),
(13, 4, 13, '2024-05-16', '16:00', 'Fejfájás'),
(14, 4, 14, '2024-05-16', '08:45', 'Hasfájás'),
(15, 4, 15, '2024-05-16', '12:15', 'Köhögés'),
(16, 4, 16, '2024-05-16', '09:30', 'Láz'),
(17, 4, 17, '2024-05-16', '11:45', 'Fejfájás'),
(18, 4, 18, '2024-05-16', '14:30', 'Hasfájás'),
(19, 5, 19, '2024-05-17', '10:00', 'Köhögés'),
(20, 5, 20, '2024-05-17', '15:15', 'Láz');

INSERT INTO Receptek (recept_id, orvos_id, paciens_id, recept_datum, gyogyszer, dozis)
VALUES 
(1, 1, 1, '2024-05-13', 'Paracetamol', '500 mg'),    
(2, 1, 2, '2024-05-13', 'Normaflore', '10x5 ml'),            
(3, 1, 3, '2024-05-13', 'Strepsils', NULL),             
(4, 1, 4, '2024-05-13', 'Ibuprofen', '400 mg'),       
(5, 2, 5, '2024-05-14', 'Paracetamol', '500 mg'),     
(6, 2, 6, '2024-05-14', 'Normaflore', '10x5 ml'),            
(7, 2, 7, '2024-05-14', 'Strepsils', NULL),             
(8, 2, 8, '2024-05-14', 'Ibuprofen', '400 mg'),       
(9, 2, 9, '2024-05-14', 'Paracetamol', '500 mg'),     
(10, 3, 10, '2024-05-15', 'Normaflore', '10x5 ml'),          
(11, 3, 11, '2024-05-15', 'Strepsils', NULL),           
(12, 3, 12, '2024-05-15', 'Ibuprofen', '400 mg'),     
(13, 4, 13, '2024-05-16', 'Paracetamol', '500 mg'),   
(14, 4, 14, '2024-05-16', 'Normaflore', '10x5 ml'),          
(15, 4, 15, '2024-05-16', 'Strepsils', NULL),           
(16, 4, 16, '2024-05-16', 'Ibuprofen', '400 mg'),     
(17, 4, 17, '2024-05-16', 'Paracetamol', '500 mg'),   
(18, 4, 18, '2024-05-16', 'Normaflore', '10x5 ml'),          
(19, 5, 19, '2024-05-17', 'Strepsils', NULL),           
(20, 5, 20, '2024-05-17', 'Ibuprofen', '400 mg');

INSERT INTO Diagnozisok (diagnozis_id, orvos_id, paciens_id, diagnozis_datum, reszletek)
VALUES 
(1, 1, 1, '2024-05-13', 'Migrén'),
(2, 1, 2, '2024-05-13', 'Gyomorrontás'),
(3, 1, 3, '2024-05-13', 'Megfázás'),
(4, 1, 4, '2024-05-13', 'Influenza'),
(5, 2, 5, '2024-05-14', 'Migrén'),
(6, 2, 6, '2024-05-14', 'Gyomorrontás'),
(7, 2, 7, '2024-05-14', 'Megfázás'),
(8, 2, 8, '2024-05-14', 'Influenza'),
(9, 2, 9, '2024-05-14', 'Migrén'),
(10, 3, 10, '2024-05-15', 'Gyomorrontás'),
(11, 3, 11, '2024-05-15', 'Megfázás'),
(12, 3, 12, '2024-05-15', 'Influenza'),
(13, 4, 13, '2024-05-16', 'Migrén'),
(14, 4, 14, '2024-05-16', 'Gyomorrontás'),
(15, 4, 15, '2024-05-16',  'Megfázás'),
(16, 4, 16, '2024-05-16', 'Influenza'),
(17, 4, 17, '2024-05-16', 'Migrén'),
(18, 4, 18, '2024-05-16', 'Gyomorrontás'),
(19, 5, 19, '2024-05-17',  'Megfázás'),
(20, 5, 20, '2024-05-17', 'Influenza');

--LEKÉRDEZÉSEK

--Páciensek neve és címe akiknél migrént diagnosztizáltak
SELECT p.nev, p.cim
FROM Paciensek p
JOIN Diagnozisok d ON p.paciens_id = d.paciens_id
WHERE d.reszletek = 'Migrén';

--Melyik orvos írta fel a legtöbb receptet (csökkenő sorrend)
SELECT o.nev, COUNT(r.recept_id) AS recept_szam
FROM Orvosok o
JOIN Receptek r ON o.orvos_id = r.orvos_id
GROUP BY o.nev
ORDER BY recept_szam DESC

--Melyik gyógyszerből mekkora a dózis és mennyit írtak fel
SELECT gyogyszer, dozis, COUNT(recept_id) AS recept_szam
FROM Receptek
GROUP BY gyogyszer, dozis;

--Azon orvosok neve és az általuk felírt gyógyszerek amelyeknek a dózisa nem null érték tehát mennyiségi (pl. ml, mg)
SELECT o.nev AS orvos_neve, r.gyogyszer, r.dozis
FROM Receptek r
JOIN Orvosok o ON r.orvos_id = o.orvos_id
WHERE r.dozis IS NOT NULL;

--A megfázottak átlag életkora
SELECT AVG(YEAR(GETDATE()) - YEAR(p.szuletesi_datum)) AS atlag_eletkor
FROM Paciensek p
JOIN Diagnozisok d ON p.paciens_id = d.paciens_id
WHERE d.reszletek = 'Megfázás';

--Név, szakterület és pácienseinek száma
SELECT o.nev, o.szakterulet, COUNT(DISTINCT id.paciens_id) AS paciens_szam
FROM Orvosok o
LEFT JOIN Idopontok id ON o.orvos_id = id.orvos_id
GROUP BY o.nev, o.szakterulet;