--
-- File generated with SQLiteStudio v3.4.4 on Fri Apr 21 19:39:41 2023
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Property
CREATE TABLE IF NOT EXISTS Property (CondoNumber INTEGER NOT NULL, CondoName TEXT NOT NULL, Address TEXT, City TEXT, State TEXT, PostalCode INTEGER NOT NULL, SquareFootage REAL, NumberBedroom INTEGER, NumberBathroom INTEGER, PropertyID INTEGER NOT NULL, PRIMARY KEY (PropertyID AUTOINCREMENT));

-- Table: RentalAgreement
CREATE TABLE IF NOT EXISTS RentalAgreement (RenterNumber INTEGER NOT NULL, FirstName TEXT NOT NULL, MiddleInitial TEXT, LastName TEXT, Address TEXT, City TEXT, State TEXT, PostalCode INTEGER, TelNumber INTEGER, StartDateRent INTEGER, EndDateRent INTEGER, WeeklyRentAmnt REAL, RentalAgreementID INTEGER NOT NULL, PropertyID INTEGER NOT NULL, RenterID INTEGER NOT NULL, PRIMARY KEY (RentalAgreementID AUTOINCREMENT), FOREIGN KEY (RenterID) REFERENCES renter (renterID), FOREIGN KEY (PropertyID) REFERENCES property (propertyID));

-- Table: Renter
CREATE TABLE IF NOT EXISTS Renter (MiddleInitial TEXT, Number INTEGER NOT NULL, FirstName TEXT NOT NULL, LastName TEXT, Address TEXT, City TEXT, State TEXT, PostalCode INTEGER NOT NULL, TelephoneNumber INTEGER, EmailAddress TEXT, RenterID INTEGER NOT NULL, PRIMARY KEY (RenterID AUTOINCREMENT));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
