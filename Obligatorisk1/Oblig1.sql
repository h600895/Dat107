A)
CREATE SCHEMA Oblig1
CREATE TABLE Oblig1.Eier (
    Id_Pk INTEGER PRIMARY KEY,
    Fornavn varchar(40),
    Etternavn varchar(40),
    Epost varchar(100),
    Telefon INTEGER

);
CREATE TABLE oblig1.Bil (
    Reg_nr char(7) PRIMARY KEY,
    Eier_Fk integer,
	FOREIGN KEY (Eier_Fk) REFERENCES oblig1.Eier (Id_Pk)

);

CREATE TABLE Oblig1.Passering (
    Reg_nr_Fk char(7),
    Tid TIMESTAMP,
    Bompassering varchar(40),
	FOREIGN KEY (Reg_nr_Fk) REFERENCES Oblig1.Bil (Reg_nr)
);

-En person kan eie flere biler og får å slippe feilskrivinger er det bedre å lage en referanse til en annen tabell
-

B)
SELECT * FROM Oblig1.passering, oblig1.eier, oblig1.bil
C)
SELECT * FROM Oblig1.passering, oblig1.eier, oblig1.bil WHERE Reg_nr_Fk NOTNULL
D)

E)

F)

G)