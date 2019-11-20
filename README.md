# Cartographie des attaques terroristes dans le monde de 1970 à 2016

![image](uploads/c0ec3297e13a88a221500b8ec2ffe00c/image.png)

|     Auteurs        |
--------------
Mohamed BOUSSAA - Tina CHETOUANI - Fodé HISSIROU - Mohamed BOUCHIBA



## Introduction 
**Le choix du sujet naît d’une réflexion transdisciplinaire**

Ce projet est constitué de quatre étudiants en première année du Master MEDAS. Deux de ces
étudiants ont un profil en Informatique et les deux autres étudiants ont un background en
Sciences Humaines et Sociales. Cette composition équilibrée des profils a été traduit par des
échanges très riches sur les différentes perceptions sur la thématique et ses problématiques
sociétales, ainsi que sur les approches méthodologiques d’analyse et d’exploitation du dataset
choisi.

Il a été difficile de sélectionner une thématique suscitant l’intérêt des quatre étudiants
composant le groupe. Le point commun résidait en notre volonté d’aborder une thématique
internationale, nous offrant l’opportunité de travailler notre anglais en parcourant les données
et ses problématiques.

Afin de faciliter la sélection du thème, chacun a proposé une problématique et une sélection de
dataset existants. L’un d’entre nous a proposé le dataset sur les attaques terroristes et fut le sujet
de vives discussions au sein du groupe.

De fait, le terrorisme moderne est médiatique et fascine un large public, attiré par les agressions
les plus violentes et fasciné par leur côté dramatique et spectaculaire. Paradoxalement, les actes
terroristes sont des actes qui visent à faire naître des sentiments de terreur, de peur et de chaos
parmi le public. De fait, la propagation de tels sentiments dépend largement des images et des
messages qui sont véhiculés par les reportages réalisés sur les actes et menaces terroristes.
Inexorablement, l’omniprésence des médias de masse à l’échelle mondiale accentue ces effets
de manière disproportionnée.

Ce besoin d’appréhender un phénomène suscite notre besoin d’élaborer des critiques
constructives, à partir de données exhaustives, et non de prénotions voire stéréotypes véhiculés
et malheureusement assimilés au fil du temps au sein de notre environnement social, allant des
réseaux sociaux, des échanges avec nos proches jusqu’aux médias dits « traditionnels ».

Ainsi, nous avons décidé d’adopter cette thématique à partir d’un dataset élaboré par le
consortium national américain du Study of Terrorism and Responses to Terrorism (START).
Cette problématisation du terrorisme nous a tous interpellé car elle titille notre curiosité
intellectuelle au travers de l’exploration d’un sujet novateur pour chacun d’entre nous et nous
offre l’opportunité d’explorer des notions, aussi bien en programmation en (re)découvrant R,
mais également des concepts en Sciences Humaines et Sociales, qu’ils soient liés à la Sociologie,
l’Economie voire la Psychologie.


**Définition : Terrorisme ou Terrorismes**

Partout dans le monde, nous faisons face à des mises en scène violentes perpétrées par divers
acteurs contre des civils ou des institutions, dans le but de nourrir la peur et la crainte de l’autre.
Ainsi, des mouvements politiques qui profitent de la tragédie et opposent les citoyens et les
nations les uns aux autres afin d’obtenir une plus grande adhésion.

Il est important de se rappeler que le terrorisme n’est pas un phénomène nouveau. De nombreux
pays ont souffert, des siècles durant, de groupes, tant intérieurs qu’extérieurs, aussi bien
étatiques que non étatiques, qui se servent de la violence contre des civils comme stratégie
politique. Les raisons des actes terroristes commis sont divers et variés. Néanmoins, leur point
commun résiderait dans la volonté portée par ces acteurs de diviser la société visée en dressant
les citoyens les uns contre les autres en provoquant la répression, la discrimination et la discorde,
tout en attirant de nouveaux adeptes à leur cause au cœur d’une atmosphère de plus en plus
défaitiste et aux réactions polarisées.

Le danger du terrorisme semble donc résider dans la peur et la suspicion qui déclenchent des
vagues de nationalisme voire de populisme, incarnant les revendications vengeresses aveugles.
Ainsi, ces attaques ne visent pas une nation ou un peuple mais chacun d’entre nous et souligne
ainsi le besoin d’être particulièrement critique face à chaque information et évènement, national
ou international.

De fait, ces dernières années, des attaques ont été très médiatisées, de New-York à Moscou, de
Paris à Istanbul, mais elles ne résument pas l’emprise du terrorisme. Dans le nord du Nigeria et
du Cameroun, dans les régions soumises à la loi des cartels de la drogue en Amérique latine,
des communautés se retrouvent également terrorisées, réduites au silence et à la peur. Sur les
mets, le terrorisme maritime menace, particulièrement au large de la Somalie, du Yémen ou du
Golfe de Guinée. De la Syrie aux Philippine, les enlèvements et prises d’otages ont proliféré
ces dernières années, jusqu’à convertir des zones de la planète en territoires interdits.

