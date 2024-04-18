CREATE TABLE Vendeg_Maszk
(
    USERNEV varchar(100) MASKED WITH (Function = 'default()'),
    NEV varchar(100) MASKED WITH (Function = 'partial(1,"XXX",1)'),
    EMAIL varchar(100) MASKED WITH (function = 'email()'),
    SZAML_CIM varchar(255) MASKED WITH (Function = 'partial(3,"XXX",0)'),
    SZUL_DAT date MASKED WITH (Function = 'default()')
)

INSERT INTO Vendeg_Maszk (USERNEV, NEV, EMAIL, SZAML_CIM, SZUL_DAT)
VALUES
('adam1', 'Kiss Ádám', 'ádám.kiss@mail.hu', '5630 Békés Szolnoki út 8.', '1991-12-28'),
('adam3', 'Barkóci Ádám', 'adam3@gmail.com', '3910 Tokaj Dózsa György utca 37.', '1970-06-07'),
('adam4', 'Bieniek Ádám', 'ádám.bieniek@mail.hu', '8630 Balatonboglár Juhászföldi út 1.', '1976-08-01'),
('agnes', 'Lengyel Ágnes', 'agnes@gmail.com', '5200 Törökszentmiklós Deák Ferenc út 5.', '1979-12-10'),
('agnes3', 'Hartyánszky Ágnes', 'agnes3@gmail.com', '6430 Bácsalmás Posta köz 2.', '1967-04-11'),
('AGNESH', 'Horváth Ágnes', 'AGNESH@gmail.com', '8200 Veszprém Rákóczi utca 21.', '1981-12-24'),
('AGNESK', 'Kovács Ágnes', 'AGNESK@gmail.com', '1084 Budapest Endrődi Sándor utca 47.', '1988-10-02'),
('akos', 'Bíró Ákos', 'ákos.bíró@mail.hu', '9023 Győr Kossuth Lajos utca 47/b.', '1982-04-24'),
('aladar', 'Dunai Aladár', 'aladár.dunai@mail.hu', '5931 Nagyszénás Árpád utca 23.', '1980-11-01'),
('alexandra', 'Bagóczki Alexandra', 'alexandra.bagóczki@mail.hu', '2381 Táborfalva Petőfi utca 1/2.', '1992-03-25'),
('andi', 'Maródi Andrea', 'andrea.maródi@mail.hu', '5465 Cserkeszőlő Árpád utca 4.', '1968-05-07'),
('andras2', 'Tóth András', 'andrás.tóth@mail.hu', '4071 Egyek Petőfi utca 30.', '1997-10-31'),
('andras21', 'Molnár András', 'andrás.molnár@mail.hu', '7900 Szigetvár Rákóczi utca 67.', '1977-11-16'),
('andras3', 'Vígh András', 'andrás.vígh@mail.hu', '1118 Budapest Arany János utca 1.', '1971-04-02'),
('andras4', 'Back András', 'andras4@gmail.com', '3783 Edelény Fő út 169.', '1984-04-07'),
('andras41', 'Komjáti András', 'andras41@gmail.com', '5065 Nagykörű Kossuth út 24.', '1997-10-25'),
('ANDRASE', 'Erdei András', 'ANDRASE@gmail.com', '5071 Besenyszög Szolnoki út 8.', '1997-05-29'),
('ANDRASN', 'Nagy András', 'andrás.nagy@mail.hu', '6500 Baja Fő út 169.', '1980-09-05'),
('andrea', 'Kiss Andrea', 'andrea.kiss@mail.hu', '1113 Budapest Petőfi Sándor utca 87.', '1993-03-25'),
('andrea3', 'Szomor Andrea', 'andrea3@gmail.com', '7960 Sellye Bécsi utca 82.', '1996-05-10'),
('andrea4', 'Neizer Andrea', 'andrea4@gmail.com', '1124 Budapest Kiss u. 8.', '1981-05-17'),
('ANDREAT', 'Tornyos Andrea', 'ANDREAT@gmail.com', '6131 Szank Bécsi utca 82.', '1986-11-14'),
('anett3', 'Pivarcsi Anett', 'anett.pivarcsi@mail.hu', '1149 Budapest Fő út 60.', '1967-01-03'),
('aniko', 'Tóth Anikó', 'aniko@gmail.com', '2085 Pilisvörösvár Deák Ferenc út 5.', '1973-06-03'),
('aniko4', 'Böröcz Anikó', 'aniko4@gmail.com', '2484 Agárd Petőfi Sándor tér 1.', '1978-03-26'),
('ANIKOS', 'Simon Anikó', 'ANIKOS@gmail.com', '5137 Jászkisér Bécsi utca 82.', '1988-12-14'),
('anita', 'Hamvay-Kovács Anita', 'anita.hamvay-kovács@mail.hu', '7220 Sarkad Táncsics utca 19.', '1971-03-20');

CREATE USER MaskUser WITHOUT Login;
GRANT SELECT ON Vendeg_Maszk TO MaskUser

EXECUTE AS User= 'MaskUser';
SELECT * FROM Vendeg_Maszk
REVERT
