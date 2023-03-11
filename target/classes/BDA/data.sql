truncate table client cascade;

truncate table director_2 cascade;

truncate table movie_2 cascade;

truncate table product cascade;

truncate table cart cascade;

SELECT addClient('Feub', 'Feub01', 'fabien.chenal@u-psud.fr');
SELECT addClient('Ouerdia', 'Ouerdia01', 'ouerdia.ait-ader@u-psud.fr');
SELECT addClient('Edouard', 'Edouard01', 'edouard.n15@u-psud.fr');
SELECT addClient('Martin', 'Martin01', 'martin.bidaut@u-psud.fr');

select addMovie(28,'Apocalypse Now', to_date('1979-08-15', 'YYYY-MM-DD'));

select addMovie(105,'Retour vers le futur', to_date('1985-07-03', 'YYYY-MM-DD'));

select addMovie(797,'Persona', to_date('1966-10-18', 'YYYY-MM-DD'));

select addMovie(1398,'Stalker', to_date('1979-05-25', 'YYYY-MM-DD'));

select addMovie(10376,'La Légende du pianiste sur l océan', to_date('1998-10-28', 'YYYY-MM-DD'));

select addMovie(16672,'La Femme des sables', to_date('1964-02-15', 'YYYY-MM-DD'));

select addMovie(18148,'Voyage à Tokyo', to_date('1953-11-03', 'YYYY-MM-DD'));

select addMovie(25237,'Requiem pour un massacre', to_date('1985-09-03', 'YYYY-MM-DD'));

select addMovie(26451,'Enquête sur un citoyen au-dessus de tout soupçon', to_date('1970-10-16', 'YYYY-MM-DD'));

select addMovie(29259,'Le Trou', to_date('1960-03-18', 'YYYY-MM-DD'));

select addMovie(265177,'Mommy', to_date('2014-05-22', 'YYYY-MM-DD'));

select addMovie(290098,'Mademoiselle', to_date('2016-06-01', 'YYYY-MM-DD'));

select addMovie(470044,'The Hate U Give - La Haine qu on donne', to_date('2018-10-19', 'YYYY-MM-DD'));

select addMovie(504253,'Je veux manger ton pancréas', to_date('2018-09-01', 'YYYY-MM-DD'));

select addMovie(508965,'Klaus', to_date('2019-11-08', 'YYYY-MM-DD'));

select addMovie(517814,'Capharnaüm', to_date('2018-10-06', 'YYYY-MM-DD'));

select addMovie(620683,'Minha Mãe é Uma Peça 3: O Filme', to_date('2019-12-26', 'YYYY-MM-DD'));

select addMovie(637920,'La cellule numéro 7', to_date('2019-10-10', 'YYYY-MM-DD'));

select addMovie(755812,'Miraculous World : New York, les héros unis', to_date('2020-09-26', 'YYYY-MM-DD'));

select addMovie(785534,'Des vies froissées', to_date('2021-03-12', 'YYYY-MM-DD'));

select addProduct(28,'DVD',9.99,6);

select addProduct(28,'BR',14.99,4);

select addProduct(105,'DVD',9.99,10);

select addProduct(105,'BR',14.99,3);

select addProduct(797,'BR',14.99,2);

select addProduct(1398,'DVD',9.99,10);

select addProduct(10376,'DVD',9.99,8);

select addProduct(16672,'DVD',9.99,3);

select addProduct(18148,'BR',14.99,6);

select addProduct(25237,'CB',29.99,0);

select addProduct(26451,'DVD',9.99,4);

select addProduct(29259,'CB',29.99,2);

select addProduct(265177,'CB',29.99,9);

select addProduct(290098,'DVD',9.99,1);

select addProduct(290098,'BR',14.99,5);

select addProduct(470044,'DVD',9.99,4);

select addProduct(504253,'DVD',9.99,4);

select addProduct(508965,'DVD',9.99,2);

select addProduct(508965,'BR',14.99,0);

select addProduct(517814,'BR',14.99,2);

select addProduct(637920,'DVD',9.99,6);

select addProduct(755812,'DVD',9.99,8);

select addProduct(755812,'BR',14.99,7);

select addProduct(785534,'DVD',9.99,1);

select addMovie(122,'Le Seigneur des anneaux : Le Retour du roi', to_date('2003-12-01', 'YYYY-MM-DD'));

select addMovie(129,'Le Voyage de Chihiro', to_date('2001-07-20', 'YYYY-MM-DD'));

select addMovie(238,'Le Parrain', to_date('1972-03-14', 'YYYY-MM-DD'));

select addMovie(240,'Le Parrain : 2ème Partie', to_date('1974-12-20', 'YYYY-MM-DD'));

select addMovie(278,'Les Évadés', to_date('1994-09-23', 'YYYY-MM-DD'));

select addMovie(389,'Douze Hommes en colère', to_date('1957-04-10', 'YYYY-MM-DD'));

select addMovie(424,'La Liste de Schindler', to_date('1993-11-30', 'YYYY-MM-DD'));

select addMovie(497,'La Ligne verte', to_date('1999-12-10', 'YYYY-MM-DD'));

select addMovie(680,'Pulp Fiction', to_date('1994-09-10', 'YYYY-MM-DD'));

select addMovie(19404,'Dilwale Dulhania Le Jayenge', to_date('1995-10-20', 'YYYY-MM-DD'));

select addMovie(372058,'Your Name.', to_date('2016-08-26', 'YYYY-MM-DD'));

select addMovie(441130,'Le Peuple loup', to_date('2020-10-26', 'YYYY-MM-DD'));

select addMovie(447362,'Life in a Year', to_date('2020-11-27', 'YYYY-MM-DD'));

select addMovie(496243,'Parasite', to_date('2019-05-30', 'YYYY-MM-DD'));

select addMovie(556574,'Hamilton', to_date('2020-07-03', 'YYYY-MM-DD'));

select addMovie(592350,'My Hero Academia : Heroes Rising', to_date('2019-12-20', 'YYYY-MM-DD'));

select addMovie(696374,'Gabriel s Inferno', to_date('2020-05-29', 'YYYY-MM-DD'));

select addMovie(724089,'Gabriel s Inferno Part II', to_date('2020-07-31', 'YYYY-MM-DD'));

select addMovie(761053,'Gabriel s Inferno Part III', to_date('2020-11-19', 'YYYY-MM-DD'));

select addMovie(791373,'Zack Snyder s Justice League', to_date('2021-03-18', 'YYYY-MM-DD'));

select addProduct(129,'DVD',9.99,10);

select addProduct(238,'DVD',9.99,5);

select addProduct(278,'DVD',9.99,5);

select addProduct(389,'DVD',9.99,5);

select addProduct(389,'BR',14.99,9);

select addProduct(424,'DVD',9.99,10);

select addProduct(424,'BR',14.99,7);

select addProduct(497,'CB',29.99,6);

select addProduct(680,'DVD',9.99,9);

select addProduct(441130,'DVD',9.99,2);

select addProduct(441130,'BR',14.99,7);

select addProduct(447362,'CB',29.99,1);

select addProduct(496243,'DVD',9.99,7);

select addProduct(496243,'BR',14.99,6);

select addProduct(592350,'DVD',9.99,8);

select addProduct(696374,'DVD',9.99,5);

select addMovie(101,'Léon', to_date('1994-09-14', 'YYYY-MM-DD'));

select addMovie(120,'Le Seigneur des anneaux : La Communauté de l anneau', to_date('2001-12-18', 'YYYY-MM-DD'));

select addMovie(121,'Le Seigneur des anneaux : Les Deux Tours', to_date('2002-12-18', 'YYYY-MM-DD'));

select addMovie(128,'Princesse Mononoké', to_date('1997-07-12', 'YYYY-MM-DD'));

select addMovie(207,'Le Cercle des poètes disparus', to_date('1989-06-02', 'YYYY-MM-DD'));

select addMovie(274,'Le Silence des agneaux', to_date('1991-02-01', 'YYYY-MM-DD'));

select addMovie(335,'Il était une fois dans l Ouest', to_date('1968-12-21', 'YYYY-MM-DD'));

select addMovie(567,'Fenêtre sur cour', to_date('1954-09-01', 'YYYY-MM-DD'));

select addMovie(807,'Seven', to_date('1995-09-22', 'YYYY-MM-DD'));

select addMovie(975,'Les Sentiers de la gloire', to_date('1957-10-25', 'YYYY-MM-DD'));

select addMovie(3082,'Les Temps modernes', to_date('1936-02-11', 'YYYY-MM-DD'));

select addMovie(12493,'Entre le ciel et l enfer', to_date('1963-03-01', 'YYYY-MM-DD'));

select addMovie(20532,'L Intendant Sanshô', to_date('1954-03-31', 'YYYY-MM-DD'));

select addMovie(27205,'Inception', to_date('2010-07-15', 'YYYY-MM-DD'));

select addMovie(157336,'Interstellar', to_date('2014-11-05', 'YYYY-MM-DD'));

select addMovie(313106,'Doctor Who : Le jour du Docteur', to_date('2013-11-23', 'YYYY-MM-DD'));

select addMovie(432517,'Sherlock : The Final Problem', to_date('2017-01-15', 'YYYY-MM-DD'));

select addMovie(527641,'À deux mètres de toi', to_date('2019-03-15', 'YYYY-MM-DD'));

select addMovie(600354,'The Father', to_date('2020-12-23', 'YYYY-MM-DD'));

select addMovie(664767,'Mortal Kombat Legends : Scorpion s Revenge', to_date('2020-04-12', 'YYYY-MM-DD'));

select addProduct(101,'DVD',9.99,1);

select addProduct(101,'BR',14.99,9);

select addProduct(120,'DVD',9.99,3);

select addProduct(120,'BR',14.99,6);

select addProduct(121,'CB',29.99,8);

select addProduct(128,'DVD',9.99,8);

select addProduct(207,'BR',14.99,3);

select addProduct(274,'DVD',9.99,6);

select addProduct(274,'BR',14.99,1);