La violence la plus présente médiatiquement relève surtout de revendications prétendument
religieuses, mais le fléau trouve également ses motivations dans le nationalisme ou le suprécism
d’extrême droite, comme l’attentat d’Osolo et le massacre d’Utoya perpétrés par Anders
Behring Breivik le 22 juillet 2001 en Norvège, voire l’assassinat de la députée travailliste
britannique Jo Cox le 16 juin 2016.

**Objectifs et outils**
L’objectif de ce projet est de réaliser une cartographie des données, obtenues d’un dataset
soigneusement sélectionné, contenant des variables de géolocalisation (longitude, latitude) et
devant être au sein d’un dataset le plus « réaliste » possible, relevant d’une base de données non
récuré.

De plus, nous devions trouver et constituer un dataset pas trop lourd pour permettre son
exploitation et sa manipulation postérieures.

L’enseignant a exigé l’emploi de l’outil de programmation R pour concevoir une cartographie
des données. L’implémentation d’une méthodologie dans le cadre d’une transformation du
dataset pour son exploitation géospatialisée a ainsi été pensée autour des outils préexistants sur
R, pour pouvoir entreprendre l’importation du dataset, le nettoyage des données, la sélection
des variables et la visualisation cartographique des observations restantes.

**Plan**

Pour pouvoir aboutir à l’objectif, défini ci-dessus, et établir une méthodologie permettant une
exhaustivité maximale des résultats, nous avons procédé en plusieurs étapes.
Ce rapport est ainsi introduit par cette introduction contextualisant la thématique du projet et sa
problématique, puis est suivi d’une présentation du dataset d’origine et des variables
sélectionnées. Enfin, les résultats obtenus seront soulignés, accompagnés d’une réflexion sur
ces derniers au travers des limites perçues d’expérimentation.


## Présentation du dataset : Global Terrorism Database
**Comment le GTD agrège ses données ?**

La Base de données sur le Terrorisme Mondiale (Global Terrorism Database : GTD) est une
base de données open source incluant des informations sur des événements terroristes dans le
monde entier de 1970 à 2016, incluant des mises à jour annuelles supplémentaires planifiées
pour l'avenir. Contrairement à beaucoup d'autres bases de données d'événement, la base de
données « GTD » inclut systématiquement toutes les données aussi bien au sujet des incidents
terroristes intérieurs que transnationaux et internationaux qui sont arrivés pendant cette période
et inclut maintenant plus de 170,000 cas. Pour chaque incident des informations sont
disponibles sur le jour et l'emplacement de l'incident, les armes utilisées et la nature de l’objectif,
le nombre de pertes humaines et – quand l’identification est possible - le groupe ou l'individu
responsable.

Les informations statistiques contenues au sein de la base de données s’appuient sur des
rapports issus de sources médiatiques accessibles librement. Les informations ne sont ajoutées
à la base de données qu’après vérification des sources.

**Les caractéristiques de la base de données GTD**

* Elle contient des informations sur plus de 170,000 attaques terroristes.
* Elle est actuellement la base de données non classifiée la plus complète sur des
événements terroristes dans le monde
* Le fichier inclut des informations sur plus de 83,000 attentats à la bombe, 18,000
assassinats et 11,000 enlèvements depuis 1970.
* Les données incluent des informations sur au moins 45 variables pour chaque cas, avec
des incidents plus récents incluant des informations sur plus de 120 variables.
* Plus de 4 000 000 d'articles de nouvelles et 25 000 sources de nouvelles ont été passés
en revue pour rassembler des données d'incident de 1998 à 2016 seules

La Base de données sur le Terrorisme Mondiale est une compilation d'efforts de collecte de
données distincts de 1970 à présent. De 1970 à 1997 les données ont été construites
principalement d'incidents enregistrés en temps réel par PGIS et avec l'utilisation d'une
définition large du terrorisme. Les données de cette période sont mises à jour et corrigées sur
une base actualisée. Les données de 1998 à 2007 sont principalement des données rassemblées
rétrospectivement, tandis que les données sur des événements plus récents sont rassemblées en
temps réel, comprenant des archives médiatiques plus robustes et une méthodologie de
collection des données améliorée.


**Définition du terme terrorisme et des critères retenus dans ce dataset**

Le jeu de données sur le terrorisme mondiale définie une attaque terroriste comme l’utilisation
de menace et de violence illégalement, par un acteur non gouvernemental en vue d’atteindre
une institution politique, économique, religieuse ou sociale par le moyen de : la crainte, la
contrainte ou de l’intimidation. Cela signifie que pour considérer un incident caractérisant notre
définition, 3 éléments seront pris en compte :

