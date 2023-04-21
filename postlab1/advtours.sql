CREATE TABLE Participants (
  Number INTEGER PRIMARY KEY,
  Last_Name TEXT,
  First_Name TEXT,
  Address TEXT,
  City TEXT,
  State TEXT,
  Postal_Code TEXT,
  Telephone_No TEXT,
  Date_of_Birth DATE
);

CREATE TABLE Adventure_Classes (
  Class_Number INTEGER PRIMARY KEY,
  Class_Description TEXT,
  Max_People INTEGER,
  Class_Fee REAL
);

CREATE TABLE Enrollments (
  Participant_Number INTEGER,
  Last_Name TEXT,
  First_Name TEXT,
  Class_Number INTEGER,
  Class_Description TEXT,
  Class_Date DATE,
  PRIMARY KEY (Participant_Number, Class_Number, Class_Date),
  FOREIGN KEY (Participant_Number) REFERENCES Participants (Number),
  FOREIGN KEY (Class_Number) REFERENCES Adventure_Classes (Class_Number)
);

CREATE TABLE Class_Participants (
  Class_Date DATE,
  Class_Number INTEGER,
  Class_Description TEXT,
  Participant_Number INTEGER,
  Last_Name TEXT,
  First_Name TEXT,
  PRIMARY KEY (Class_Date, Class_Number, Participant_Number),
  FOREIGN KEY (Class_Number) REFERENCES Adventure_Classes (Class_Number),
  FOREIGN KEY (Participant_Number) REFERENCES Participants (Number)
);