select addProduct(335,'DVD',9.99,4);

select addProduct(567,'DVD',9.99,9);

select addProduct(567,'BR',14.99,6);

select addProduct(807,'BR',14.99,9);

select addProduct(975,'DVD',9.99,9);

select addProduct(975,'BR',14.99,8);

select addProduct(3082,'CB',29.99,5);

select addProduct(12493,'DVD',9.99,0);

select addProduct(27205,'CB',29.99,0);

select addProduct(157336,'DVD',9.99,0);

select addProduct(157336,'BR',14.99,4);

select addProduct(313106,'CB',29.99,7);

select addProduct(432517,'BR',14.99,3);

select addProduct(527641,'BR',14.99,8);

select addProduct(600354,'DVD',9.99,7);

select addProduct(664767,'DVD',9.99,4);

select addMovie(73,'American History X', to_date('1998-10-30', 'YYYY-MM-DD'));

select addMovie(423,'Le Pianiste', to_date('2002-09-17', 'YYYY-MM-DD'));

select addMovie(599,'Boulevard du crépuscule', to_date('1950-08-10', 'YYYY-MM-DD'));

select addMovie(901,'Les Lumières de la ville', to_date('1931-02-01', 'YYYY-MM-DD'));

select addMovie(914,'Le Dictateur', to_date('1940-10-23', 'YYYY-MM-DD'));

select addMovie(1891,'L Empire contre-attaque', to_date('1980-05-20', 'YYYY-MM-DD'));

select addMovie(3782,'Vivre', to_date('1952-10-09', 'YYYY-MM-DD'));

select addMovie(4935,'Le Château ambulant', to_date('2004-11-19', 'YYYY-MM-DD'));

select addMovie(12477,'Le Tombeau des lucioles', to_date('1988-04-16', 'YYYY-MM-DD'));

select addMovie(14537,'Harakiri', to_date('1962-09-15', 'YYYY-MM-DD'));

select addMovie(18491,'Neon Genesis Evangelion : The End of Evangelion', to_date('1997-07-19', 'YYYY-MM-DD'));

select addMovie(42269,'Nous nous sommes tant aimés !', to_date('1974-12-21', 'YYYY-MM-DD'));

select addMovie(92321,'Vers la forêt des lucioles', to_date('2011-09-17', 'YYYY-MM-DD'));

select addMovie(244786,'Whiplash', to_date('2014-10-10', 'YYYY-MM-DD'));

select addMovie(324857,'Spider-Man : New Generation', to_date('2018-12-06', 'YYYY-MM-DD'));

select addMovie(378064,'Silent Voice', to_date('2016-09-17', 'YYYY-MM-DD'));

select addMovie(476292,'Maquia : When the promised Flower blooms', to_date('2018-02-24', 'YYYY-MM-DD'));

select addMovie(522924,'Dans les yeux d Enzo', to_date('2019-08-08', 'YYYY-MM-DD'));

select addMovie(635302,'Demon Slayer : Le train de l infini', to_date('2020-10-16', 'YYYY-MM-DD'));

select addMovie(640344,'Me contro Te: Il film - La vendetta del Signor S', to_date('2020-01-17', 'YYYY-MM-DD'));

select addProduct(73,'BR',14.99,3);

select addProduct(423,'CB',29.99,3);

select addProduct(599,'CB',29.99,3);

select addProduct(914,'DVD',9.99,6);

select addProduct(3782,'DVD',9.99,4);

select addProduct(3782,'BR',14.99,1);

select addProduct(4935,'CB',29.99,5);

select addProduct(12477,'BR',14.99,4);

select addProduct(14537,'DVD',9.99,1);

select addProduct(42269,'BR',14.99,5);

select addProduct(92321,'DVD',9.99,5);

select addProduct(92321,'BR',14.99,1);

select addProduct(244786,'BR',14.99,10);

select addProduct(324857,'CB',29.99,3);

select addProduct(378064,'DVD',9.99,5);

select addProduct(378064,'BR',14.99,3);

select addProduct(522924,'BR',14.99,9);

select addProduct(635302,'BR',14.99,3);

select addProduct(640344,'DVD',9.99,8);

select addMovie(13,'Forrest Gump', to_date('1994-07-06', 'YYYY-MM-DD'));

select addMovie(155,'The Dark Knight : Le Chevalier noir', to_date('2008-07-16', 'YYYY-MM-DD'));

select addMovie(311,'Il était une fois en Amérique', to_date('1984-05-23', 'YYYY-MM-DD'));

select addMovie(346,'Les Sept Samouraïs', to_date('1954-04-26', 'YYYY-MM-DD'));

select addMovie(429,'Le Bon, la Brute et le Truand', to_date('1966-12-23', 'YYYY-MM-DD'));

select addMovie(510,'Vol au-dessus d un nid de coucou', to_date('1975-11-18', 'YYYY-MM-DD'));

select addMovie(539,'Psychose', to_date('1960-06-22', 'YYYY-MM-DD'));

select addMovie(550,'Fight Club', to_date('1999-10-15', 'YYYY-MM-DD'));

select addMovie(598,'La Cité de Dieu', to_date('2002-02-05', 'YYYY-MM-DD'));

select addMovie(637,'La vie est belle', to_date('1997-12-20', 'YYYY-MM-DD'));

select addMovie(769,'Les Affranchis', to_date('1990-09-12', 'YYYY-MM-DD'));

select addMovie(11216,'Cinéma Paradiso', to_date('1988-11-17', 'YYYY-MM-DD'));

select addMovie(40096,'Will A Dog', to_date('2000-09-15', 'YYYY-MM-DD'));

select addMovie(532067,'Kono Subarashii Sekai ni Shukufuku wo ! : Kurenai Densetsu', to_date('2019-08-30', 'YYYY-MM-DD'));

select addMovie(537061,'Steven Universe : Le Film', to_date('2019-09-02', 'YYYY-MM-DD'));

select addMovie(572154,'Rascal Does Not Dream of a Dreaming Girl', to_date('2019-06-15', 'YYYY-MM-DD'));

select addMovie(615457,'Nobody', to_date('2021-03-26', 'YYYY-MM-DD'));

select addMovie(618344,'Justice League Dark: Apokolips War', to_date('2020-05-05', 'YYYY-MM-DD'));

select addMovie(630566,'Clouds', to_date('2020-10-09', 'YYYY-MM-DD'));

select addMovie(644479,'Dedicada a mi ex', to_date('2019-11-01', 'YYYY-MM-DD'));

select addProduct(13,'BR',14.99,10);

select addProduct(346,'DVD',9.99,0);

select addProduct(429,'DVD',9.99,10);

select addProduct(510,'CB',29.99,9);

select addProduct(539,'CB',29.99,1);

select addProduct(598,'DVD',9.99,10);

select addProduct(637,'CB',29.99,0);

select addProduct(769,'DVD',9.99,1);

select addProduct(769,'BR',14.99,1);

select addProduct(11216,'DVD',9.99,7);

select addProduct(11216,'BR',14.99,7);

select addProduct(40096,'CB',29.99,10);

select addProduct(532067,'CB',29.99,9);

select addProduct(537061,'DVD',9.99,5);

select addProduct(572154,'DVD',9.99,10);

select addProduct(572154,'BR',14.99,5);

select addProduct(615457,'BR',14.99,8);

select addProduct(618344,'DVD',9.99,10);

select addProduct(630566,'BR',14.99,5);

select addProduct(644479,'DVD',9.99,7);

select addProduct(644479,'BR',14.99,5);

select addDirector(755812,1565301,'Thomas Astruc');

select addDetails(29259,131,'fr','/ih2IppwsMkCyHazLJKOMdpwFT37.jpg', 'Accusé de tentative de meurtre sur la personne de sa femme, Claude Gaspard est enfermé à la prison de la Santé. Ses quatre compagnons de cellule lui font part de leur désir d évasion et creusent, avec une énergie farouche, un tunnel qui les mènera à la liberté. Leur plan aboutira-t-il ?');

select addDirector(290098,10099,'Park Chan-wook');

select addDirector(18148,95501,'Yasujirō Ozu');

select addDetails(10376,165,'it','/tamGferK68ppVyOrM8jiqF5vbjJ.jpg', 'A bord du "Virginian", paquebot de croisière, Danny, un mécanicien, découvre un nouveau-né abandonné dans la salle de bal désertée. Il décide de l élever et le baptise du nom de 1900. À la mort de Danny, l enfant, adopté par l équipage, grandit sur le navire, voguant d un continent à l autre. Un jour, 1900 s assoit au piano et révèle un don extraordinaire pour la musique. Adulte, il devient un pianiste virtuose. Les plus grands jazzmen lui rendent visite. 1900 refuse de quitter le navire. Jusqu au jour où celui-ci est promis à la démolition.');

select addDetails(105,116,'en','/y9bs2N5rEM51YBXbU7N5PaXJc6W.jpg', '1985. Le jeune Marty McFly mène une existence anonyme auprès de sa petite amie Jennifer, seulement troublée par sa famille en crise et un proviseur qui serait ravi de l’expulser du lycée. Ami de l’excentrique professeur Emmett Brown, il l’accompagne un soir tester sa nouvelle expérience : le voyage dans le temps via une DeLorean modifiée. La démonstration tourne mal : des trafiquants d’armes débarquent et assassinent le scientifique. Marty se réfugie dans la voiture et se retrouve transporté en 1955. Là, il empêche malgré lui la rencontre de ses parents, et doit tout faire pour les remettre ensemble, sous peine de ne pouvoir exister…');

select addDetails(290098,145,'ko','/z4cpSCLQLbe2TwDZhmf8uzsKUMj.jpg', 'Corée. Années 30, pendant la colonisation japonaise. Une jeune femme est engagée comme servante d’une riche japonaise, vivant recluse dans un immense manoir sous la coupe d’un oncle tyrannique. Mais Sookee a un secret. Avec l’aide d’un escroc se faisant passer pour un comte japonais, ils ont d’autres plans pour Hideko…');

