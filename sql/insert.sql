INSERT INTO chassis(chassis) VALUES 
("Voiture avec hayon"), ("Coupé"), ("Décapotable"), ("Fourgonnette");
INSERT INTO typeCarburant(typeCarburant) VALUES 
("Diesel"), ("Essence");
INSERT INTO groupeMotopropulseur(groupeMotopropulseur) VALUES 
("4x4"), ("4x2");
INSERT INTO transmission(transmission) VALUES 
("Manuelle"), ("Automatique");
INSERT INTO fabricant(fabricant) VALUES 
("Fiat Chrysler Canada Inc."), 
("Ford of Canada Ltd."), 
("General Motors of Canada Ltd."), 
("Honda Canada Inc."), 
("Toyota Canada Inc."), 
("BMW Canada Inc."), 
("Auto Hyundai du Canada"), 
("Jaguar Land Rover Canada"), 
("Kia Canada Inc."), 
("Mazda Canada Inc."), 
("Mercedes-Benz Canada Inc."), 
("Mitsubishi Motor sales of Canada, Inc."), 
("Nissan Canada Inc."), 
("Automobiles Porsche Canada, Ltée"), 
("Subaru Canada, Inc."),
("Volkswagen Group Canada Inc."), 
("Groupe Volvo Canada Inc.");
INSERT INTO marque(idFabricant, marque) VALUES 
(1, "Fiat"), (1, "Chrysler"), (1, "Dodge"),  (1, "Jeep"), (1, "Ram"), (2, "Ford"), (2, "Lincoln"), (3, "Chevrolet"), (3, "GMC"), (3, "Buick"), (3, "Cadillac"), (4, "Honda"), (4, "Acura"), (5, "Toyota"), (5, "Lexus"), (6, "Mini"), (6, "BMW"), (7, "Hyundai"), (8, "Jaguar"), (8, "Land Rover"), (9, "Kia"), (10, "Mazda"), (11, "Mercedes-Benz"), (12, "Mitsubishi"), (13, "Nissan"), (13, "Infinity"), (14, "Porsche"), (15, "Subaru"), (16, "Volkswagen"), (16, "Audi"), (17, "Volvo"); 
INSERT INTO modele(idMarque, modele) VALUES 
(1, "124 Spider") , (1, "500"), (1, "500c"), (1, "500L"), (1, "500X"), (2, "200"),    
(2, "300"), (2, "300M"), (2, "Aspen"), (2, "Cirrus"), (2, "Concorde"), (2, "Crossfire"),
(2, "Grand Caravan"), (2, "Intrepid"), (2, "LHS"), (2, "Neon"), (2, "Pacifica"), (2, "Pacifica Hybrid"), (2, "Prowler"), (2, "PT Cruiser"), (2, "Sebring"), (2, "Town & Counrty"), (3, "Avenger"), (3, "Caliber"), (3, "Caravan"), (3, "Caravan Cargo Van"), (3, "Challenger"), (3, "Charger"), (3, "Dakota"), (3, "Dart"), (3, "Durango"), (3, "Fourgon Ram"), (3, "Grand Caravan"), (3, "Grand Caravan Cargo Van"), (3, "Journey"), (3, "Magnum"), (3, "Nitro"), (3, "Ram 1500"), (3, "Ram 2500"), (3, "Ram 3500"), (3, "Ram SRT-10"), (3, "Sprinter"), (3, "SX 2.0"), (3, "Viper"), (4, "Cherokee"), (4, "Commander"), (4, "Compass"), (4, "Gladiator"), (4, "Grand Cherokee"), (4, "Cherokee"), (4, "Liberty"), (4, "Cherokee"), (4, "Patriot"), (4, "Renegade"), (4, "TJ"), (4, "Cherokee"), (4, "Wrangler"), (4, "Wrangler Unlimited"), (5, "1500"), (5, "1500 Classic"), (5, "2500"), (5, "3500"), (5, "Dakota"), (5, "Fourgon Cargo"), (5, "Fourgonnette de tourisme ProMaster City"), (5, "ProMaster City Fourgonnette utilitaire"), (5, "ProMaster Fourgon vitré"), (5, "ProMaster Fourgonnette utilitaire"), (6, "Bronco"), (6, "E-150"), (6, "E-350"), (6, "Escape"), (6, "EcoSport"), (6, "Edge")
, (6, "Escape Hybride"), (6, "Escape ZX2"), (6, "Explorer Sport"), (6, "Explorer"), (6, "F-150"), (6, "Fiesta"), (6, "Focus"), (6, "Focus électrique"), (6, "Fusion"), (6, "Five Hundred"), (6, "Fourgon de transport Windstar"), (6, "Mustang"), (6, "Ranger"), (6, "GT"), (6, "Taurus"), (6, "Thunderbird"), (6, "Windstar"), (7, "Aviator"), (7, "Aviator"), (7, "Continental"), (7, "Corsair"), (7, "LS"), (7, "Mark LT"), (7, "MKC"), (7, "MKS"), (7, "MKT"), (7, "MKX"), (7, "MKZ"), (7, "Nautilus"), (7, "Nautilus L"), (7, "Town Car"), (7, "Zephyr"), (8, "Avanlanche"), (8, "Aveo"), (8, "Blazer"), (8, "Camaro"), (8, "Cavalier"), (8, "Cobalt"), (8, "Cruze"), (8, "Corvette"), (8, "Colorado"), (8, "Epica"), (8, "Equinox"), (8, "Fourgonnette Astro Tourisme"), (8, "Fourgonnette Astro Utilitaire"), (8, "Fourgonnette Express Tourisme"), (8, "Fourgonnette Express Utilitaire"), (8, "HHR"), (8, "Impala"), (8, "Malibu"), (8, "Malibu Limited") , (8, "Malibu Maxx"), (8, "Metro"), (8, "Monte Carlo"), (8, "Optra"), (8, "Orlando"), (8, "S-10"), (8, "Silverado 1500"), (8, "Silverado 1500 Classic"), (8, "Silverado 1500 LD"), (8, "Silverado 1500HD"), (8, "Silverado 1500HD Classic"), (8, "Silverado 2500"), (8, "Silverado 2500HD"), (8, "Silverado 2500HD Classic"), (8, "Silverado 3500"), (8, "Silverado 3500 Classic"), (8, "Silverado 3500HD"), (8, "Sonic"), (8, "Spark"), (8, "Silverado 2500"), (8, "Suburban"), (8, "Tahoe"), (8, "Silverado 2500"), (8, "Tracker"), (8, "Trailblazer"), (8, "Silverado 2500"), (8, "Traverse"), (8, "Trax"), (8, "Uplander"), (8, "Venture"), (8, "Volt"), (9, "Acadia"), (9, "Acadia"), (9, "Envoy"), (9, "Fourgonnette Safari tourisme"), (9, "Fourgonnette Safari utilitaire"), (9, "Fourgonnette Savana tourisme"), (9, "Fourgonnette Savana utilitaire"), (9, "Jimmy"), (9, "Sierra 1500"), (9, "Sierra 1500 Classic"), (9, "Sierra 1500 Limited"), (9, "Sierra 1500HD"), (9, "Sierra 2500"), (9, "Sierra 2500HD"), (9, "Sierra 2500HD Classic"), (9, "Sierra 3500"), (9, "Sierra 3500HD"), (9, "Sonoma"), (9, "Terrain"), (9, "Yukon"), (9, "Yukon XL"), (10, "Allure"), (10, "Century"), (10, "Enclave"), (10, "Encore"), (10, "Encore GX"), (10, "Envision"), (10, "LaCrosse"), (10, "LeSabre"), (10, "Lucerne"), (10, "Park Avenue"), (10, "Rainier"), (10, "Regal"), (10, "Regal Sportback"), (10, "Rendezvous"), (10, "Terraza"), (10, "Verano"), (11, "ATS"), (11, "ATS-V berline"), (11, "Catera"), (11, "CT4"), (11, "CT4-V"), (11, "CT5"), (11, "CT5-V"), (11, "CT6"), (11, "CT6-V"), (11, "CTS"), (11, "CTS-V"), (11, "DeVille"), (11, "DTS"), (11, "ElDorado"), (11, "ELR"), (11, "Escalade"), (11, "Seville"), (11, "DeVille"), (11, "SRX"), (11, "STS"), (11, "STS-V"), (11, "XLR"), (11, "XLR-V"), (11, "XT4"), (11, "XT5"), (11, "XT6"), (11, "XTS"), (12, "Accord Hybride"), (12, "Berline Accord"), (12, "Accord Hybride"), (12, "Civic"), (12, "Civic Hybride"), (12, "Civic Type R"), (12, "CR-V"), (12, "CR-Z"), (12, "Element"), (12, "Fit"), (12, "HR-V"), (12, "Insight"), (12, "Odyssey"), (12, "Passeport"), (12, "Pilot"), (12, "Prelude"), (13, "CL"), (13, "CSX"), (13, "EL"), (13, "ILX"), (13, "Integra"), (13, "MDX"), (13, "NSX"), (13, "RDX"), (13, "RL"), (13, "RLX"), (13, "RSX"), (13, "TL"), (13, "TLX"), (13, "TSX"), (14, "4Runner"), (14, "Avalon"), (14, "C-HR"), (14, "Camry"), (14, "Camry Hybrid"), (14, "Camry Solara"), (14, "Celica"), (14, "Corolla"), (14, "Echo"), (14, "Highlander"), (14, "Matrix"), (14, "Prius"), (14, "RAV4"), (14, "4Runner"), (14, "Sienna"), (14, "Tacoma"), (14, "Tundra"), (14, "Yaris"), (15, "CT 200h"), (15, "ES"), (15, "GS"), (15, "GS F"), (15, "GX"), (15, "HS 250h"), (15, "IS"), (15, "IS F"), (15, "LC"), (15, "LS"), (15, "LX"), (15, "NX"), (15, "RC"), (15, "RC F"), (15, "SC 430"), (15, "UX"), (16, "Cooper"), (16, "Cooper Clubman"), (16, "Cooper Countryman"), (16, "Cooper Coupé"), (16, "Cooper décapotable"), (16, "Cooper Paceman"), (16, "Cooper Roadster"), (16, "Cooper toit rigide"), (16, "Cooper toit rigide 5 portes"), (17, "1 série M"), (17, "i3"), (17, "i8"), (17, "M2"), (17, "M3"), (17, "M4"), (17, "M5"), (17, "M6"), (17, "M8"), (17, "Série 1"), (17, "Série 2"), (17, "Série 3"), (17, "Série 3 Gran Tourismo"), (17, "Série 4"), (17, "Série 5"), (17, "Série 5 Gran Tourismo"), (17, "Série 6"), (17, "Série 7"), (17, "Série 8"), (17, "X1"), (17, "X2"), (17, "X3"), (17, "X3 M"), (17, "X4"), (17, "X4 M"), (17, "X5") , (17, "X5 M"), (17, "X6"), (17, "X6 M"), (17, "X7"), (17, "Z3"), (17, "Z4"), (17, "Z8"), (18, "Accent"), (18, "Elantra"), (18, "Elantra GT"), (18, "Elantra Hybride"), (18, "Entourage"), (18, "Equus"), (18, "Genesis"), (18, "Ionic électrique"), (18, "IONIC électrique Plus"), (18, "Ionic hybride"), (18, "Kona"), (18, "Kona électrique"), (18, "NEXO"), (18, "Palisade"), (18, "Santa Fe"), (18, "Santa Fe Hybride"), (18, "Santa Fe XL"), (18, "Sonata"), (18, "Sonata hybrid"), (18, "Sonata hybride rechargeable"), (18, "Tiburon"), (18, "Tucson"), (18, "Tucson Hybrid"), (18, "Veloster"), (18, "Veloster N"), (18, "Venue"), (18, "Veracruz"), (18, "XG 300"), (18, "XG350"), (19, "E-PACE"), (19, "F-PACE"), (19, "F-TYPE"), (19, "I-PACE"), (19, "TYPE S"), (19, "X-TYPE"), (19, "XE"), (19, "XF"), (19, "XJ"), (19, "XK"), (20, "Defender"), (20, "Discovery"), (20, "Discovery Sport"), (20, "Freelander"), (20, "LR2"), (20, "LR3"), (20, "LR4"), (20, "Range Rover"), (20, "Range Rover Evoque"), (20, "Range Rover Sport"), (20, "Range Rover Velar"), (21, "Amanti"), (21, "Borrego"), (21, "Cadenza"), (21, "Carnival"), (21, "Forte"), (21, "Forte Koup"), (21, "Forte5"), (21, "K5"), (21, "K900"), (21, "Magentis"), (21, "Niro"), (21, "Niro électrique"), (21, "Niro hybride rechargeable"), (21, "Optima"), (21, "Optima Hybride"), (21, "Optima Hybride Enfichable"), (21, "Optima hybride rechargeable"), (21, "Rio"), (21, "Rio 5 portes"), (21, "Rondo"), (21, "Sedona"), (21, "Seltos"), (21, "Sephia"), (21, "Sorento"), (21, "Soul"), (21, "Soul EV"), (21, "Spectra"), (21, "Spectra5"), (21, "Sportage"), (21, "Stinger"), (21, "Telluride"), (22, "626"), (22, "B-Series"), (22, "CX-3"), (22, "CX-30"), (22, "CX-5"), (22, "CX-7"), (22, "CX-9"), (22, "Mazda2"), (22, "Mazda3"), (22, "Mazda3 Sport"), (22, "Mazda5"), (22, "Mazda6"), (22, "Millenia"), (22, "MPV"), (22, "MX-5"), (22, "MX-5 RF"), (22, "Protege"), (22, "Protege5"), (22, "RX-8"), (22, "Tribute"), (23, "Classe A"), (23, "Classe CLA"), (23, "Classe GLA"), (23, "Classe GLK"), (23, "Classe-B"), (23, "Classe-C"), (23, "Classe-CL"), (23, "Classe-CLK"), (23, "Classe-CLS"), (23, "Classe-E"), (23, "Classe-G"), (23, "Classe-GL"), (23, "Classe-M"), (23, "Classe-R"), (23, "Classe-S"), (23, "Classe-SL"), (23, "Classe-SLK"), (23, "GLB"), (23, "GLB-Class"), (23, "GLC"), (23, "GLE"), (23, "GLS"), (23, "GT AMG"), (23, "Metris fourgonnette de tourisme"), (23, "Metris fourgonnette utilitaire"), (23, "SLC"), (23, "SLC AMG"), (23, "Sprinter fourgonnette d'équipe"), (23, "Sprinter fourgonnette de tourisme"), (23, "Sprinter fourgonnette utilitaire"), (24, "Diamante"), (24, "Eclipse"), (24, "Eclipse Cross"), (24, "Endeavor"), (24, "Galant"), (24, "i-MiEV"), (24, "Lancer"), (24, "Lancer Evolution"), (24, "Mirage"), (24, "Mirage G4"), (24, "Montero"), (24, "Outlander"), (24, "Outlander rechargeable"), (24, "RVR"), (25, "350Z"), (25, "370Z"), (25, "Altima"), (25, "Armada"), (25, "JUKE"), (25, "Kicks"), (25, "LEAF"), (25, "Maxima"), (25, "Micra"), (25, "Murano"), (25, "NV Cargo"), (25, "NV Tourisme"), (25, "NV200 Cargo compact"), (25, "Pathfinder"), (25, "Quashqai"), (25, "Rogue"), (25, "Sentra"), (25, "Titan"), (25, "Titan XD"), (25, "Versa"), (25, "Versa Note"), (25, "X-Trail"), (25, "Xterra"), (26, "Xterra");
INSERT INTO ville(ville) VALUES 
("Calgary"), ("Edmonton"), ("Vancouver"), ("Victoria"), ("Charlottetown"), ("Winipeg"), ("Fredericton"), ("Moncton"), ("Halifax"), ("Toronto"), ("Regina"), ("Saskatoon"), ("Saint-Jean de Terre-Neuve"), ("Iqualuit"), ("Yellowknife"), ("Whitehorse"), ("Montréal"), ("Québec");
INSERT INTO province(province) VALUES 
("Alberta"), ("Colombie-Britannique"), ("Île du Prince-Édouard"), ("Manitoba"), ("Nouveau-Brunswick"), ("Nouvelle-Écosse"), ("Ontario"), ("Québec"), ("Saskatchewan"), ("Terre-Neuve"), ("Nunavut"), ("Territoires du Nord-Ouest"), ("Yukon");
INSERT INTO typeUtilisateur(typeUtilisateur) VALUES ("Client"),("Employé"), ("Administrateur");
INSERT INTO utilisateur(nomUtilisateur, motPasse, prenom, nomFamille, dateNaissance, noCivique, rue, codePostal, telephone, telephonePortable, courriel,  idTypeUtilisateur, idVille, idProvince) VALUES ("a_jolie", "123456", "Angelina", "Jolie", "1975-06-04", 4545, "Beverly Hills", "90210", "5554443333", "5554443331", "a.jolie@famous.com", 1, 17, 8), ("s_williams", "123456", "Serena", "Williams", "1981-09-26", 4545, "Beverly Hills", "90210", "5554443333", "5554443331", "s.williams@famous.com", 1, 17, 8), ("k_jenner", "123456", "Kylie", "Jenner", "1997-08-10", 4545, "Beverly Hills", "90210", "5554443333", "5554443331", "k.jenner@famous.com", 3, 17, 8);
INSERT INTO connexion(adresseIP, idUtilisateur, dateConnexion) VALUES ("192.168.0.1", 1, "2021-04-18"),("192.168.0.2", 2, "2021-04-18"), ("192.168.0.3", 3, "2021-04-18");
INSERT INTO modePaiement(modePaiement) VALUES ("Espèces"),("Carte crédit"), ("Carte débit"), ("Virement bancaire"), ("Passerelle de paiement");
INSERT INTO expedition(expedition) VALUES ("Livraison locale"),("Ramassage");
INSERT INTO statut(statut) VALUES ("Réservé"),("Facturé");
INSERT INTO commande(idUtilisateur, idModePaiement, idExpedition, idStatut, dateCommande) VALUES (1, 2, 1, 1, "2021-04-20"), (2, 3, 2, 2, "2021-04-20"), (3, 4, 1, 1, "2021-04-22");
INSERT INTO facture(idCommande) VALUES (2);