1. L’incident doit être intentionnel – il s’agit du résultat d’une préméditation de la part de
l’auteur du criminel.
2. L’incident doit entraîner un certain niveau de violence ou une menace directe de
violence – cela inclue la violence envers des biens de propriétés ainsi que la violence
envers les gens.
3. Les auteurs de ces incidents criminels doivent être des acteurs infranationaux 1 . La base
de données n’inclut pas les actes de terrorisme d’Etat.

De plus, au moins deux des trois critères ci-dessous doivent constituer l’évènement pour être
ajouté dans le dataset Global Terrorism Database :
1. L’acte terroriste doit viser pour atteindre un but politique, économique, religieux ou
social. En termes économiques, la poursuite exclusive du profit n’est pas prise en
considération. L’acte doit être pensé dans une perspective de changement économique
systémique plus profond.
2. Il doit y avoir la preuve d’une intention de contraindre, d’intimider ou de transmettre un
message à un large public, autre que les victimes de l’acte.
3. L’action doit être hors d’un contexte de guerre légitime. L’acte doit être à l’extérieur
des critères permis par la loi internationale.



## Présentation des variables sélectionnées

**Définition des variables :**
Pour permettre une lecture accessible aux francophones qui ont une connaissance de la langue
anglaise limitée, nous avons décidé de traduire de manière la plus exhaustive possible, le nom
de chaque variable.

Pour les débutants en programmation sur R, cette étape a constitué un bon exercice d’habilité
de gestion des variables constituant un dataset et de cette option de changement de noms qui
est souvent utile après l’extraction industrialisé d’un amas de données.

**Doute sur le caractère terroriste de l’incident (Doubt Terrorism Proper : “doubtterr”)**
Nous avons conservé les observations dont l’acte terroriste est indéniable. De fait, dans certains
cas, quelques évènements ne comportent pas tous les critères nécessaires pour déterminer sa
nature et fut codé « 1 » (= « yes ») quand ce fut le cas. Dans le cadre d’une absence de doute
sur la nature terroriste de l’attaque, cette dernière fut codée « 0 ».

Ainsi, pour rester le plus exhaustif possible, nous avons inscrit un code pour conserver
uniquement les observations dont la valeur « O » était inscrit dans cette variable intitulée
« doubtterr », court nom reflétant le titre de « doubt terrorism proper ».

**« année » (« iyear »)**
Cette variable a été traduite par « année » et est numérique, en format « integer ». Il s’agit de
l’année dans laquelle l’incident s’est produit.
Dans le cas où l’évènement s’est produit sur une longue période, cette variable contiendrait
l’année où l’incident a été initié.

**« mois » (« imonth »)**
Ce champ contient le numéro du mois pendant lequel l’incident a eu lieu. La variable a été
traduite par « mois » et est également numérique, en format « integer ».
Si l’incident s’est produit sur une période étendue, seul le mois pendant lequel l’évènement
s’est produit initialement sera enregistré.
Quand le mois exact de l’attaque est inconnu, la valeur enregistrée fut « 0 ».
Après le nettoyage des données, nous avons pu voir qu’il restait cinq observations dont le
numéro du mois était inconnu. Le nombre d’observations étant peu, nous avons entrepris, à
l’instar de plusieurs data analyst professionnels, de rechercher cette information manquante et
apprendre à remplacer une valeur par cette nouvelle sur cette programmation en R. Outre que
cette volonté de glisser dans une hébétude tentante en supprimant les observations aux données
incomplètes, nous avons décidé d’aiguiser nos compétences de base en nettoyage des données
sur R et assouvir notre curiosité intellectuelle en découvrant ces dits-évènements dont le numéro
du mois manquent.

**« jour » (« iday »)**
Cette variable a été traduite par « jour » et est numérique, en format « integer ». Il s’agit du jour
où l’incident s’est produit.
Dans le cas où l’évènement fut pendant une durée prolongée, cette variable contiendrait l’année
où l’incident a été initié.
Quand le jour exact de l’attaque est inconnu, la valeur enregistrée est « 0 ».
Nous avons décidé de conserver les observations dont le jour est inconnu. De fait, les critères
les plus importants demeurent les positions géographiques (longitude, latitude), ainsi que
l’indubitable critère de l’acte terroriste, couplé des informations sur le pays, l’année et le mois
de l’incident, qui permettront une exploitation statistique des observations. De fait, les
statistiques descriptives ne se focaliseraient pas sur le jour mais davantage sur l’année et le mois,
ainsi que la localisation, pour entreprendre une visibilité spatio-temporelle.