select addDirector(29259,103393,'Jacques Becker');

select addDirector(785534,1876416,'Can Ulkay');

select addDetails(620683,111,'pt','/zw77BFPGJ73Lig8GwRzYj1XHq53.jpg', '');

select addDirector(25237,93406,'Elem Klimov');

select addDirector(637920,230767,'Mehmet Ada Öztekin');

select addDirector(620683,1706418,'Susana Garcia');

select addDetails(265177,138,'fr','/zR1oHk9seg14nBF7JqaYeOeeTeY.jpg', 'Une veuve mono-parentale hérite de la garde de son fils, un adolescent profondément turbulent. Ensemble, ils tentent de joindre les deux bouts, notamment grâce à l’aide inattendue de la mystérieuse voisine d’en face, Kyla. Tous les trois, ils retrouvent une forme d’équilibre et, bientôt, d’espoir.');

select addDetails(18148,126,'ja','/aVD5JlfkuSbomjv1yjs2E51CBDP.jpg', 'Un couple de personnes âgées rend visite à leurs enfants à Tokyo. D abord reçus avec les égards qui leur sont dûs, ils deviennent bientôt dérangeants dans leur vie quotidienne.');

select addDetails(785534,97,'tr','/b19hre46MPSmj5K43DXl0WrYvIz.jpg', 'Dans les rues d Istanbul, Mehmet, qui gère la déchetterie du quartier, prend un petit garçon sous son aile et doit bientôt affronter le traumatisme de sa propre enfance.');

select addDetails(470044,132,'en','/7B3F6yELtvQvUA2xLk6Uq8VH0Cs.jpg', 'Starr est témoin de la mort de son meilleur ami d’enfance, Khalil, tué par balles par un officier de police. Confrontée aux nombreuses pressions de sa communauté, Starr doit trouver sa voix et se battre pour ce qui est juste.');

select addDetails(755812,52,'fr','/kIHgjAkuzvKBnmdstpBOo4AfZah.jpg', 'Pour célébrer la semaine de l amitié franco-américaine, Marinette et toute sa classe se rendent à New-York, la ville des super-héros. C’est là une occasion rêvée pour le groupe d’amis collégiens de resserrer leurs liens, mais aussi pour Marinette et Adrien de se rapprocher davantage puisque, contre toute attente, Gabriel Agreste a accepté que son fils prenne part à ce voyage ! Il faut dire que Gabriel a prévu lui aussi de se rendre secrètement à New York car il est particulièrement intéressé par l’exposition inaugurale d’un bijou précieux : un collier portant une griffe d’aigle que Lafayette aurait offert à Georges Washington en signe d’amitié entre La France et Les Etats-Unis… un bijou qui pourrait être doté de pouvoirs convoités par Papillon…');

select addDetails(25237,136,'ru','/8aDq6vxmG6clcp2vywWltuXDUYi.jpg', 'Pendant la Seconde Guerre mondiale, Fliora, jeune garçon d un village de Biélorussie occupé par les troupes nazies, s engage, bien que trop jeune, chez les partisans. Il va découvrir l amour, la fraternité, la souffrance, la guerre.');

select addDetails(504253,108,'ja','/9JrICtsOZWKVGErvsb2TDVvlYk1.jpg', 'Sakura est une lycéenne populaire et pleine de vie. Tout l’opposé d un de ses camarades solitaires qui, tombant par mégarde sur son journal intime, découvre qu’elle n’a plus que quelques mois à vivre... Unis par ce secret, ils se rapprochent et s apprivoisent. Sakura lui fait alors une proposition : vivre ensemble toute une vie en accéléré, le temps d’un printemps.');

select addDirector(470044,66121,'George Tillman, Jr.');

select addDirector(16672,96801,'Hiroshi Teshigahara');

select addDetails(797,85,'sv','/bjPo1GDN1DaXcg8ecSzwLTLdbbv.jpg', 'Elizabeth Vogler, célèbre actrice au théâtre, s interrompt brusquement au milieu d une tirade de la pièce Électre. Elle ne parlera plus. D abord soignée dans une clinique, son médecin l envoie se reposer au bord de la mer en compagnie d Alma, une jeune infirmière.  Les deux femmes se lient d’amitié. Le silence permanent d Elizabeth conduit Alma à parler et à se confier. La découverte d’une lettre dans laquelle Elizabeth divulgue cette confession à son médecin provoque alors une crise relationnelle profonde.');

select addDetails(28,155,'en','/scaiAT7I2KZ2GAeMvoU6Ro1515J.jpg', 'L’état‐major américain confie au jeune capitaine Willard une mission secrète : Éliminer le colonel Kurtz, qui s’est constitué, au‐delà de la frontière cambodgienne, un royaume personnel sur lequel il règne par la violence et la terreur.');

select addDirector(797,6648,'Ingmar Bergman');

select addDetails(424,195,'en','/vHgf8NE7tXV4DJPEnqVLZDof8fT.jpg', 'Évocation des années de guerre d’Oskar Schindler, fils d’industriel d’origine autrichienne rentré à Cracovie en 1939 avec les troupes allemandes. Il va, tout au long de la guerre, protéger des juifs en les faisant travailler dans sa fabrique et en 1944 sauver 800 hommes et 300 femmes du camp d’extermination d’Auschwitz‐Birkenau.');

select addDirector(696374,935563,'Tosca Musk');

select addDetails(19404,180,'hi','/2CAL2433ZeIihfX1Hb2139CX0pW.jpg', 'Chaudhry Baldev Singh est un père de famille installé à Londres. Un jour, il reçoit une lettre d Inde : son meilleur ami lui écrit, lui rappellant la promesse qu il avait faite deux décennies auparavant de marier leurs enfants. Chaudhry décide alors de tenir sa promesse, mais donne toutefois un mois libre à sa fille tout avant qu elle ne s en aille en Inde se marier...');

select addDetails(129,126,'ja','/12TAqK0AUgdcYE9ZYZ9r7ASbH5Q.jpg', 'Chihiro, 10 ans, a tout d’une petite fille capricieuse. Elle s’apprête à emménager avec ses parents dans une nouvelle demeure. Sur la route, la petite famille se retrouve face à un immense bâtiment rouge au centre duquel s’ouvre un long tunnel. De l’autre côté du passage se dresse une ville fantôme. Les parents découvrent dans un restaurant désert de nombreux mets succulents et ne tardent pas à se jeter dessus. Ils se retrouvent alors transformés en cochons. Prise de panique, Chihiro s’enfuit et se dématérialise progressivement. L’énigmatique Haku se charge de lui expliquer le fonctionnement de l’univers dans lequel elle vient de pénétrer. Pour sauver ses parents, la fillette va devoir faire face à la terrible sorcière Yubaba, qui arbore les traits d’une harpie méphistophélique.');

select addDetails(496243,135,'ko','/u5nJZhBrzJCwYkpRg3QgxyKtrkD.jpg', 'Toute la famille de Ki-taek est au chômage. Elle s’intéresse particulièrement au train de vie de la richissime famille Park. Mais un incident se produit et les 2 familles se retrouvent mêlées, sans le savoir, à une bien étrange histoire…');

select addDetails(696374,122,'en','/oyG9TL7FcRP4EZ9Vid6uKzwdndz.jpg', 'Une exploration intrigante et pécheresse de la séduction, de l amour interdit et de la rédemption, Gabriel s Inferno est un récit captivant et follement passionné de la fuite d un homme de son propre enfer alors qu il tente de gagner l impossible - le pardon et l amour.');

select addDirector(724089,935563,'Tosca Musk');

select addDirector(10376,65314,'Giuseppe Tornatore');

select addDirector(504253,1938744,'Shinichiro Ushijima');

select addDirector(265177,143593,'Xavier Dolan');

select addDirector(28,1776,'Francis Ford Coppola');

select addDirector(238,1776,'Francis Ford Coppola');

select addDetails(680,154,'en','/4TBdF7nFw2aKNM0gPOlDNq3v3se.jpg', 'L’odyssée sanglante et burlesque de petits malfrats dans la jungle d’Hollywood : deux petits tueurs, un dangereux gangster marié à une camée, un boxeur roublard, des prêteurs sur gages sadiques, un caïd élégant et dévoué, un dealer bon mari et de deux tourtereaux à la gâchette facile.');

select addDetails(238,177,'en','/wnDNKCeBQzioXYQrXcSyrmRHVxf.jpg', 'Le chef d’oeuvre à grand spectacle de Francis Ford Coppola met en vedette Marlon Brando* dans le rôle oscarisé du patriarche de la famille Corleone. Son interprétation légendaire est l’un des grands moments du septième art. Le réalisateur Coppola nous décrit l’inquiétante ascension du clan sicilien et la façon dont la Famille réussit in extremis à conserver sa suprêmatie aux Etats-Unis. Il met magistralement en exergue le parfait équilibre entre des liens familiaux intenses et un affairisme criminel sinistre. D’après le best-seller de Mario Puzo et avec Al Pacino, James Caan et Robert Duvall dans des rôles qui les ont propulsés vers la gloire. Ce film brillant et virulent a recueilli 10 nominations aux Oscars® et fut lauréat de 3 Oscars® dont celui du Meilleur Film en 1972.');

select addDetails(389,95,'en','/bPImGSvZtG2tvsJ9bVLrIECRDnB.jpg', 'Un jeune homme d origine modeste est accusé du meurtre de son père et risque la peine de mort. Le jury composé de douze hommes se retire pour délibérer et procède immédiatement à un vote : onze votent coupable, or la décision doit être prise à l unanimité. Le juré qui a voté non-coupable, sommé de se justifier, explique qu il a un doute et que la vie d un homme mérite quelques heures de discussion. Il s emploie alors à les convaincre un par un.');

