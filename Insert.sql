

INSERT INTO Fournisseur VALUES (1,'Roxane'); /* cristalline */
INSERT INTO Fournisseur VALUES (2,'Tropicana Products, Inc.');  /* jus de fruits tropicana */
INSERT INTO Fournisseur VALUES (3,'Heineken');  /* heineken et desperados */
INSERT INTO Fournisseur VALUES (4,'Danone'); /* fournisseur de evian et jus danone */
INSERT INTO Fournisseur VALUES (5,'Grupo Modelo'); /* biere corona */
INSERT INTO Fournisseur VALUES (6,'PepsiCo, Inc.'); /* pepsi */
INSERT INTO Fournisseur VALUES (7,'La Martiniquaise'); /* poliakov */
INSERT INTO Fournisseur VALUES (8,'Red Bull GmbH'); /* fournisser de redbull */
INSERT INTO Fournisseur VALUES (9,'Brown-Forman Corporation'); /* fournisser de jackdaniels */


INSERT INTO Client VALUES (1,'donatello','gisele','fan_do_du14@gmail.com');
INSERT INTO Client VALUES (2,'Lucifer','Lucius','contract666@hotmail.com');
INSERT INTO Client VALUES (3,'touggard','mona','mtouggard@gmail.com');
INSERT INTO Client VALUES (4,'presley','elvis','vegastars@gmail.com');
INSERT INTO Client VALUES (5,'Jackson','michael','MJMJ@yahoo.com');
INSERT INTO Client VALUES (6,'Cristal','Line','cristalline_egerie@gmail.com');
INSERT INTO Client VALUES (7,'LeGris','Gandalph','mageDeLaCompte@gmail.com');


INSERT INTO Liquide VALUES (1,true,'badoit');
INSERT INTO Liquide VALUES (2,true,'cristalline');
INSERT INTO Liquide VALUES (3,true,'contrex');
INSERT INTO Liquide VALUES (4,true,'vittel');
INSERT INTO Liquide VALUES (5,true,'boisson energisante');
INSERT INTO Liquide VALUES (6,true,'jus orange');
INSERT INTO Liquide VALUES (7,false,'essence');
INSERT INTO Liquide VALUES (8,true,'banane');
INSERT INTO Liquide VALUES (9,true,'kiwi');
INSERT INTO Liquide VALUES (10,true,'ananas');
INSERT INTO Liquide VALUES (11,true,'pomme');
INSERT INTO Liquide VALUES (12,true,'pamplemousse');
INSERT INTO Liquide VALUES (13,true,'danone lait et jus orange');
INSERT INTO Liquide VALUES (14,true,'coco');
INSERT INTO Liquide VALUES (15,false,'acide');
INSERT INTO Liquide VALUES (16,true,'polia');
INSERT INTO Liquide VALUES (17,true,'CaptainMorgan');
INSERT INTO Liquide VALUES (18,true,'Jackdaniel');
INSERT INTO Liquide VALUES (19,true,'Biere');



INSERT INTO Region_geo VALUES (1,'EUROPE');
INSERT INTO Region_geo VALUES (2,'ASIE');
INSERT INTO Region_geo VALUES (3,'AMERIQUE DU NORD');
INSERT INTO Region_geo VALUES (4,'AFRIQUE');
INSERT INTO Region_geo VALUES (5,'OCEANIE');
INSERT INTO Region_geo VALUES (6,'AMERIQUE DU SUD');
INSERT INTO Region_geo VALUES (7,'ARCTIC/ANTARCTIC');

INSERT INTO Subvention VALUES (1000,'EUROPE');
INSERT INTO Subvention VALUES (2000,'ASIE');
INSERT INTO Subvention VALUES (3000,'AMERIQUE DU NORD');
INSERT INTO Subvention VALUES (4000,'AFRIQUE');
INSERT INTO Subvention VALUES (5000,'OCEANIE');
INSERT INTO Subvention VALUES (6000,'AMERIQUE DU SUD');
INSERT INTO Subvention VALUES (7000,'ARCTIC/ANTARCTIC');