**« long_evnmt » (« resolution »)**
Cette variable indique les évènements dont le dénouement est postérieur à 24 heures et inclut
la date de fin de l’incident. Nous avons remplacé la date inscrite dans ce champ par une valeur
indiquant le nombre de jours s’écoulant entre le début et la fin de l’incident.
Nous avons décidé de conserver cette variable, par pure curiosité intellectuelle, pour entrevoir
la proportion d’évènements dont l’aboutissant était complexe et tenter de comprendre certains
facteurs : serait-ce dû au manque de ressources militaires déployées par certains pays ? Ou la
position géographique difficile d’accès (désert ; montagnes...) ?

**Temps de résolution**
Création d’un code qui calcule l’écart entre la date du crime et sa résolution.

**Country_txt**
Ce champ identifie le pays ou l'emplacement au sein duquel l'incident est arrivé. Les régions
séparatistes comme le Cachemire, la Tchétchénie, l'Ossétie du Sud, la Transnistrie, ou la
République de Cabinda sont codés au sein du pays "domestique".
Si le pays au sein duquel un incident est arrivé ne peut être identifié, on lui attribue le code
"Inconnu".

**Region_txt**
Ce champ identifie la région dans laquelle l'incident est survenu. Les régions se divisent au sein
des 12 catégories suivantes et dépendant du pays codé :



Code | Pays
--- | ---
|1 = Amérique du Nord                        | Canada, Mexico, United States
|2 = Amérique central & Caribéen             | Antigua and Barbuda, Bahamas, Barbados, Belize, Cayman Islands, Costa Rica, Cuba, Dominica, Dominican Republic, El Salvador, Grenada, Guadeloupe, Guatemala, Haiti, Honduras, Jamaica, Martinique, Nicaragua, Panama, St. Kitts and Nevis, St. Lucia, Trinidad and Tobago
|3 = Amérique du Sud                         | Argentina, Bolivia, Brazil, Chile, Colombia, Ecuador, Falkland Islands, French Guiana, Guyana, Paraguay, Peru, Suriname, Uruguay, Venezuela
|4 = Asie de l’Est                           | China, Hong Kong, Japan, Macau, North Korea, South Korea, Taiwan
|5 = Asie du Sud-Est                         | Brunei, Cambodia, East Timor, Indonesia, Laos, Malaysia, Myanmar, Philippines, Singapore, South Vietnam, Thailand, Vietnam
|6 = Asie du Sud                             | Afghanistan, Bangladesh, Bhutan, India, Maldives, Mauritius, Nepal, Pakistan, Sri Lanka
|7 = Asie Centrale                           | Armenia, Azerbaijan, Georgia, Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, Uzbekistan
|8 = Europe de l’Ouest                       | Andorra, Austria, Belgium, Cyprus, Denmark, Finland, France, Germany, Gibraltar, Greece, Iceland, Ireland, Italy, Luxembourg, Malta, Netherlands, Norway, Portugal, Spain, Sweden, Switzerland, United Kingdom, Vatican City, West Germany (FRG)
|9 = Europe de l’Est                         | Albania, Belarus, Bosnia-Herzegovina, Bulgaria, Croatia, Czech Republic, Czechoslovakia, East Germany (GDR), Estonia, Hungary, Kosovo, Latvia, Lithuania, Macedonia, Moldova, Montenegro, Poland, Romania, Russia, Serbia, SerbiaMontenegro, Slovak Republic, Slovenia, Soviet Union, Ukraine, Yugoslavia 
|10 = Moyen-Orient & Afrique du Nord         | Algeria, Bahrain, Egypt, Iran, Iraq, Israel, Jordan, Kuwait,Lebanon, Libya, Morocco, North Yemen, Qatar, Saudi Arabia, South Yemen, Syria, Tunisia, Turkey, United Arab Emirates, West Bank and Gaza Strip, Western Sahara, Yemen
|11 = Afrique Sub-saharien                   | Angola, Benin, Botswana, Burkina Faso, Burundi, Cameroon, Central African Republic, Chad, Comoros, Democratic Republic of the Congo, Djibouti, Equatorial Guinea, Eritrea, Ethiopia, Gabon, Gambia, Ghana, Guinea, Guinea-Bissau, Ivory Coast, Kenya, Lesotho, Liberia, Madagascar, Malawi, Mali, Mauritania, Mozambique, Namibia, Niger, Nigeria, People's Republic of the Congo, Republic of the Congo, Rhodesia, Rwanda, Senegal, Seychelles, Sierra Leone, Somalia, South Africa, South Sudan, Sudan, Swaziland, Tanzania, Togo, Uganda, Zaire, Zambia, Zimbabwe
|12 = Asie Australe &  Océanie               | Australia, Fiji, French Polynesia, New Caledonia, New Hebrides, New Zealand, Papua New Guinea, Solomon Islands, Vanuatu, Wallis and Futuna