select addDetails(122,201,'en','/qjOtgKki6CaVI9vIfEqWwUiMscA.jpg', 'Les armées de Sauron ont attaqué Minas Tirith, la capitale de Gondor.  Jamais ce royaume autrefois puissant n a eu autant besoin de son roi.  Mais Aragorn trouvera-t-il en lui la volonté d accomplir sa destinée ?  Tandis que Gandalf s efforce de soutenir les forces brisées de Gondor, Théoden exhorte les guerriers de Rohan à se joindre au combat.  Mais malgré leur courage et leur loyauté, les forces des Hommes ne sont pas de taille à lutter contre les innombrables légions d ennemis qui s abattent sur le royaume...  Chaque victoire se paye d immenses sacrifices.  Malgré ses pertes, la Communauté se jette dans la bataille pour la vie, ses membres faisant tout pour détourner l attention de Sauron afin de donner à Frodon une chance d accomplir sa quête.  Voyageant à travers les terres ennemies, ce dernier doit se reposer sur Sam et Gollum, tandis que l Anneau continue de le tenter...');

select addDirector(1398,8452,'Andrei Tarkovsky');

select addDetails(637920,132,'tr','/sOfUbzu6OUL5cscGODPdpHn9C1g.jpg', 'Séparé de sa fille, un père avec un handicap mental doit prouver son innocence lorsqu il est arrêté pour le meurtre d une enfant.');

select addDetails(508965,98,'en','/qb0eCUtvi2Rn5etdqFbaYzvIPYn.jpg', 'Un facteur égoïste et un fabricant de jouets solitaire forgent une amitié improbable, apportant la joie à une bourgade sombre et froide qui en a désespérément besoin.');

select addDetails(1398,163,'ru','/91pnITUEwt1GfYy55zA2AZSTSVb.jpg', 'Dans un pays et une époque indéterminés, il existe une zone interdite, fermée et gardée par des miltaires. Elle aurait été créée par la chute d une météorite, il y a bien longtemps. De temps à autre, le stalker, un passeur, se lève le matin et quitte son épouse pour guider à travers la zone le voyageur qui souhaite atteindre la Chambre des désirs, un lieu où les voeux les plus chers sont exaucés. Seul le stalker peut déjouer les nombreuses embûches du parcours. Aujourd hui, un écrivain et un physicien sont les clients du stalker. Il faut tout d abord échapper à la surveillance des gardes pour pénétrer dans la zone, puis avancer au hasard...');

select addDetails(517814,120,'ar','/aGVsSeRWytxiVMos7pxvFyvYy3L.jpg', 'Zain, un garçon de 12 ans, est présenté devant le juge. Le juge : “Pourquoi attaquez-vous vos parents en justice ?” Zain : "Pour m’avoir donné la vie."');

select addDetails(16672,123,'ja','/aNC6v1i4Wtm73dpFWzWmkkd1QyX.jpg', 'Un homme marche dans le désert. Il observe les insectes, les photographie, les ramasse. S étant arrêté pour se reposer, il est accosté par trois villageois qui lui proposent de passer la nuit dans leur village.L homme est escorté jusqu à une fosse au fond de laquelle une femme l accueille et lui offre repas et couche. Pendant la nuit, la femme sort et ramasse le sable qui s écoule des parois. Au petit matin, l échelle de corde a disparu et l homme se rend compte qu il a été fait prisonnier.');

select addDetails(724089,105,'en','/pci1ArYW7oJ2eyTo2NMYEKHHiCP.jpg', 'Le professeur Gabriel Emerson apprend enfin la vérité sur l identité de Julia Mitchell, mais il le réalise un moment trop tard. Julia a fini d attendre que le spécialiste très respecté de Dante se souvienne d elle et ne veut plus rien avoir à faire avec lui. Gabriel peut-il regagner le cœur de Julia avant qu elle ne trouve l amour dans d autres bras ?');

select addDirector(517814,53431,'Nadine Labaki');

select addDetails(441130,103,'en','/luwZWQzAO8nkbogdFa6vKBQgTzM.jpg', 'En Irlande, au temps des superstitions et de la magie, Robyn, une jeune fille de 11 ans, aide son père à chasser la dernière meute de loups. Mais un jour, lors d’une battue en forêt, Robyn rencontre Mebh, petite fille le jour, louve la nuit. Désormais pour Robyn, ayant rejoint elle aussi le peuple des loups, la menace ne vient plus des loups, mais bien des hommes !');

select addDetails(26451,111,'it','/4Nipaddj6dJO9g0rLTqQ1OowHKB.jpg', 'En Italie, au début des années 70, le chef de la brigade criminelle est sur le point d’être promu au poste de directeur de la section politique. Persuadé que ses fonctions le placent au-dessus des lois, il égorge sa maîtresse, Augusta Terzi, au cours de leurs joutes amoureuses. Avec un sang-froid parfait, il met tout en œuvre pour prouver que personne n aura l intelligence, ni même l audace, de le soupçonner et de troubler ainsi la bonne hiérarchie sociale. Il s ingénie à semer des preuves accablantes, relançant l enquête quand celle-ci s égare...');

select addDetails(278,140,'en','/xqfTE9FjwD5vS1A6QnyoMdPQUvh.jpg', 'En 1947, Andy Dufresne, un jeune banquier, est condamné à la prison à vie pour le meurtre de sa femme et de son amant. Ayant beau clamer son innocence, il est emprisonné à Shawshank, le pénitencier le plus sévère de l’État du Maine. Il y fait la rencontre de Red, un noir désabusé, détenu depuis vingt ans. Commence alors une grande histoire d’amitié entre les deux hommes...');

select addDirector(761053,935563,'Tosca Musk');

select addDetails(120,179,'en','/5OPg6M0yHr21Ovs1fni2H1xpKuF.jpg', 'Le jeune et timide Hobbit, Frodon Sacquet, hérite d un anneau. Bien loin d être une simple babiole, il s agit de l Anneau Unique, un instrument de pouvoir absolu qui permettrait à Sauron, le Seigneur des ténèbres, de régner sur la Terre du Milieu et de réduire en esclavage ses peuples. À moins que Frodon, aidé d une Compagnie constituée de Hobbits, d Hommes, d un Magicien, d un Nain, et d un Elfe, ne parvienne à emporter l Anneau à travers la Terre du Milieu jusqu à la Crevasse du Destin, lieu où il a été forgé, et à le détruire pour toujours. Un tel périple signifie s aventurer très loin en Mordor, les terres du Seigneur des ténèbres, où est rassemblée son armée d Orques maléfiques... La Compagnie doit non seulement combattre les forces extérieures du mal mais aussi les dissensions internes et l influence corruptrice qu exerce l Anneau lui-même.');

select addDetails(527641,116,'en','/c71h4tvMrhUK9jENJrOJm5IRuNF.jpg', 'Stella Grant, dix-sept ans, est atteinte par la fibrose kystique. Elle a passé une grande partie de sa vie entre les quatres murs de sa chambre d hôpital. C est dans ce contexte, qu elle tombe amoureuse de Will Newman, également atteint de la mucoviscidose. Leurs états de santé respectifs les empêchent de s approcher trop près l un de l autre. De plus, Stella doit tenter de raisonner son amoureux qui ne veut plus prendre ses traitements médicaux.');

select addDetails(664767,80,'en','/4VlXER3FImHeFuUjBShFamhIp9M.jpg', 'Lord Raiden, protecteur d Earthrealm, doit rassembler dans une bataille ultime les plus grands combattants de son royaume, afin de le défendre du démoniaque Shang Tsung.');

select addDetails(447362,107,'en','/7EuZIYEHLTu1G69maFLwg13u5iB.jpg', 'Un jeune de 17 ans apprend que sa petite-amie n a plus qu une année à vivre.');

select addDirector(567,2636,'Alfred Hitchcock');

select addDirector(447362,586154,'Mitja Okorn');

select addDetails(791373,242,'en','/tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg', 'Bruce Wayne est déterminé à faire en sorte que le sacrifice ultime de Superman ne soit pas vain. Pour cela, avec l aide de Diana Prince, il met en place un plan pour recruter une équipe de métahumains afin de protéger le monde d une menace apocalyptique imminente. La tâche s avère plus difficile qu il ne l imaginait, car chacune des recrues doit faire face aux démons de son passé, et les surpasser, pour se rassembler et former une ligue de héros sans précédent. Désormais unis, Batman, Wonder Woman, Aquaman, Cyborg et Flash réussiront-ils à sauver la planète de Steppenwolf, DeSaad, Darkseid et de leurs terribles intentions ?');

select addDetails(372058,107,'ja','/zyHjvVRgKOt9wgVx4ikp2kGArGF.jpg', 'Mitsuha est une lycéenne, la fille du maire d une petite ville nichée entre les montagnes. Vivant avec sa petite sœur et sa grand-mère, c est une demoiselle franche qui n hésite pas à dire qu elle n a pas envie de participer aux rituels shinto, ou d aider son père dans ses campagnes électorales. En fait, elle rêve de pouvoir quitter cette ville où elle s ennuie, pour partir tenter sa chance à la capitale.  Taki est un lycéen, un tokyoïte qui travaille à mi-temps dans un restaurant italien, tout en aspirant à des études d architecture ou dans les Beaux-Arts. Chaque nuit, il fait un rêve étrange, où il devient... une lycéenne campagnarde, vivant dans une petite ville entre les montagnes.  Quel secret se cache derrière ces rêves mutuels, qui unissent ces deux êtres qui ne se sont jamais rencontrés ?');

select addDetails(761053,105,'en','/fYtHxTxlhzD4QWfEbrC1rypysSD.jpg', 'L histoire erotique de Matthieu et Benoit, deux profs de web');

select addDetails(497,189,'en','/yQx12qEP0HZDOPcwVE4FR4ma12.jpg', 'Paul Edgecomb, pensionnaire centenaire d’une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforcant d’adoucir les derniers moments des condamnés. Parmi eux se trouvait un colosse du nom de John Coffey, accusé du viol et du meurtre de deux fillettes. Intrigué par cet homme candide et timide aux dons magiques, Edgecomb va tisser avec lui des liens très forts.');

