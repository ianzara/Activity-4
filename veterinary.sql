CREATE DATABASE veterinary;

CREATE TABLE owners (
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals 
( animal INT PRIMARY KEY,
  name VARCHAR(50),
  species VARCHAR(50),
  breed VARCHAR(50),
  dateofbirth DATE,
  gender VARCHAR(10),
  color VARCHAR(50),
  ownerid INT,

  FOREIGN KEY (ownerid) REFERENCES owners (ownerid)
);

CREATE TABLE appointment (
    appointment INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FORIEGN KEY (animalid)
    REFERENCES animals (animalid)

);

CREATE TABLE doctor (
doctorid INT PRIMARY KEY,
dfirstname VARCHAR(50),
dlastname VARCHAR(50),
specialty VARCHAR(100),
phone VARCHAR(15),
email VARCHAR(100),

);

CREATE TABLE invoices
(
invoiceid PRIMARY KEY,
appointid INT,
totalamount NUMERIC(10,2),
paymentdate TIME,

FOREIGN KEY (appointid) REFERENCES appointments (appointid)
);

CREATE TABLE medicalrecords
(
	record_id INT NOT NULL,
	animal_id INT NOT NULL,
	record_date TIMESTAMP NOT NULL,
	doctor_id INT NOT NULL,
	diagnosis TEXT NOT NULL,
	prescription TEXT NOT NULL,
	notes TEXT NOT NULL,
	PRIMARY KEY (record_id),
	FOREIGN KEY (animal_id) REFERENCES animals(animal_id),
	FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);





