DROP TABLE IF EXISTS geninf;
DROP TABLE IF EXISTS clearancechecklist;
DROP TABLE IF EXISTS unclaimdocuments;

CREATE TABLE clearancechecklist (
	stdtid VARCHAR(50),
	department VARCHAR(255) NOT NULL,
	remarks VARCHAR(255) NOT NULL,
	PRIMARY KEY (stdtid)
);

CREATE TABLE unclaimdocuments (
	stdtid VARCHAR(50),
	reqdoc VARCHAR(255) NOT NULL,
	datereq VARCHAR(255) NOT NULL,
	remarks VARCHAR(255),
	PRIMARY KEY (stdtid)
);

CREATE TABLE geninf (
	stdtid VARCHAR(50),
	grcoprog VARCHAR(100) NOT NULL,
	surname VARCHAR(100) NOT NULL,
	firstname VARCHAR(100) NOT NULL,
	middlename VARCHAR(100) NOT NULL,
	sex VARCHAR(8) NOT NULL,
	bday VARCHAR(15) NOT NULL,
	address VARCHAR(255) NOT NULL,
	PRIMARY KEY (stdtid),
	FOREIGN KEY (stdtid) REFERENCES clearancechecklist(stdtid),
	FOREIGN KEY (stdtid) REFERENCES unclaimdocuments(stdtid)
);

INSERT INTO clearancechecklist (stdtid, department, remarks) VALUES (
	'COL-1415-0001', 'finance', '5000');
INSERT INTO clearancechecklist (stdtid, department, remarks) VALUES (
	'COL-1415-0002', 'cleared' ,'cleared');
INSERT INTO clearancechecklist (stdtid, department, remarks) VALUES (
	'BED-1516-0003', 'library', 'book');
INSERT INTO clearancechecklist (stdtid, department, remarks) VALUES (
	'GS-1617-0005', 'cleared' ,'cleared');

INSERT INTO unclaimdocuments (stdtid, reqdoc, datereq, remarks) VALUES (
	'COL-1415-0002', 'TOR' ,'01/15/18', 'paid');
INSERT INTO unclaimdocuments (stdtid, reqdoc, datereq, remarks) VALUES (
	'GS-1617-0005', 'Cert of Units Earned' ,'01/15/18', 'paid');

INSERT INTO geninf (stdtid, grcoprog, surname, firstname, middlename, sex, bday, address) VALUES (
	'GS-1617-0005', 'MBA', 'Manso', 'Ma. Christina', 'Travinio', 'F', '05/10/88', 'Malolos City, Bulacan');
INSERT INTO geninf (stdtid, grcoprog, surname, firstname, middlename, sex, bday, address) VALUES (
	'COL-1415-0001', 'BSIT', 'Albuera', 'Chibi Maruko', 'Cruz', 'F', '06/01/90', 'Bulakan, Bulacan');
INSERT INTO geninf (stdtid, grcoprog, surname, firstname, middlename, sex, bday, address) VALUES (
	'BED-1516-0003', 'Grade 11', 'Espiritu', 'Harold', 'Gomez', 'M', '11/22/00', 'Bulakan, Bulacan');
INSERT INTO geninf (stdtid, grcoprog, surname, firstname, middlename, sex, bday, address) VALUES (
	'COL-1415-0002', 'BLIS', 'Tarranza', 'Cynthia', 'Gomez', 'F', '09/06/98', 'Guiguinto, Bulacan');