select addDetails(556574,160,'en','/itaIGLdCu0e28XQOEf7V3chd904.jpg', 'Captation de la célèbre comédie musicale de Broadway récompensée par 11 Tony, Grammy et Olivier Awards, et par un prix Pulitzer. Hamilton raconte l histoire d Alexander Hamilton, l un des Pères fondateurs de la nation américaine.');

select addDetails(592350,104,'ja','/gX8bssPezUidGFWJT1g7yM72oXq.jpg', 'La classe 1-A de U.A. a été envoyée sur l’île isolée de Nabu dans le cadre d’un programme de sécurité, ce qui équivaut à des actes mineurs de la part des étudiants, car l’île est pratiquement exempte de criminalité. Izuku Midoriya, titulaire du One for All, un pouvoir d’une immense puissance héritée, rencontre Mahoro Shimano et son frère Katsuma, résidents de l’île. S’unissant à eux avec son rival Katsuki Bakugo, ils découvrent que Katsuma souhaite devenir un héros, mais Mahoro cherche à le dissuader, estimant que son Alter n’est pas adapté à une ligne de travail dangereuse.Pendant ce temps, le père de Mahoro et Katsuma, qui possède un Alter curatif appelé Cell Activation, est attaqué par Nine et son groupe.');

select addDirector(389,39996,'Sidney Lumet');

select addDetails(27205,148,'en','/aej3LRUga5rhgkmRP6XMFw3ejbl.jpg', 'Dom Cobb est un voleur expérimenté, le meilleur dans l art dangereux de l extraction, voler les secrets les plus intimes enfouis au plus profond du subconscient durant une phase de rêve, lorsque l esprit est le plus vulnérable. Les capacités de Cobb ont fait des envieux dans le monde tourmenté de l espionnage industriel alors qu il devient fugitif en perdant tout ce qu il a un jour aimé. Une chance de se racheter lui est alors offerte. Une ultime mission grâce à laquelle il pourrait retrouver sa vie passée mais uniquement s il parvient à accomplir l impossible inception.');

select addDirector(508965,124749,'Sergio Pablos');

select addDirector(441130,96676,'Tomm Moore');

select addDirector(441130,1782644,'Ross Stewart');

select addDirector(129,608,'Hayao Miyazaki');

select addDirector(556574,1485823,'Thomas Kail');

select addDirector(26451,95456,'Elio Petri');

select addDirector(19404,35771,'Aditya Chopra');

select addDirector(592350,1307036,'Kenji Nagasaki');

select addDirector(128,608,'Hayao Miyazaki');

select addDetails(807,130,'en','/moHx8JGzIdEAMLj1CqDzcLYhMRY.jpg', 'Pour conclure sa carrière, l’inspecteur Somerset, vieux flic blasé, tombe à sept jours de la retraite sur un criminel peu ordinaire. John Doe, c’est ainsi que se fait appeler l’assassin, a décidé de nettoyer la société des maux qui la rongent en commettant sept meurtres basés sur les sept péchés capitaux : la gourmandise, l’avarice, la paresse, l’orgueil, la luxure, l’envie et la colère.');

select addDetails(432517,90,'en','/dbsS4oBDwLTVTuIiqwTls9wD1I1.jpg', 'Le petit jeu initié par Moriarty finit par rattraper le duo de Baker Street en prenant une tournure personnelle. Dans ce dernier épisode, les secrets enfouis de la famille Holmes refont donc surface… Ce jeu dure depuis trop longtemps pour Sherlock et Watson mais une ultime révélation vient redistribuer les cartes.');

select addDirector(600354,1150548,'Florian Zeller');

select addDetails(600354,97,'en','/sXtJLhzZ6F91Pnmzx5sS7tEUISY.jpg', 'Alors qu’il vieillit et devient de moins en moins autonome, un père refuse l’aide de sa fille. Voyant la situation se dégrader, il commence à douter de ses proches, de son propre esprit et même de ce qui est réel.');

select addDetails(101,110,'en','/mURFxDv6kwm9RR91XUmhYf7DiiP.jpg', 'Léon est un tueur professionnel redoutable et insaisissable. Il vit seul à New York avec sa plante verte et ses habitudes jusqu au jour où une petite Mathilda de douze ans sonne à sa porte et fait irruption dans sa vie.');

select addDirector(207,2690,'Peter Weir');

select addDetails(335,166,'it','/xjXKy5b2M3fDelAQItIswcDNvwm.jpg', 'Alors que les constructeurs de chemins de fer traversent sans relâche le désert de l Arizona en direction de la mer, Jill arrive dans la petite ville de Flagstone avec l intention de commencer une nouvelle vie.');

select addDetails(121,180,'en','/qVHBqQYLDRs7ESjP9q6o9iPHLWj.jpg', 'Après la mort de Boromir et la disparition de Gandalf, la Communauté s est scindée en trois. Perdus dans les collines d Emyn Muil, Frodon et Sam découvrent qu ils sont suivis par Gollum, une créature versatile corrompue par l Anneau. Celui-ci promet de conduire les Hobbits jusqu à la Porte Noire du Mordor. À travers la Terre du Milieu, Aragorn, Legolas et Gimli font route vers le Rohan, le royaume assiégé de Theoden. Cet ancien grand roi, manipulé par l espion de Saroumane, le sinistre Langue de Serpent, est désormais tombé sous la coupe du malfaisant Magicien. Eowyn, la nièce du Roi, reconnaît en Aragorn un meneur d hommes. Entretemps, les Hobbits Merry et Pippin, prisonniers des Uruk-hai, se sont échappés et ont découvert dans la mystérieuse Forêt de Fangorn un allié inattendu : Sylvebarbe, gardien des arbres, représentant d un ancien peuple végétal dont Saroumane a décimé la forêt...');

select addDetails(240,202,'en','/zbahpSpzOIzxwQnDF3Ohi7iAjLG.jpg', 'Depuis la mort de Don Vito Corleone, son fils Michael règne sur la famille. Amené à négocier avec la mafia juive, il perd alors le soutien d un de ses lieutenants, Frankie Pentageli. Échappant de justesse à un attentat, Michael tente de retrouver le coupable.');

select addDirector(20532,97202,'Kenji Mizoguchi');

select addDetails(20532,120,'ja','/qOTemEyGqcWj6abUpx0Zc8Pj7Bb.jpg', 'Le Japon du XIe siècle. Un gouverneur de province est exilé pour avoir défendu les paysans contre les autorités féodales. Quelques années plus tard, sa femme Tamaki, sa fille Anju et son fils Zushio sont kidnappés en cherchant à le rejoindre. Tamaki est déportée sur une île, alors que les enfants sont jetés dans un camp d esclaves commandé par l’impitoyable intendant Sansho. Dix ans plus tard, Zushio, amer, a oublié les idéaux de compassion de son père mais Anju l’exhorte à ne pas devenir comme Sansho. Anju apprend alors que leur mère pourrait être vivante, et elle prépare un plan d’évasion pour Zushio...');

select addDetails(567,110,'en','/xiPX9jCpPXQIqIrbbuHfsL4qt9c.jpg', 'À cause d une jambe cassée, le reporter-photographe L. B. Jeffries est contraint de rester chez lui dans un fauteuil roulant. Homme d action et amateur d aventure, il s aperçoit qu il peut tirer parti de son immobilité forcée en étudiant le comportement des habitants de l immeuble qu il occupe dans Greenwich Village. Et ses observations l amènent à la conviction que Lars Thorwald, son voisin d en face, a assassiné sa femme. Sa fiancée, Lisa Fremont, ne le prend tout d abord pas au sérieux, ironisant sur l excitation que lui procure sa surveillance, mais finit par se prendre au jeu.');

select addDetails(128,135,'ja','/AulQiyP2PMQKW5Vm7PviGrFbpPm.jpg', 'Au XVᵉ siècle, durant l’ère Muromachi, la forêt japonaise, jadis protégée par des animaux géants, se dépeuple à cause de l’homme. Un sanglier transformé en démon dévastateur en sort et attaque le village d’Ashitaka, futur chef du clan Emishi. Touché par le sanglier qu’il a tué, celui‐ci est forcé de partir à la recherche du dieu Cerf pour lever la malédiction qui lui gangrène le bras.');

select addDirector(3082,13848,'Charlie Chaplin');

select addDirector(680,138,'Quentin Tarantino');

select addDirector(240,1776,'Francis Ford Coppola');

select addDirector(497,4027,'Frank Darabont');

select addDirector(527641,88675,'Justin Baldoni');

select addDirector(975,240,'Stanley Kubrick');

select addDetails(157336,169,'en','/1pnigkWWy8W032o9TKDneBa3eVK.jpg', 'Dans un futur proche, face à une Terre exsangue, un groupe d’explorateurs utilise un vaisseau interstellaire pour franchir un trou de ver permettant de parcourir des distances jusque‐là infranchissables. Leur but : trouver un nouveau foyer pour l’humanité.');

select addDetails(3082,87,'en','/gcRA8st7q01xDuA34JmrzGG563w.jpg', 'Charlot est ouvrier dans une gigantesque usine. Il resserre quotidiennement des boulons. Mais les machines, le travail à la chaîne le rendent malade, il abandonne son poste, recueille une orpheline et vit d expédients. Le vagabond et la jeune fille vont s allier pour affronter ensemble les difficultés de la vie…');

select addDirector(432517,1624330,'Benjamin Caron');

select addDetails(207,128,'en','/5fFM4xlY1XqwAR0NWMCX2xCPy4E.jpg', 'Todd Anderson, un garçon plutôt timide, est envoyé dans la prestigieuse académie de Welton, réputée pour être l une des plus fermées et austères des États-Unis, là où son frère avait connu de brillantes études.C est dans cette université qu il va faire la rencontre d un professeur de lettres anglaises plutôt étrange, Mr Keating, qui les encourage à toujours refuser l ordre établi. Les cours de Mr Keating vont bouleverser la vie de l étudiant réservé et de ses amis...');