**ProvState$**
Cette variable enregistre le nom de la région administrative dans laquelle l'événement a lieu.

**City**
Ce champ contient le nom de la ville, le village, ou la ville dans lequel l'incident survenu.

**Latitude**
Ce champ enregistre la latitude de la ville au sein de laquelle l’évènement à lieu en s’appuyant
sur la norme WGS1984.

**Longitude**
Ce champ enregistre la longitude de la ville au sein de laquelle l’évènement à lieu en s’appuyant
sur la norme WGS1984.

**Attacktype1_txt**
Ce champ sélectionne la méthode générale des attaques et reflète souvent une large classe des
tactiques utilisées. Cela constitue 9 catégories qui sont définies ci-dessous. 3 types d’attaques
peuvent être enregistrées pour un incident.

**Targtype1_txt**
Quand une victime est attaquée spécifiquement à cause de sa relation à une personne
particulière, comme une figure en vue, le type cible reflète ce motif.

Code | Description
--- | ---
1 | BUSINESS
2 | GOVERNMENT (GENERAL)
3 | POLICE
4 | MILITARY
5 | ABORTION RELATED
6 | AIRPORTS & AIRCRAFT
7 | GOVERNMENT (DIPLOMATIC)
8 | EDUCATIONAL INSTITUTION
9 | FOOD OR WATER SUPPLY
10 | JOURNALISTS & MEDIA
11 | MARITIME (INCLUDES PORTS AND MARITIME FACILITIES)
12 | NGO
13 | OTHER
14 | PRIVATE CITIZENS & PROPERTY
15 | RELIGIOUS FIGURES/INSTITUTIONS
16 | TELECOMMUNICATION
17 | TERRORISTS/NON-STATE MILITIAS
18 | TOURISTS
19 | TRANSPORTATION (OTHER THAN AVIATION)
20 | UNKNOWN
21 | UTILITIES
22 | VIOLENT POLITICAL PARTIES


**Nationality of Target/Victim**
(natlty1; natlty1_txt) Categorical Variable. 
Il s’agit de la nationalité d’une cible qui a été a été attaqué et qui n’est pas nécessairement du
même pays où l’incident à eu lieu. Cependant dans la plupart des cas cela est vrai.

**Categorical Variable**
Cette variable code « oui » les cas où il y a une preuve que le terroriste n’a pas tenté d’échapper
de l’attaque vivant. 1 = Oui. L’incident était une attaque suicide. 0 = Non aucune indication que
l’incident était une attaque suicide.

**Les critères catégorisant l’attaque terroriste :**
Les observations reportées et conservées dans ce database devaient remplir plusieurs conditions,
dont un but défini constituant un objectif revendiqué.

**« Pol_eco_rel_soc » (« crit 1 »)**
L’acte violent doit, dans sa visée, d’atteindre un but politique, économique, religieux ou social.
Ce critère ne considère pas les attaques dont l’attaquant a acté dans le but d’un pur profit
mercantile, voire d’un motif personnel idiosyncratique non corrélé avec un changement sociétal.
Ainsi, de manière binaire, si l’acte est corrélé à ce critère 1, il est inscrit « 1 » (= »yes »). Dans
le cas échéant, il est inscrit « 0 ».

**« contr_intimd_mess » (« crit 2 »)**
Pour remplir les conditions de ce critère, il doit y avoir la preuve que l’acte terroriste a été pensé
dans le but de contraindre, d’intimider ou de véhiculer un message à l’attention d’un ou
plusieurs public(s), autre que ses directes victimes.
De nouveau, de manière binaire, si l’acte est corrélé à ce critère 1, il est inscrit « 1 » (= »yes »).
Dans le cas échéant, il est inscrit « 0 ».

**« non_droit_internat » (« crit 3 »)**
Si l’acte a été engendré sans respecter le droit international de la Convention de Genève, décrété
le 12 Août 1949, dans le contexte d’une guerre. Autrement dit, lorsque l’incident vise des
individus considérés comme non-combattants : civils...

Ainsi, de manière binaire, si l’acte est corrélé à ce critère 1, il est inscrit « 1 » (= »yes »). Dans
le cas échéant, il est inscrit « 0 ».

**“soustype_cible” (targsubtype1_txt)**
Cette variable qualitative tente de souligner de manière plus précise des cibles en annonçant les
sous-catégories de cibles. Si la cible précise n’est pas connue, elle sera inscrite comme inconnue
« unknown » 

