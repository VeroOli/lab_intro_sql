insert into coches.customers  (`CustomerID`, `Name`, `Phone`,`Email`,`Address`, `City`,	`State/Province`,`Country`, `Postal`) VALUES
('10001',	'Pablo Picasso',	'+34 636 17 63 82',	'-',	'Paseo de la Chopera, 14',	'Madrid',	'Madrid,',	'Spain',	'28045'),
('20001',	'Hedy Lamarr',	'+43 1 514442250',	'-',	'Weiglgasse 10',	'Viena',	'Vienna',	'Austria',	'1150'),
('30001',	'Katherine Johnson',	'+1 202 358 0000',	'-'	,'300 E St SW',	'Washington, DC','Washington',	'United States','20546');

insert into coches.cars (`VIN`,`Manufacturer`,`Model`,`Year`,`Color`) VALUES ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter','2019','Red'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter',	'2019',	'Red'),
('RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	'2018',	'White'),
('HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	'2018',	'Silver'),
('DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	'2019',	'Gray'),
('DAM41UDN3CHU2WVF6',	'Volvo', 'V60 Cross Country',	'2019',	'Gray');

insert into coches.salespersons (`StaffID`,`Name`,`Store`) VALUES ( '00001 ',	'Petey Cruiser',	'Madrid '),
('00002',	'Anna Sthesia',	'Barcelona'),
('00003',	'Paul Molive ',	'Berlin'),
('00004',	'Gail Forcewind ',	'Paris'),
('00005' , 'Paige Turner',	'Mimia'),
('00006',	'Bob Frapples',	'Mexico City '),
('00007', 'Walter Melon ', 'Amsterdam'),
('00008', 'Shonda Leer',	'São Paulo');

INSERT INTO coches.invoices  (`Number`,	`Date`,	`Cars_idCars`,	`Salespersons_idSalespersons`,`Customers_idCustomers`) VALUES
('852399038 ', '22-08-2018 ', '1 ', '3 ','1'),
('731166526 ','31-12-2018 ','6 ','5 ','3'),
('271135104 ', '22-01-2019 ','2 ','7 ','2');

UPDATE salespersons
SET store = 'Miami'
WHERE idSalespersons = 5;

UPDATE customers
SET Email = 
    CASE 
        WHEN idCustomers = 2 THEN 'ppicasso@gmail.com'
        WHEN idCustomers = 3 THEN 'lamarr_hd@hollywood.com'
        WHEN idCustomers = 1 THEN 'hello@nasa.gov'
        ELSE Email
    END
WHERE idCustomers IN (1, 2, 3);

DELETE FROM cars
WHERE idCars = 4;