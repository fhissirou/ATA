#ouverture du dataset de START
library(dplyr)

df_terrorism <- read.csv("~/Analyse spatiale/gtd/dataset original-globalterrorism.csv",
                    header= TRUE,
                    #na.strings = c(""),
                    stringsAsFactors=FALSE,
                    sep = ";")

dim(df_terrorism)
glimpse(df_terrorism)

names(df_terrorism)

keep <- c("iyear",
          "imonth",
          "iday",
          "resolution",
          "country_txt",
          "region_txt",
          "provstate",
          "city",
          "latitude",
          "longitude",
          #RAJOUTER GROUPES TERRORISTES ?
          "doubtterr",
          "attacktype1_txt",
          "targtype1_txt",
          "targsubtype1_txt",
          "natlty1_txt",
          "suicide",
          "weaptype1_txt",
          "nkill",
          "nwound",
          "propextent_txt",
          "success"
)

df_terrorism <- df_terrorism[keep]

#vérification de la conservation de 23 variables sur 135
dim(df_terrorism)

names(df_terrorism)

#Garder observations que si "doubtterr" est égal à "0"
df_terrorism <- subset(df_terrorism, doubtterr == "0")

#Suppression de la variable "doute_terr"/"doubtterr", après avoir gardé seulement les évènements dont l'acte terroriste est indéniable
df_terrorism <- subset(df_terrorism, select = -c(doubtterr))
names(df_terrorism)


#Calcul du nombre d'observations conservées. Seules celles dont un acte terroriste est indubitable ont été gardées

dim(df_terrorism)

#Vérification de la dataframe pour les observations manquantes
colSums(is.na(df_terrorism))

#Suppression des observations dont les coordonnées géographiques (longitude ou latitude) sont manquantes
table(is.na(df_terrorism$latitude))
df_terrorism <-df_terrorism[!is.na(df_terrorism$latitude),]

#Deuxième vérification pour identifier les observations nulles
colSums(is.na(df_terrorism))

#suppression des observations manquantes pour la variable "nwound"
df_terrorism <- df_terrorism[!is.na(df_terrorism$nwound & df_terrorism$nkill),]

colSums(is.na(df_terrorism))

#Suppression des observations dont le mois == 0
df_terrorism <- subset(df_terrorism, imonth!= "0" & iday!="0")


#resolution : date inscrite SI l'évènement a duré plus de 24 heures
#calculer différence entre la date (agrégat de "iyear" + "imonth" + "iday")
#inscrire le résultat sous cette forme : "+"2"j")

#Changer les observations manquantes des variables qualitatives par "Unknown" 
#("Unknown" signifie "information inconnue")
df_terrorism[df_terrorism==""]<-"Unknown"

#changer valeurs "unknown" de la variable/colonne "resolution" en espaces vides " "
df_terrorism$resolution<-gsub("Unknown","",df_terrorism$resolution)

#renommer les variables pour une meilleure compréhension du dataset
df_terrorism <- rename(df_terrorism, mois = imonth, jour = iday, 
                        long_evnmt = resolution, succes = success,
                        pays = country_txt, province_etat = provstate,
                        ville = city, type_attaque = attacktype1_txt,
                        type_cible = targtype1_txt, soustype_cible = targsubtype1_txt,
                        nat_cible = natlty1_txt, type_arme = weaptype1_txt,
                        nb_tues = nkill, nb_blesses = nwound, 
                        degats_materiels = propextent_txt, annee = iyear,
                        pol_eco_rel_soc = crit1, contr_intimd_mess = crit2,
                        non_droit_internat = crit3)

names(df_terrorism)

#Enregistrer en format CSV 
write.csv(df_terrorism, "df_terrorisme.csv", row.names=FALSE)