**Success of Attack**
Le succès d’une frappe terroriste est défini selon les effets tangibles de l’attaque. Le succès
n’est pas jugé en ce qui concerne les grands objectifs des auteurs. Par exemple, une bombe qui
a explosé dans un bâtiment peut être considérée comme un succès même si elle n’a pas réussi
à abattre le bâtiment ou induisant la répression gouvernementale. La définition d’une attaque
réussie dépend du type d’attaque. Essentiellement, la question clé est de savoir si ou non le type
d’attaque a eu lieu. Si une affaire a plusieurs types d’attaque, c’est réussi si l’un des types
d’attaque est réussi, à l’exception des assassinats, qui réussissent uniquement si la cible est tuée.
1 = « oui » l’incident a été un succès. 0 = « non » l’incident n’a pas réussi.

**Conclusion sur le nettoyage des données**
Dans le cadre de l’objectif donné par l’enseignant d’établir une cartographie des données, nous
avons décidé de conserver toutes les variables décrites ci-dessus, considérées comme
importantes, ne pouvant ne pas être, et pouvant révéler certains facteurs descriptifs de la
qualification d’une attaque terroriste.


## Analyse de scraping sur l’API Twitter

**Analyse des données à partir de scraping sur Twitter**

![1](uploads/7494821ba1e99ca960a299e183d4f96d/1.png)
Ici, il s’agit de l’étape d’authentification qui a nécessité l’usage des 4 clés ci-dessus. Cela permet l’ouverture d’une passerelle avec l’API Twitter. En effet, un compte avait préalablement été créé sur : Aps Twitter.

![image](uploads/12c440787da4007cd4ef473a12a07b7e/image.png)
Ici, nous paramétrons notre recherche selon les mots clés – terroriste – et – attaque – de sorte
qu’apparaissent uniquement les tweets incluant ces mots clés. De surcroît, nous ajustons notre
programme afin de collecter de 2000 tweets.

![image](uploads/3f777f2fc8c22411bf90572b4d7f6c64/image.png)
Cette capture d’écran illustre l’affichage que nous avons réglé, à savoir celui des 2 premiers
tweets de notre collecte. Grâce à cela nous pouvons nous faire une idée de notre collecte de
données sur une taille observable contrairement à une plage de milliers d’informations, qui nous
serait inutile.

![image](uploads/47c689cc89814de5a9779728843fd728/image.png)
Dans ce paramétrage nous avons choisi de faire une sauvegarde de nos tweets collectés au sein
d’un fichier csv. Grâce à cela, nous nous donnons la possibilité d’exporter nos données. Par
ailleurs nous avons affiché le tableau résumant les informations récoltées. Parmi les
informations recueillies, celle sur la longitude et la latitude nous intéressent bien qu’elles ne
soient pas communiquées. Aussi nous expliquons cette difficulté dans la partie du rapport
relavant des limites et préconisations. Ceci dit, nous nous intéressons de prime abord au texte.
Ici, nous pouvons voir que la date la plus éloignée n’est que du 14/05/2018, tandis que la plus
récente est du 20/05/2018. Ceci traduit une autre limite que nous, celle de l’accès aux données
archivés de plus de 5 jours qui n’est pas ouvert aux comptes gratuits.

![image](uploads/85028da689f82f5b268bc9f97791a752/image.png)
Ici, nous faisons une lecture du fichier que nous avons préalablement sauvegardé. Nous
pouvons identifier la dimension du tableau : il dispose de 16 colonnes et de 2000 lignes.

![image](uploads/ba9319652df811caefbd430c37b14440/image.png)

Commentaire :
1. Nous opérons la conversion du fichier sauvegardé selon l’encodage utf-8 ;
2. Nous programmons le corpus en vecteur ;
3. Nous réglons la ponctuation pour l’en défaire. Il s’agit du préalable à l’analyse du texte,de sorte à ce qu’il soit dépouillé et traité correctement
4. En l’espèce, nous changeons la casse : les majuscules sont maintenant en minuscule
5. Enfin, nous produisons un affichage des 5 premiers tweets afin d’avoir une première
visualisation notre traitement.

![image](uploads/3b5302be29b6a3a624da92f814925985/image.png)
Afin de permettre la réalisation de notre analyse textuelle, il convient de dépouiller le corpus
des stopwords ou mot vide, à savoir des mots que les moteurs de recherche ne prennent pas en
compte à l’instar de : le, la, pour, avec etc. Notre objectif consiste précisément au calcul de la
fréquence des mots. Pour ce faire, il convient donc de dépouiller le corpus de ces termes non
essentiels à notre recherche. Du reste, l’affichage illustre des erreurs : existence d’espaces et de
mots non pertinent dans notre recherche.

![image](uploads/427ab279f2f46a32c659b035aea6e752/image.png)
Ici, nous appliquons nos corrections en retranchant les mots ci-dessus de couleur rouge. Ces
termes sont donc écartés de l’analyse afin d’extraire en substance, autant que faire se peut,
l’entièreté de l’information utile.