select addDetails(274,118,'en','/fBJFVpMcmygHw3i8Tcmef4cWeUH.jpg', 'Un psychopathe connu sous le nom de Buffalo Bill sème la terreur dans le Middle West en kidnappant et en assassinant de jeunes femmes. Clarice Starling, une jeune agent du FBI, est chargée d’interroger l’ex‐psychiatre Hannibal Lecter. Psychopathe redoutablement intelligent et porté sur le cannibalisme, Lecter est capable de lui fournir des informations concernant Buffalo Bill ainsi que son portrait psychologique. Mais il n’accepte de l’aider qu’en échange d’informations sur la vie privée de la jeune femme. Entre eux s’établit un lien de fascination et de répulsion.');

select addDetails(12493,143,'ja','/cmbTqPuV7WMPCLWFeybpZwf4up2.jpg', 'À Yokohama, un malfaiteur kidnappe un enfant, qu il prend pour le fils d un industriel japonais. Il s agit en fait du fils de son chauffeur. Le commissaire Tokura est chargé de l affaire.');

select addDirector(313106,42274,'Nick Hurran');

select addDirector(92321,992866,'Takahiro Omori');

select addDetails(14537,135,'ja','/3nPwMd3KviJWaHzG9fZCqlwWMas.jpg', 'Au XVIIe siècle, le Japon n est plus en guerre et le pays est dirigé avec fermeté. Hanshirô Tsugumo, un rônin (samouraï errant) sans travail parmi tant d autres, décide de frapper à la porte du puissant clan des Ii. Reçu par Kageyu Saitô, l intendant du clan, il lui demande la permission d accomplir le suicide par harakiri dans la résidence. Tentant de l en dissuader, Saitô commence alors à lui raconter l histoire de Motome Chijiwa, un ancien rônin qui souhaitait accomplir, lui aussi, le même rituel.');

select addDirector(522924,133502,'Simon Curtis');

select addDetails(476292,114,'ja','/j3PR1Hifn8ACgtVADIMSNois9L3.jpg', 'Le peuple d Iolph possède le secret de la longévité tout en conservant une éternelle apparence juvénile, mais ce précieux sang attise la convoitise. Leur quiétude se voit rompue par une invasion d ennemis, semant chaos et destruction sur leur passage. La jeune Maquia parvient à s enfuir mais, anéantie par la mort des siens, elle erre seule dans ce monde hostile qui lui est inconnu. Lorsqu elle découvre un bébé orphelin abandonné dans la forêt, elle décide de le garder. Tous deux vont pouvoir se reconstruire, et ainsi débute un voyage émotionnel entre un mortel et un être qui ne vieillit plus...');

select addDetails(324857,117,'en','/jw9TRNYIMI1KsTjgQ3wVYSMXxlh.jpg', 'Miles Morales, un adolescent afro-américain et portoricain vit à Brooklyn et s’efforce de s’intégrer dans son nouveau collège à Manhattan. Mais la vie de Miles se complique quand il se fait mordre par une araignée radioactive et se découvre des super-pouvoirs : il est désormais capable d’empoisonner ses adversaires, de se camoufler, de coller littéralement aux murs et aux plafonds ; son ouïe est démultipliée... Dans le même temps, le plus redoutable cerveau criminel de la ville, le Caïd, a mis au point un accélérateur de particules nucléaires capable d’ouvrir un portail sur d’autres univers. Son invention va provoquer l’arrivée de plusieurs autres versions de Spider-Man dans le monde de Mile.');

select addDetails(522924,109,'en','/2r2y16SUUm1NAJRWIFnnunKruv7.jpg', 'Enzo n est pas un chien comme les autres. Philosophe dans l âme, il aime s instruire devant la télévision et écouter attentivement les leçons de vie de son maître, Denny Swift, un pilote automobile. Aujourd hui, Enzo se souvient de tout ce que sa famille et lui-même ont traversé au cours des années...');

select addDirector(42269,31894,'Ettore Scola');

select addDetails(914,126,'en','/iklNcUOELu4VV8jZthsY0hsGW50.jpg', 'Dans le ghetto juif vit un petit barbier qui ressemble énormément à Adenoid Hynkel, le dictateur de Tomania qui a décidé l extermination du peuple juif. Au cours d une rafle, le barbier est arrêté en compagnie de Schultz, un farouche adversaire d Hynkel…');

select addDetails(635302,117,'ja','/3fTjxkrp23AWyRbMKaujz5wrNDM.jpg', 'Enmu, la première Lune Inférieure, a été chargé de tuer Kamado Tanjirô pour devenir une Lune Supérieure et avoir plus sang de Muzan. Pendant ce temps, Tanjirô, Zen itsu et Inosuke décident d acheter des billets pour monter à bord du train de l infini et ainsi rejoindre Rengoku Kyôjurô, le Pilier de la flamme, dans l espoir d en apprendre davantage sur la danse du dieu du feu.');

select addDetails(640344,0,'it','/sfeQTIRkJjWt8IPDSBcPqkrcaas.jpg', '');

select addDetails(313106,77,'en','/qkhP3bhxQQjs1bGEWNts64DOUkK.jpg', 'Un terrible évènement se tisse dans les sous-sols de la National Gallery à Londres, dont l origine remonte à l année 1562 où la reine Elizabeth d Angleterre fût la cible d un complot visant à l assassiner. Et quelque part dans l espace, une bataille du fond des âges est sur le point d engendrer de terribles conséquences. Le passé tourmenté du Docteur revient le hanter et de sa décision, dépendra l avenir du monde réel.');

select addDetails(975,86,'en','/jqSEs0Umv1ZbMt50UqA4zkAhvsK.jpg', 'En 1916, durant la Première Guerre mondiale, le général français Broulard ordonne au général Mireau de lancer une offensive suicidaire contre une position allemande imprenable, surnommée "La fourmilière". Au moment de l attaque, les soldats tombent par dizaines et leurs compagnons, épuisés, refusent d avancer...');

select addDetails(599,110,'en','/kFtIZcp4gXAThz3pOOX0aOYgwEe.jpg', 'Norma Desmond, grande actrice du muet, vit recluse dans sa luxueuse villa de Berverly Hills en compagnie de Max von Meyerling, son majordome qui fut aussi son metteur en scène et mari. Joe Gillis, un scénariste sans le sou, pénètre par hasard dans la propriété et Norma lui propose de travailler au scénario du film qui marquera son retour à l écran, Salomé. Joe accepte, s installe chez elle, à la fois fasciné et effrayé par ses extravagances et son délire, et devient bientôt son amant. Quand son délire se transforme en paranoïa et qu elle débarque au milieu des studios Paramount pour convaincre Cecil B. DeMille de tourner à nouveau avec elle, Gillis commence à prendre ses distances...');

select addDirector(105,24,'Robert Zemeckis');

select addDirector(424,488,'Steven Spielberg');

select addDirector(335,4385,'Sergio Leone');

select addDirector(101,59,'Luc Besson');

select addDirector(664767,204553,'Ethan Spaulding');

select addDirector(12493,5026,'Akira Kurosawa');

select addDirector(914,13848,'Charlie Chaplin');

select addDirector(640344,2436936,'Gianluca Leuzzi');

select addDetails(4935,119,'ja','/45PVXJUYfH6yIINcQKelQ0SJPvh.jpg', 'La jeune Sophie, âgée de 18 ans, travaille sans relâche dans la boutique de chapelier que tenait son père avant de mourir. Lors de l’une de ses rares sorties en ville, elle fait la connaissance de Hauru le Magicien. Celui‐ci est extrêmement séduisant, mais n’a pas beaucoup de caractère… Se méprenant sur leur relation, une sorcière jette un épouvantable sort sur Sophie et la transforme en vieille femme de 90 ans. Accablée, Sophie s’enfuit et erre dans les terres désolées. Par hasard, elle pénètre dans le Château Ambulant de Hauru et, cachant sa véritable identité, s’y fait engager comme femme de ménage. Cette « vieille dame » aussi mystérieuse que dynamique va bientôt redonner une nouvelle vie à l’ancienne demeure. Plus énergique que jamais, Sophie accomplit des miracles. Quel fabuleux destin l’attend ? Et si son histoire avec Hauru n’en était qu’à son véritable commencement ?');

select addDetails(18491,82,'ja','/vIWonMqeYRmY95OEk06NvTC1h8N.jpg', '« The End of Evangelion » est un film divisé en deux parties (« Love is Destructive » et « One More Final: I need you ») proposant une conclusion alternative à de la série « Neon Genesis Evangelion ».  Alors que la NERV, le dernier rempart contre les Anges, est assailli par les militaires qui massacrent tout sur leur passage, Asuka mène un combat sans merci contre les neuf EVA. Le monde se prépare à subir le Troisième Impact.');

select addDetails(12477,88,'ja','/jtWaQRNkxGdioGOG7jMqplnoxl7.jpg', 'Japon, été 1945. Après le bombardement de Kobé, Seita, un adolescent de quatorze ans et sa petite sœur de quatre ans, Setsuko, orphelins, vont s’installer chez leur tante à quelques dizaines de kilomètres de chez eux. Celle‐ci leur fait comprendre qu’ils sont une gêne pour la famille et doivent mériter leur riz quotidien. Seita décide de partir avec sa petite sœur. Ils se réfugient dans un bunker désaffecté en pleine campagne et vivent des jours heureux illuminés par la présence de milliers de lucioles. Mais bientôt la nourriture commence cruellement à manquer.');

select addDirector(14537,76978,'Masaki Kobayashi');

select addDirector(12477,628,'Isao Takahata');

select addDetails(92321,45,'ja','/iHcyIDkZe3C3zi2fe546DXIBKJD.jpg', 'Perdue dans une forêt à côté de la maison de son grand-père où elle se rend chaque été, la petite Hotaru fait la rencontre d un garçon mystèrieux qui l aide à retrouver son chemin. Elle commence à lui rendre visite tous les étés et l esprit attend ces moments partagés avec Hotaru, au risque de disparaître ...');

select addDirector(476292,1257117,'Mari Okada');

