
-- Delete all column all table --
DELETE FROM Users;
DELETE FROM Bed_Type;
DELETE FROM Bathroom_Type;
DELETE FROM View;
DELETE FROM Bedroom;
DELETE FROM Service_Category;
DELETE FROM Service;
DELETE FROM List_Service;
DELETE FROM Statut_Booking;
DELETE FROM Booking;


-- table Users --
INSERT INTO Users VALUES (NULL , 'Jean', 'Dupond', 'jean.dupond@email.com', '0701177180', 'password', 0);
INSERT INTO Users VALUES (NULL , 'John', 'Do', 'john.dod@email.com', '0711187180', 'password', 0);
INSERT INTO Users VALUES (NULL , 'Sen', 'Goku', 'sen.goku@email.com', '0604178183', 'password', 1);
INSERT INTO Users VALUES (NULL , 'Lara', 'Croft', 'lara.croft@email.com', '0687145185', 'password', 0);

-- table Bed_Type --
INSERT INTO Bed_Type VALUES (NULL , 'Simple');
INSERT INTO Bed_Type VALUES (NULL , 'Double King Size');
INSERT INTO Bed_Type VALUES (NULL , 'Double Queen Size');

-- table bathroom_type --
INSERT INTO Bathroom_Type VALUES (NULL, 'Douche');
INSERT INTO Bathroom_Type VALUES (NULL, 'Baignoire');
INSERT INTO Bathroom_Type VALUES (NULL, 'Douche et Baignoire');

-- table view --
INSERT INTO View VALUES (NULL, 'Parking');
INSERT INTO View VALUES (NULL, 'Jardin');
INSERT INTO View VALUES (NULL, 'Terasse');
INSERT INTO View VALUES (NULL, 'Rue');

-- table Bedroom --
INSERT INTO Bedroom VALUES (NULL, '101', 25, 1, 0, 1, 1, 1, 1, 45);
INSERT INTO Bedroom VALUES (NULL, '014', 35, 1, 1, 3, 3, 2, 0, 55); 
INSERT INTO Bedroom VALUES (NULL, '203', 15, 1, 0, 1, 1, 4, 2, 35); 
INSERT INTO Bedroom VALUES (NULL, '314', 30, 1, 0, 2, 2, 3, 3, 60);  
INSERT INTO Bedroom VALUES (NULL, '114', 65, 0, 1, 2, 3, 2, 1, 345); 

-- table Service_Category --
INSERT INTO Service_Category VALUES (NULL, 'Matériel');
INSERT INTO Service_Category VALUES (NULL, 'Bien-être');
INSERT INTO Service_Category VALUES (NULL, 'Repas');
INSERT INTO Service_Category VALUES (NULL, 'Spécial');

-- table Service --
INSERT INTO Service VALUES (NULL, 'Pas de service',"Aucun service n'est disponible dans cette chambre", 4, 0);
INSERT INTO Service VALUES (NULL, 'Bouteille de champagne', "Une bouteille de champagne vous attends dans votre chambre lors de votre arrivée à l'hôtel", 1, 25);
INSERT INTO Service VALUES (NULL, 'Mini Bar', 'Un minibar est mis à votre disposition pour faire la fête tout le long de votre séjour', 1, 100);
INSERT INTO Service VALUES (NULL, 'Petit déjeuner en chambre', 'On vous apporte le petit déjeune dans votre chambre (servie entre 7H30 et 8H30)', 3, 15);
INSERT INTO Service VALUES (NULL, 'SPA', "Vous donne l'accès à notre SPA, pour vous détendre après une journée de réunion chargé ", 2, 50);

-- table List_Service --
INSERT INTO List_Service VALUES (NULL, 1, 3 );
INSERT INTO List_Service VALUES (NULL, 2, 2);
INSERT INTO List_Service VALUES (NULL, 3, 5);
INSERT INTO List_Service VALUES (NULL, 4, 1);
INSERT INTO List_Service VALUES (NULL, 5, 4);
INSERT INTO List_Service VALUES (NULL, 5, 5);
INSERT INTO List_Service VALUES (NULL, 2, 3);
INSERT INTO List_Service VALUES (NULL, 2, 4);
INSERT INTO List_Service VALUES (NULL, 2, 5);

-- table Statut_Booking --
INSERT INTO Statut_Booking VALUES(NULL, 'En cours');
INSERT INTO Statut_Booking VALUES(NULL, 'Annulé');
INSERT INTO Statut_Booking VALUES(NULL, 'Terminé');
INSERT INTO Statut_Booking VALUES(NULL, 'Paiement effectué');
INSERT INTO Statut_Booking VALUES(NULL, 'Paiement en cours');
INSERT INTO Statut_Booking VALUES(NULL, 'Paiement en attente');
-- table Booking --
INSERT INTO Booking VALUES (NULL, 1, 1, 4, '2018-05-28', '2018-05-30');
INSERT INTO Booking VALUES (NULL, 3, 4, 6,'2018-06-12','2018-06-15');