![image](uploads/7fcdc245b95b4de130d350b4b2fc8b83/image.png)
Après avoir fait le nettoyage, nous avons fait une conversion des données au sein d’une matrice.
Ensuite, nous avons affiché les 20 premiers tweets, plutôt que les 2000. Ce tableau montre
l’inscription des mots pour chacun des tweets. En effet, au fur et à mesure de l’observation des
tweets, nous remarquons que les mots que nous avons défini tel que « pénal » ou « fichée »
s’affichent pour le 1 er tweet mais pas pour les 19 suivants. La matrice de droite propose une
autre série de mots et montre une plus net distribution des termes par tweet. On observe par
exemple le 20 ème terme comporte le mot « records », « fois » mais pas le terme « imams » ou
« raison ».

![image](uploads/33cd1afc6dc7438ac8d50446911ba523/image.png)
Ce graphique nous permet d’identifier la fréquence des sentiments analysés au sein des
informations récoltés sur les 5 derniers jours. Nous remarquons une variation de la tendance,
avec une forte hausse pour les termes terrorisme, ramadan, période, raison puis une baisse avec
le terme politique pour ensuite arriver a au point culminant du diagramme avec le terme attentat
qui recueille la tendance la plus forte parmi les tweets. Du reste, la variation se poursuit mais
en déclinant puis conserve une certaine stabilité.

![image](uploads/8929e0200ddf1610de9ce5757c1e956b/image.png)
Chaque ligne indique un tweet et donne le score pour chaque sentiment. Cela nous permet
d’avoir une visualisation des sentiments afin d’opérer des comparaisons. Ici, les données
significatives seraient par exemple d’apprendre le sentiment négatif analysé dans le premier
tweet.

![image](uploads/ea568fe4a2e268845ae24b9d9607ccaf/image.png)
Ce diagramme présente une analyse de sentiment sur 2000 tweets et illustre l’état de la tendance
du 14 au 20 mai 2018. En l’espèce, une rupture significative traduit l’analyse d’un sentiment
négatif contenu sur plus de 600 tweets, loin devant la deuxième valeur la plus haute positionnée
sur environ 360 tweets, qui est le sentiment de dégoût. Interpréter ces résultats ne peut se faire
qu’en analysant l’actualité et ses faits marquants. En l’espèce, parmi les faits marquant de
l’actualité, figure notamment l’attaque terroriste au couteau qui a eu lieu à Paris le 12 mai 2018.
Liste des Attaques terroriste dans le monde cette dernière semaine :

* 13 mai: Afghanistan. L'attaque d'hommes armés d'un bâtiment officiel à Jalalabad fait
au moins neuf morts et 36 blessés.
* 13 mai: Surabaya 3 lieu de cultes chrétiens sont touchés par des attentats suicides avec 13 morts et une quarantaine de blessés.
* 14 mai : les grévistes se rassembles pour une assemblée générale, annoncant le début de la vot’action.
* 14 mai : bande de Gaza 59 manifestants tués et 2000 blessés par les forces Israéliennes.
* 16 mai : Irak. Un kamikaze fait huit morts et une trentaine de blessés au cours d'un
attentat-suicide à Bagdad.
* 18 mai : Afghanistan. Un triple attentat à la bombe visant un match de cricket fait au
moins huit morts et 40 blessés à Jalalabad.

Au travers le prisme de ces informations nous pouvons proposer une lecture de la tendance de
notre graphique. En l’espèce, nos résultats semblent rationnels au vu des évènements cités ci-
dessous, car lorsque l’on voit qu’un sentiment négatif prime largement au-dessus des autres,
suivi d’un autre sentiment celui du « dégoût », cela peut signifier combien l’opinion collective
se place vis-à-vis de ce type d’évènements. Elle manifeste un vif désaccord avec les évènements
qui ont eu lieu mais aussi un dégoût lié à l’excès, la répétition et la gravité des évènements. Du
reste, la peur illustre une certaine corrélation avec cette interprétation suivie dans une moindre
mesure par la colère. Pour le reste des variables à l’instar du ressenti positif analysé, ceci peut
être soit dû à la mise en œuvre d’actions positives de lutte comme l’ont illustré les grévistes
voire à d’autres évènements de l’actualité, qui eux peuvent n’avoir aucun lien avec notre sujet,
à savoir un évènement qui a eu un fort écho médiatique à l’instar du mariage du prince Harry
du Royaume Uni.



