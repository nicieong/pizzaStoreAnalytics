USE Pizza_Store;


INSERT INTO SUPPLIER_TYPE (suptype_id, suptype) VALUES
(1, "Food"),
(2, "Material");
SELECT * FROM SUPPLIER_TYPE;



INSERT INTO SUPPLIER
(supplier_id, supplier_name, suptype_id, phonenum, contact_person, address, postal_code, email)
VALUES 
(1,"Aenean LLP",1,"14159464815","Shea Pacheco","Ap #936-7219 Purus St.","A4S2V5","sem.egestas.blandit@outlook.ca"),
(2,"Cras Eu Industries",2,"15671218768","Grace Duran","P.O. Box 519, 3515 Dapibus Av.","72V5W8","vitae.risus@yahoo.couk"),
(3,"Sed Nec Incorporated",2,"18255326412","Melyssa Gibson","P.O. Box 574, 6584 Id Road","Y3G7T7","ligula.aenean.gravida@yahoo.com"),
(4,"Tempus LLP",2,"16548775833","Ruth Slater","Ap #991-5097 Eu Av.","S3C6K2","risus.donec.egestas@protonmail.org"),
(5,"Odio Tristique Inc.",2,"14936331561","Inga Gray","306-4578 Ipsum Av.","76T3G4","nascetur.ridiculus@yahoo.ca");
SELECT * FROM SUPPLIER;