INSERT INTO Pays VALUES (1);
INSERT INTO Pays VALUES (2);
INSERT INTO Pays VALUES (3);
INSERT INTO Pays VALUES (4);
INSERT INTO Pays VALUES (5);
INSERT INTO Pays VALUES (6);
INSERT INTO Pays VALUES (7);


INSERT INTO Region VALUES (1);
INSERT INTO Region VALUES (2);
INSERT INTO Region VALUES (3);
INSERT INTO Region VALUES (4);
INSERT INTO Region VALUES (5);
INSERT INTO Region VALUES (6);
INSERT INTO Region VALUES (7);

INSERT INTO Metropole VALUES (1);
INSERT INTO Metropole VALUES (2);
INSERT INTO Metropole VALUES (3);
INSERT INTO Metropole VALUES (4);
INSERT INTO Metropole VALUES (5);
INSERT INTO Metropole VALUES (6);
INSERT INTO Metropole VALUES (7);

INSERT INTO Metropolitaine VALUES (1000,1);
INSERT INTO Metropolitaine VALUES (2000,2);
INSERT INTO Metropolitaine VALUES (3000,3);
INSERT INTO Metropolitaine VALUES (4000,4);
INSERT INTO Metropolitaine VALUES (5000,5);
INSERT INTO Metropolitaine VALUES (6000,6);
INSERT INTO Metropolitaine VALUES (7000,7);

INSERT INTO Commune VALUES (1);
INSERT INTO Commune VALUES (2);
INSERT INTO Commune VALUES (3);
INSERT INTO Commune VALUES (4);
INSERT INTO Commune VALUES (5);
INSERT INTO Commune VALUES (6);
INSERT INTO Commune VALUES (7); 

INSERT INTO Communale VALUES (1000,1);
INSERT INTO Communale VALUES (2000,2);
INSERT INTO Communale VALUES (3000,3);
INSERT INTO Communale VALUES (4000,4);
INSERT INTO Communale VALUES (5000,5);
INSERT INTO Communale VALUES (6000,6);
INSERT INTO Communale VALUES (7000,7);



INSERT INTO Eau VALUES (1,0,0,0,0.1,0.5,0,0,9,10,4);
INSERT INTO Eau VALUES (2,0,0,0,0.1,0.5,0,0,9,10,4);



INSERT INTO Sub_valFix VALUES (1000,546547,0.1);
INSERT INTO Sub_valFix VALUES (2000,2,0.4);
INSERT INTO Sub_valFix VALUES (3000,5,0.5);
INSERT INTO Sub_valFix VALUES (4000,4,0.06);
INSERT INTO Sub_valFix VALUES (5000,10,1);
INSERT INTO Sub_valFix VALUES (6000,0,0);
INSERT INTO Sub_valFix VALUES (7000,78,0.7);


INSERT INTO Sub_valHab VALUES (1000,546547,0.1);
INSERT INTO Sub_valHab VALUES (2000,2,0.4);
INSERT INTO Sub_valHab VALUES (3000,5,0.5);
INSERT INTO Sub_valHab VALUES (4000,4,0.06);
INSERT INTO Sub_valHab VALUES (5000,10,1);
INSERT INTO Sub_valHab VALUES (6000,0,0);
INSERT INTO Sub_valHab VALUES (7000,78,0.7);

/*
client_liquide (id_liquide,id_client,cout_conso)
*/

INSERT INTO Client_liquide VALUES (1,1,1.20);
INSERT INTO Client_liquide VALUES (1,2,1.05);
INSERT INTO Client_liquide VALUES (2,2,2);
INSERT INTO Client_liquide VALUES (3,1,6);

INSERT INTO Client_liquide VALUES (4,4,5);
INSERT INTO Client_liquide VALUES (5,5,10);
INSERT INTO Client_liquide VALUES (1,6,10);

/*
fournisseur_liquide(id_fournisseur,id_liquid,debit_max,prix)
*/