select addDetails(1891,124,'en','/qDvctAykmNWAmi9G2GrVrwWx3pr.jpg', 'Malgré la destruction de l’Étoile Noire, l Empire maintient son emprise sur la galaxie, et poursuit sans relâche sa lutte contre l Alliance rebelle. Basés sur la planète glacée de Hoth, les rebelles essuient un assaut des troupes impériales. Parvenus à s échapper, la princesse Leia, Han Solo, Chewbacca et C-3P0 se dirigent vers Bespin, la cité des nuages gouvernée par Lando Calrissian, ancien compagnon de Han. Suivant les instructions d Obi-Wan Kenobi, Luke Skywalker se rend quant à lui vers le système de Dagobah, planète marécageuse où il doit recevoir l enseignement du dernier maître Jedi, Yoda. Apprenant l arrestation de ses compagnons par les stormtroopers de Dark Vador après la trahison de Lando, Luke décide d interrompre son entraînement pour porter secours à ses amis et affronter le sombre seigneur Sith...');

select addDetails(378064,132,'ja','/xjeYI75uMBtBjNlJ0cDJZDFg5Yv.jpg', 'Nishimiya est une élève douce et attentionnée. Chaque jour, elle est harcelée par Ishida, car elle est sourde. Dénoncé pour son comportement, le garçon est à son tour mis à l’écart et renvoyé de l’école… Des années plus tard, il apprend la langue des signes… et part à la recherche de la jeune fille.');

select addDirector(901,13848,'Charlie Chaplin');

select addDetails(73,118,'en','/7i4OCkULI4YCfqrf6j2NONSgAOq.jpg', 'A travers l’histoire d’une famille américaine, ce film tente d’expliquer l’origine du racisme et de l’extrémisme aux États‐Unis. Il raconte l’histoire de Derek qui, voulant venger la mort de son père, abattu par un dealer noir, a épousé les thèses racistes d’un groupuscule de militants d’extrême droite et s’est mis au service de son leader, brutal théoricien prônant la suprématie de la race blanche. Ces théories le mèneront à commettre un double meurtre entrainant son jeune frère, Danny, dans la spirale de la haine.');

select addDetails(423,149,'en','/vI05JxU356MciaQeYHjXlqfjQe0.jpg', 'Varsovie, au mois d’octobre 1939. Un jeune pianiste juif, Wladyslaw Szpilman, est enfermé dans le ghetto avec sa famille. Il assiste, impuissant, aux humiliations que subissent quotidiennement les siens. Grâce à une aide extérieure, il échappe de justesse à la déportation mais voit partir toute sa famille. Le jeune homme se cache alors dans les maisons vides et observe passivement les derniers habitants se révolter contre l’occupation allemande. Après avoir réussi à s’échapper miraculeusement, il se terre dans des quartiers détruits et tente de survivre, ce qui s’avère de plus en plus dur. C’est alors qu’il rencontre un nazi mélomane…');

select addDetails(901,87,'en','/fnPw9ouGT89hE8mcyxq9oUwQjP4.jpg', 'Un vagabond s’éprend d’une belle et jeune vendeuse de fleurs aveugle qui vit avec sa mère, couverte de dettes. Suite à un quiproquo, la fleuriste s’imagine le misérable, qui vient de lui acheter une fleur, en milliardaire…');

select addDetails(3782,143,'ja','/b7QquFirLZeJ02zIXtxbFaiZy7s.jpg', 'Atteint d un cancer, Watanabe, chef de service du génie civil, décide de réaliser le projet qu il avait tout d abord repoussé : celui d assainir un terrain vague du quartier de Hureocho pour que les enfants puissent jouer dans un véritable jardin.');

select addDetails(42269,124,'it','/xo0k39DeLJ4CEPGs4K1cEmfs1Jk.jpg', 'Trente ans déjà… Les derniers épisodes de la guerre, de la Résistance italienne contre le nazisme… Gianni, Nicola et Antonio sont trois amis… Mais, la guerre finie, la paix sépare le trio. L un, Nicola, est marié et professeur dans une petite ville de province. L autre, Antonio, brancardier dans un hôpital de Rome. Le troisième, Gianni, avocat-stagiaire chez un grand du barreau. Mais dans l Italie de l immédiate après-guerre, il est difficile de réussir avec des idées de gauche : communistes et socialistes sont écartés du gouvernement par les démocrates-chrétiens. Chacun des trois amis va donc suivre sa propre voie selon son caractère et le hasard des rencontres. Les années passent. Nicola, Antonio et Luciana se retrouvent par à coups et par hasard : au détour d une rue, d une émission de télévision, d une liaison éphémère… Le temps des bilans est arrivé.');

select addDetails(13,142,'en','/A0Th0x8QIzP0njrFAJnYQ5ouIoB.jpg', 'Forrest Gump est le symbole d’une époque, un candide dans une Amérique qui a perdu son innocence. Merveilleusement interprété par Tom Hanks, Forrest vit une série d’aventures, de l’état d’handicapé physique à celui de star du football, de héros du Vietnam au roi de la crevette, des honneurs de la Maison Blanche au bonheur d’une grande histoire d’amour. Son cœur dépasse les limites de son Q.I.');

select addDetails(11216,123,'it','/5hfVaqr1iDUaRjbixSM1I583Reh.jpg', 'Alfredo vient de mourir. Pour Salvatore, cinéaste en vogue, c’est tout un pan de son passé qui s’écroule. On l’appelait Toto a l’époque. Il partageait son temps libre entre l’office ou il était enfant de chœur et la salle de cinéma paroissiale, en particulier la cabine de projection où régnait Alfredo.');

select addDirector(11216,65314,'Giuseppe Tornatore');

select addDetails(429,179,'it','/qEr65B4yGlsmLQjcM0xjSUMfZS2.jpg', 'Pendant la Guerre de Sécession, Tuco et Joe se lancent à la recherche d un coffre contenant 200 000 dollars en pièces d or volés à l armée sudiste. Ayant des indices complémentaires sur la cache, chacun a besoin de l autre. Mais un troisième homme entre dans la course : Sentenza, un tueur qui ne recule devant rien pour parvenir à ses fins.');

select addDirector(644479,1640511,'Jorge Ulloa');

select addDetails(311,220,'en','/qu50vK8DVt0tP9jBdqYJdsFRIo0.jpg', 'Il était une fois deux truands juifs, Max et Noodles, liés par un pacte d’éternelle amitié. Débutant au début du siècle par de fructueux trafics dans le ghetto de New York, ils voient leurs chemins se séparer, lorsque Noodles se retrouve durant quelques années derrière les barreaux, puis se recouper en pleine période de prohibition, dans les années vingt. Jusqu’au jour où la trahison les sépare à nouveau.');

select addDirector(615457,1169024,'Ilya Naishuller');

select addDirector(572154,1539725,'Souichi Masui');

select addDetails(572154,90,'ja','/lyx0rfL4g6mfUJfSC17pEYXR3xW.jpg', 'Sakuta Azusagawa, élève de 1ère, habite Fujisawa, une ville où resplendissent ciel et mer. Il vit un quotidien palpitant avec sa petite amie Mai Sakurajima, jusqu au jour où débarque son premier amour, Shôko Makinohara, en qui cohabitent en fait deux personnes : une adulte et une collégienne. Sakuta, contraint d héberger Shôko qui se joue de lui, voit ses relations avec Mai devenir de plus en plus tendues. Mais il se trouve que Shôko la collégienne souffre d’une grave maladie. La cicatrice de Sakuta recommence à le lancer...');

select addDetails(769,141,'en','/v4c6WMVqUlSJHMyjHNj72iTFGhm.jpg', 'Brooklyn, dans les années 50. Depuis l enfance, le jeune Henry Hill rêve de devenir gangster. A 16 ans, il se met en selle auprès de Paul Cicero, un caïd local, et commet ses premiers délits. Arrêté et interrogé, il refuse de parler et gagne ainsi le respect du milieu. A sa sortie de prison, il fait la connaissance de James Conway et de Tommy DeVito, deux truands d une extrême violence, et se lance avec eux dans des trafics de grande envergure. Karen, une jeune bourgeoise qu il courtise et finit par épouser, ne devine sa profession qu après être passée devant l officier d état-civil. Grisé par le succès, Henry multiplie les coups les plus audacieux...');

select addDetails(539,109,'en','/flB7poiDZNOeg6UCO6Wd8hxYsFS.jpg', 'Marion Crane en a assez de ne pouvoir mener sa vie comme elle l entend. Son travail ne la passionne plus, son amant ne peut l épouser car il doit verser une énorme pension alimentaire le laissant sans le sou... Mais un beau jour, son patron lui demande de déposer 40 000 dollars à la banque. La tentation est trop grande, et Marion s enfuit avec l argent. Très vite la panique commence à se faire sentir. Partagée entre l angoisse de se faire prendre et l excitation de mener une nouvelle vie, Marion roule vers une destination qu elle n atteindra jamais. La pluie est battante, la jeune femme s arrête près d un motel, tenu par un sympathique gérant nommé Norman Bates, mais qui doit supporter le caractère possessif de sa mère. Après un copieux repas avec Norman, Marion prend toutes ses précautions afin de dissimuler l argent. Pour se délasser de cette journée, elle prend une douche...');

select addDetails(637,117,'it','/c6NveyskoKlwAvouqEmKBRU0Pkp.jpg', 'En 1938, Guido, jeune homme plein de gaieté, rêve d ouvrir une librairie, malgré les tracasseries de l administration fasciste. Il tombe amoureux de Dora, institutrice étouffée par le conformisme familial et l enlève le jour de ses fiançailles avec un bureaucrate du régime. Cinq ans plus tard, Guido et Dora ont un fils: Giosue. Mais les lois raciales sont entrées en vigueur et Guido est juif. Il est alors déporté avec son fils. Par amour pour eux, Dora monte de son plein gré dans le train qui les emmène aux camps de la mort où Guido va tout faire pour éviter l horreur à son fils...');

