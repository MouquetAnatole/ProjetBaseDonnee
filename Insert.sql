

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


INSERT INTO Liquid VALUES (1,true,'badoit');
INSERT INTO Liquid VALUES (2,true,'cristalline');
INSERT INTO Liquid VALUES (3,true,'contrex');
INSERT INTO Liquid VALUES (4,true,'vittel');
INSERT INTO Liquid VALUES (5,true,'redbull');
INSERT INTO Liquid VALUES (6,true,'jus orange');
INSERT INTO Liquid VALUES (7,false,'essence');
INSERT INTO Liquid VALUES (8,true,'coco');
INSERT INTO Liquid VALUES (9,true,'kiwi');
INSERT INTO Liquid VALUES (10,true,'ananas');
INSERT INTO Liquid VALUES (11,true,'acide');
INSERT INTO Liquid VALUES (12,false,'azote');
INSERT INTO Liquid VALUES (13,false,'gasoil');



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
INSERT INTO Subvention VALUES (7000,'ARCTIQUE/ANTARCTIQUE');

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
client_liquide (id_client,id_liquid,cout_conso)
*/

INSERT INTO Client_liquide VALUES (1,10,1.20);
INSERT INTO Client_liquide VALUES (1,10,1.05);
INSERT INTO Client_liquide VALUES (2,10,2);
INSERT INTO Client_liquide VALUES (3,10,6);
INSERT INTO Client_liquide VALUES (4,66,5);
INSERT INTO Client_liquide VALUES (5,66,10);
INSERT INTO Client_liquide VALUES (1,66,10);

/*
fournisseur_liquide(id_fournisseur,id_liquid,debit_max)
*/


INSERT INTO Fournisseur_liquide VALUES (1,10,1.20);
INSERT INTO Fournisseur_liquide VALUES (1,11,1.05);
INSERT INTO Fournisseur_liquide VALUES (2,10,2);
INSERT INTO Fournisseur_liquide VALUES (3,3,6);
INSERT INTO Fournisseur_liquide VALUES (3,3,5);
INSERT INTO Fournisseur_liquide VALUES (5,6,10);
INSERT INTO Fournisseur_liquide VALUES (1,6,10);

/*
geo_sub_liquide(id_region_concerne,id_sub,id_liquide)
*/

INSERT INTO Geo_sub_liquide VALUES (1,1000,1);
INSERT INTO Geo_sub_liquide VALUES (2,2000,1);
INSERT INTO Geo_sub_liquide VALUES (1,1000,2);
INSERT INTO Geo_sub_liquide VALUES (3,3000,4);
INSERT INTO Geo_sub_liquide VALUES (5,5000,5);
INSERT INTO Geo_sub_liquide VALUES (5,5000,6);
INSERT INTO Geo_sub_liquide VALUES (6,6000,10);


INSERT INTO Jus VALUES (1,'jus orange');
INSERT INTO Jus VALUES (2,'kiwi');
INSERT INTO Jus VALUES (3,'ananas');
INSERT INTO Jus VALUES (4,'pomme');
INSERT INTO Jus VALUES (5,'pamplemousse');
INSERT INTO Jus VALUES (6,'danone lait et jus orange');
INSERT INTO Jus VALUES (7,'coco');


INSERT INTO Alcool VALUES (1,'Poliakov',35);
INSERT INTO Alcool VALUES (2,'CaptainMorgan',40);
INSERT INTO Alcool VALUES (3,"Jack Daniel's",40);
INSERT INTO Alcool VALUES (4,'Bière',5);

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