--roxanne
INSERT INTO Fournisseur_liquide VALUES (1,1,1.20,5);
INSERT INTO Fournisseur_liquide VALUES (1,2,1.05,5);
INSERT INTO Fournisseur_liquide VALUES (1,3,2,5);
INSERT INTO Fournisseur_liquide VALUES (1,4,2,5);
--tropicana
INSERT INTO Fournisseur_liquide VALUES (2,6,1.20,5);
INSERT INTO Fournisseur_liquide VALUES (2,8,1.05,5);
INSERT INTO Fournisseur_liquide VALUES (2,9,2,5);
INSERT INTO Fournisseur_liquide VALUES (2,10,2,5);
INSERT INTO Fournisseur_liquide VALUES (2,11,1.20,5);
INSERT INTO Fournisseur_liquide VALUES (2,12,1.05,5);
--danone
INSERT INTO Fournisseur_liquide VALUES (3,6,2,5);
INSERT INTO Fournisseur_liquide VALUES (3,13,2,5);
--
INSERT INTO Fournisseur_liquide VALUES (3,1,6,5);
INSERT INTO Fournisseur_liquide VALUES (3,4,5,5);
INSERT INTO Fournisseur_liquide VALUES (5,6,10,5);
INSERT INTO Fournisseur_liquide VALUES (1,6,10,5);

/*
geo_sub_liquide(id_region_concerne,id_sub,id_liquide)
*/

INSERT INTO Geo_sub_liquide VALUES (1,1000,1);
INSERT INTO Geo_sub_liquide VALUES (2,2000,1);
INSERT INTO Geo_sub_liquide VALUES (1,7000,2);
INSERT INTO Geo_sub_liquide VALUES (3,3000,4);
INSERT INTO Geo_sub_liquide VALUES (5,4000,5);
INSERT INTO Geo_sub_liquide VALUES (5,5000,6);
INSERT INTO Geo_sub_liquide VALUES (6,6000,10);


INSERT INTO Jus VALUES (1,'jus orange');
INSERT INTO Jus VALUES (2,'kiwi');
INSERT INTO Jus VALUES (3,'ananas');
INSERT INTO Jus VALUES (4,'pomme');
INSERT INTO Jus VALUES (5,'pamplemousse');
INSERT INTO Jus VALUES (6,'danone lait et jus orange');
INSERT INTO Jus VALUES (7,'coco');


INSERT INTO Alcool VALUES (1,'polia',35);
INSERT INTO Alcool VALUES (2,'CaptainMorgan',40);
INSERT INTO Alcool VALUES (3,'Jackdaniel',40);
INSERT INTO Alcool VALUES (4,'Biere',5);

/*
Client_geo(id_client,id_region_geo_concerne)
*/

INSERT INTO Client_geo VALUES (1,3);
INSERT INTO Client_geo VALUES (2,3);
INSERT INTO Client_geo VALUES (3,1);
INSERT INTO Client_geo VALUES (4,3);
INSERT INTO Client_geo VALUES (5,5);
INSERT INTO Client_geo VALUES (6,4);
INSERT INTO Client_geo VALUES (7,1);

/*
Liquide_geo(id_liquide,id_region_geo_concerne)
*/

INSERT INTO Liquide_geo VALUES (1,3);
INSERT INTO Liquide_geo VALUES (2,3);
INSERT INTO Liquide_geo VALUES (3,1);
INSERT INTO Liquide_geo VALUES (4,3);
INSERT INTO Liquide_geo VALUES (5,5);
INSERT INTO Liquide_geo VALUES (6,4);
INSERT INTO Liquide_geo VALUES (7,1);
INSERT INTO Liquide_geo VALUES (8,4);
INSERT INTO Liquide_geo VALUES (9,4);
INSERT INTO Liquide_geo VALUES (10,4);
INSERT INTO Liquide_geo VALUES (11,1);

/*
Fournisseur_geo(id_liquide,id_region_geo_concerne)
*/

INSERT INTO Fournisseur_geo VALUES (1,3);
INSERT INTO Fournisseur_geo VALUES (2,3);
INSERT INTO Fournisseur_geo VALUES (3,1);
INSERT INTO Fournisseur_geo VALUES (4,3);
INSERT INTO Fournisseur_geo VALUES (5,5);
INSERT INTO Fournisseur_geo VALUES (6,4);
INSERT INTO Fournisseur_geo VALUES (7,1);