## Statistiques descriptives du GTD
**Visualisation via l’outil tableau**
Voici quelques exemples des statistiques réalisées avec l’outil Tableau.
![image](uploads/4680a68710cb6027423e1c558010004d/image.png)
La taille des cercles est bien différenciée afin de présenter une perception claire et rapide de
notre message. Certes, si la taille est proportionnelle au nombre d’attaque, celle-ci illustre
visuellement l’historique des attaques survenues de 1970 à 2016, à l’échelle internationale. La
cartographie montre une tendance des attaques nettement moins élevées sur les mégalopoles
des Etats-Unis et de Russie que sur le reste du monde. La concentration des attaques est
davantage centré sur les mégalopoles en Europe, en Asie puis en Amérique latine et enfin en Afrique.

![image](uploads/37ff582f0e345b5fd587dc29bdaf9ad1/image.png)


![image](uploads/f887cc6cbd174354a0950e8fc7135798/image.png)

Visualisation de nos 27 graphiques avec l’outil Tableau
[Lien](https://public.tableau.com/views/Classeur1_646/World_map_nb_attaq?:embed=y&:display_count=yes&publ
ish=yes)

Liste des statistiques descriptives sur la base de données du Terrorisme mondial :
![image](uploads/16bb702430d291b4ed6ebdb1b4f1b284/image.png)


## Shiny & leaflet : cartographie des attentats survenus de 1970 à 2016

**Visualisation dynamique avec R**

 [Lien vers le site d’hébergement de la cartographie:](https://mohamedfoisdeuxfodetina.shinyapps.io/BeraProject/)

![image](uploads/435062ab0805c00d83dd8f18504d7431/image.png)
Il s’agit d’une carte du monde interactive qui permet de visualiser chaque attaque terroriste par année, de 1970 à 2016, hébergé sur Shiny.

Cette visualisation des attaques perpétrés entre 1970 et 1978. La carte nous permet de voir l’évolution chronologique des attaques grâce au curseur que l’on peut déplacer de gauche à droite, de 1970 à 2016.


Nous avons rencontré une difficulté lors de la réalisation de cette carte en proportion, « carte
qui permet de visualiser les quantités en valeurs absolues des composantes d’un fait
géographique grâce à la variation de la surface des symboles exprimant des quantités » 3 . Notre
souhait était de représenter visuellement la taille de sorte que la surface d’un figuré soit
proportionnel aux quantités. Pour ce faire, il s’agit d’utiliser pour les cercles proportionnels, la
racine carrée du côté ou du rayon afin de maîtriser la proportionnalité des figurés.

En effet, le cercle représente la figure la plus facile à construire mais aussi la plus lisible. Il est de plus difficile de respecter la règle de proportionnalité avec des formes complexes, et entravent une vision convenable de l’information.


## Limites et préconisations

**Expertise sur R**
Personne dans le groupe ne maîtrisait R et les échanges avec les autres étudiants qui manipulent
assez souvent ce langage de programmation étaient restreints par notre présence en alternance
en formation et en entreprise. Toutefois, nous avons appris au fur et à mesure du traitement des
cartes, à mieux appréhender l’exercice de la cartographie mais aussi à acquérir une certaine
maîtrise du langage de programmation.

**La gestion du temps**
Contrainte avec rythme d’alternance + multitude de projets de groupe et individuels donnés par
les enseignants du Master.

**Traitement de certains termes du sujet**
Des attaques terroristes peuvent avoir été perçues comme étant légitimes, comme les attaques
envers les individus des communautés dites "Black American", qui n'ont pas été reportées à la
police entre autres, voire les attaques perpétrées par des gouvernements au sein de leurs pays,
en secret ou sans traces écrites de ces interventions.

**Scraping sur Twitter**

La version gratuite est limitée non seulement pour une durée d’utilisation d’un mois, mais
présente également une restriction en termes de données. En effet le nombre de donnée
exploitable sur l’API Twitter est limité à 3500 observations, et limite les recherches à un historique des données de 5 jours maximum.

## Conclusion générale du rapport

**La conception de cartographie fait appel à une analyse de thématique avancée, et reste un domaine à explorer**

La description et l’explication des distributions spatiales de phénomène géographique font
nécessairement appel à une connaissance de la géographie physique et humaine. En l’espèce
sur le plan national et international, ce n’est qu’à partir de connaissances et de compétences en
géopolitique avancée qu’une interprétation sérieuse des phénomènes de distributions spatiales
pourra être prononcée. Nous préconisons donc de poursuivre une recherche en géopolitique
afin d’exploiter autant que faire se peut la réflexion intellectuelle qu’a nécessité la conception et la réalisation de nos cartes.


In fine, nous avons pris conscience de l’extrême complexité qu’il y a dans l’explication de
phénomène d’attentat et de terrorisme. Néanmoins il existe des algorithmes en mesure de mieux
répartir les interventions des forces de l’ordre, recourant à l’historique des délits recueillis sur
une zone géographique donnée.