select addDirector(372058,74091,'Makoto Shinkai');

select addDirector(122,108,'Peter Jackson');

select addDirector(496243,21684,'Bong Joon-ho');

select addDirector(278,4027,'Frank Darabont');

select addDirector(274,16294,'Jonathan Demme');

select addDirector(423,3556,'Roman Polanski');

select addDirector(635302,1283010,'Haruo Sotozaki');

select addDirector(1891,10930,'Irvin Kershner');

select addDirector(378064,1072778,'Naoko Yamada');

select addDirector(244786,136495,'Damien Chazelle');

select addDirector(18491,77921,'Hideaki Anno');

select addDirector(18491,77923,'Kazuya Tsurumaki');

select addDirector(3782,5026,'Akira Kurosawa');

select addDirector(637,4818,'Roberto Benigni');

select addDetails(346,207,'ja','/itaaGjeYL5ZzufV8BOxkTYQxx4K.jpg', 'Au XVIè siècle, au Japon, des paysans décident d embaucher des samouraïs pour protéger leur village, et en trouvent sept. Ces hommes organisent la défense du village contre quarante brigands.');

select addDetails(155,147,'en','/pyNXnq8QBWoK3b37RS6C3axwUOy.jpg', 'Dans ce nouveau volet, Batman augmente les mises dans sa guerre contre le crime. Avec l’appui du lieutenant de police Jim Gordon et du procureur de Gotham, Harvey Dent, Batman vise à éradiquer le crime organisé qui pullule dans la ville. Leur association est très efficace mais elle sera bientôt bouleversée par le chaos déclenché par un criminel extraordinaire que les citoyens de Gotham connaissent sous le nom de Joker.');

select addDetails(40096,104,'pt','/m8eFedsS7vQCZCS8WGp5n1bVD0q.jpg', 'Le quartier animé João Grilo et chico sournoise sont pauvres gars qui vivent dans l arrière-pays qui trichent un tas de gens dans une petite ville du Nord-Est du Brésil. Mais quand ils meurent, ils doivent être jugés par le Christ, le diable et la Vierge Marie, avant d être admis au paradis.');

select addDirector(532067,1281402,'Takaomi Kanasaki');

select addDirector(618344,1637776,'Matt Peters');

select addDirector(618344,2579481,'Christina Sotta');

select addDetails(615457,92,'en','/vxbYQu7FUuM8G4cBzs165cX5UAp.jpg', 'Hutch Mansell, un père et un mari frustré, totalement déconsidéré par sa famille, se contente d’encaisser les coups, sans jamais les rendre. Il n’est rien. Une nuit, alors que deux cambrioleurs pénètrent chez lui, il fait le choix de ne pas intervenir, plutôt que de risquer une escalade sanglante. Une décision qui le discrédite définitivement aux yeux de son fils Blake, et qui semble l’éloigner encore plus de sa femme Becca. Cet incident réveille chez cet homme blessé des instincts larvés qui vont le propulser sur une voie violente, révélant des zones d’ombres et des compétences létales insoupçonnées. Dans une avalanche de coups de poings, de fusillades et de crissements de pneus, il va tout faire pour tirer sa famille des griffes d’un redoutable ennemi et s’assurer que, plus jamais, personne ne le prenne pour un moins que rien.');

select addDetails(532067,90,'ja','/lnlEWSvfiHbQOgVyfnEqU1q31Yg.jpg', 'Le parti de Kazuma est soudainement alerté par une lettre scandaleuse livrée par Yunyun. La lettre leur demandait de venir au village du Crimson Demon Clan. Le groupe se présente et des problèmes surgissent lorsqu un général ennemi arrive !');

select addDirector(537061,1245726,'Rebecca Sugar');

select addDetails(244786,106,'en','/3XriEpTdnplQRzyphAC0cu3emns.jpg', 'Andrew, 19 ans, rêve de devenir l’un des meilleurs batteurs de jazz de sa génération. Mais la concurrence est rude au conservatoire de Manhattan où il s’entraîne avec acharnement. Il a pour objectif d’intégrer le fleuron des orchestres dirigé par Terence Fletcher, professeur féroce et intraitable. Lorsque celui-ci le repère enfin, Andrew se lance, sous sa direction, dans la quête de l’excellence...');

select addDetails(510,133,'en','/r5b2ub7GMawCWDP5vHR1MXpV7vU.jpg', 'Randle P. McMurphy se fait interner pour échapper à la prison. Il va être touché par la détresse et la solitude des patients. Très rapidement, il comprend que l’infirmière en chef, Mlle Ratched, a imposé des règles strictes et entend bien les faire respecter. Il décide alors de révolutionner ce petit monde, plutôt au départ par jeu.');

select addDetails(598,135,'pt','/52cZF8OJNLDcVFYvmwzlhGZMfgt.jpg', 'Dans une favela qui a vu le jour à Rio de Janeiro dans les années soixante, Fusée est un gamin noir, pauvre, trop fragile pour devenir hors-la-loi, mais assez malin pour ne pas se contenter d un travail sous payé. Il grandit dans un environnement violent, mais tente de voir la réalité autrement, avec l oeil d un artiste. Il rêve de devenir photographe professionnel. Petit Dé, un enfant de onze ans, emménage dans la Cité. Il souhaite pour sa part devenir le plus grand criminel de Rio et commence son apprentissage en rendant de menus services à la pègre locale. Il admire Tignasse et son gang, qui arraisonnent les camions et cambriolent à tout va. Tignasse donne à Petit Dé l occasion de commettre un meurtre, le premier d une longue série...');

select addDetails(644479,94,'es','/riAooJrFvVhotyaOgoI0WR7okSe.jpg', '');

select addDetails(550,139,'en','/jSziioSwPVrOy9Yow3XhWIBDjq1.jpg', 'Le narrateur, sans identité précise, vit seul, travaille seul, dort seul, mange seul ses plateaux‐repas pour une personne comme beaucoup d’autres personnes seules qui connaissent la misère humaine, morale et sexuelle. C’est pourquoi il va devenir membre du Fight club, un lieu clandestin où il va pouvoir retrouver sa virilité, l’échange et la communication. Ce club est dirigé par Tyler Durden, une sorte d’anarchiste entre gourou et philosophe qui prêche l’amour de son prochain.');

select addDetails(630566,121,'en','/lf3sVajYNjuEXZlJyADcY5HvBiE.jpg', 'Zach Sobiech, un adolescent de 17 ans doué pour la musique, est atteint d’un cancer des os (ostéosarcome). Élève en terminale, il déborde de vie et de projets. Mais lorsqu’il apprend que son cancer est généralisé, il décide avec sa meilleure amie Sammy - qui compose avec lui - de profiter au maximum du peu de temps qu’il lui reste. Grâce à leur professeur M. Weaver, Zach et Sammy parviennent à signer un contrat avec une maison de disques. Accompagné de sa petite amie Amy et de ses parents Rob et Laura, Zach va vivre d’intenses moments où l’amitié et l’amour se conjuguent au son de la force évocatrice de la musique.');

select addDirector(791373,15217,'Zack Snyder');

select addDirector(807,7467,'David Fincher');

select addDirector(120,108,'Peter Jackson');

select addDirector(599,3146,'Billy Wilder');

select addDirector(73,814,'Tony Kaye');

select addDirector(429,4385,'Sergio Leone');

select addDirector(40096,102560,'Guel Arraes');

select addDirector(598,8557,'Fernando Meirelles');

select addDirector(630566,88675,'Justin Baldoni');

select addDetails(537061,90,'en','/8mRgpubxHqnqvENK4Bei30xMDvy.jpg', 'Après avoir aidé le monde des Gemmes et ses colonies à revoir les fondements de leur empire tout entier, Steven trouve le temps de revenir couler des jours tranquilles en compagnie de ses amis de Plage-Ville et des Gemmes de cristal. Cependant, cette quiétude est vite menacée par l apparition soudaine d un injecteur géant, piloté par une Gemme du nom de Spinel qui semble en vouloir spécifiquement à Steven et ses amis.');

select addDirector(324857,59918,'Rodney Rothman');

select addDirector(324857,151007,'Peter Ramsey');

select addDirector(324857,936670,'Bob Persichetti');

select addDirector(121,108,'Peter Jackson');

select addDirector(13,24,'Robert Zemeckis');

select addDirector(346,5026,'Akira Kurosawa');

select addDirector(155,525,'Christopher Nolan');

select addDirector(539,2636,'Alfred Hitchcock');

select addDirector(510,3974,'Miloš Forman');

select addDirector(4935,608,'Hayao Miyazaki');

select addDirector(311,4385,'Sergio Leone');

select addDirector(550,7467,'David Fincher');

select addDirector(769,1032,'Martin Scorsese');

select addDirector(157336,525,'Christopher Nolan');

select addDirector(27205,525,'Christopher Nolan');

select addDetails(618344,90,'en','/c01Y4suApJ1Wic2xLmaq1QYcfoZ.jpg', 'Suite à ses deux invasions ratées de la Terre,  Darkseid a été sur un chemin de guerre, conquérant d innombrables mondes. À la Watchtower, la Justice League , rejointe par de nouveaux membres John Constantine et son amant Zatanna , fait un plan pour contrer son invasion à travers l univers. Cependant, à leur insu, Darkseid les regarde à travers la technologie de Victor Stone . La Ligue se dirige vers Apokolips tandis que les Teen Titans restent sur Terre en tant que "garde à domicile". A leur arrivée, la Ligue est attaquée par des "Paradooms"; hybrides génétiques de Parademons et Doomsday . Pendant l attaque, plusieurs héros sont tués. Darkseid démantèle Cyborg - qui permet à Shazam de s échapper - et remplace ses pièces par la technologie apokoliptienne, asservit Diana , Starfire , Hawkman , Mera et Martian Manhunter pour devenir ses Furies mécanisées, place Batman dans son contrôle mental, faisant de lui son bras droit, et injecte à Clark Kent du liquide de Kryptonite, le dépower...');

