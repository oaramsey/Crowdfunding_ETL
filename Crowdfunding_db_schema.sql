DROP TABLE Category,
	SubCategory,
	Contacts,
	Campaign;

CREATE TABLE Category(
	category_id CHAR(4) NOT NULL PRIMARY KEY,
	category VARCHAR (12) NOT NULL
);

CREATE TABLE Subcategory(
	subcategory_id VARCHAR (8) NOT NULL PRIMARY KEY,
	subcategory VARCHAR (17)
);

CREATE TABLE Contacts(
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR (12) NOT NULL,
	last_name VARCHAR (13) NOT NULL,
	email VARCHAR (42) NOT NULL
);

CREATE TABLE Campaign(
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	company_name VARCHAR (33) NOT NULL,
	description VARCHAR (53) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR (10) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR (2) NOT NULL,
	currency VARCHAR (3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id CHAR (4) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	subcategory_id VARCHAR (8) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
	
	
);

SELECT * FROM Category;

SELECT * FROM Subcategory;

SELECT * FROM Contacts;

SELECT * FROM Campaign;

