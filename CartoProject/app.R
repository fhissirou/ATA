#ouverture du dataset de START
df_terrorism <- read.csv("globalterrorismdb_0617dist.csv",
                         header= TRUE,
                         #na.strings = c(""),
                         stringsAsFactors=FALSE,
                         sep = ",")
library(dplyr)
library(shiny)
library(leaflet)
library(RColorBrewer)
library(rsconnect)


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
          "success",
          "gname"
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



#Certains évènements ont duré plus de 24 heures. Nous avons donc décidé de calculer l'écart temporel entre l'initiation et sa fin, inscrite en date sous la variable "resolution".
#resolution : date inscrite SI l'évènement a duré plus de 24 heures
#calculer différence entre la date (agrégat de "iyear" + "imonth" + "iday")
#inscrire le résultat sous cette forme : "+"2"j")

#Au lieu de parcourir le dataFrame avec une boucle on va lui injecter directement une fonction pour chacune de ces lignes grâce à la fonction apply()

library(stringr) # library utile pour la concatenation de string dans notre cas 
#mais elle est également utile pour la manipulation de chaines de caractère en général

#df_terrorism$temps_de_resolution <- NA

temps_de_resolution <- c()

ecart_resolution  <- function(df) { 
  year <- df["iyear"]
  month <- df["imonth"]
  day <- df["iday"]
  # gsub nous permet d'enlever les espaces, ce qui va nous permetre de concaténer.
  month <- gsub(" ", "", month, fixed = TRUE)
  day <- gsub(" ", "", day, fixed = TRUE)
  #placement des variables au sein d'un vecteur (aka "liste")
  x <- cbind(year,month,day)
  
  dateDeDebut <- as.Date(str_c(x, collapse = "/"))
  #str_c nous permet de transformer notre vecteur en string en fusionnant tous les éléments de celui-ci et avec l'argument "collapse on" mais un slash entre les éléments ce qui va nous permettre de recréer la date
  #as.Date nous permet de convertir un string en date
  
  #Après avoir reconstituer la date, nous allons pouvoir calculer le temps entre le début d'une attaque et la fin, dotn la date apparaît dans la variable "resolution"
  if(df["resolution"] != "" || is.null(df["resolution"]) ){
    dateDeResolution <- as.Date(df["resolution"], "%m/%d/%Y")
    
    tempsDeResolutionEnJour <- dateDeResolution - dateDeDebut 
    #df["temps_de_resolution"] <- tempsDeResolutionEnJour
    temps_de_resolution <- c(temps_de_resolution,tempsDeResolutionEnJour)
    print(temps_de_resolution)
    
    
  }else{
    temps_de_resolution <- c(temps_de_resolution,NA)
  }
  return(temps_de_resolution)
}

df_terrorism$temps_de_resolution_en_jour <- apply(df_terrorism, 1, ecart_resolution)

#Changer les observations manquantes des variables qualitatives par "Unknown" 
#("Unknown" signifie "information inconnue")
df_terrorism[df_terrorism==""]<-"Unknown"

#changer valeurs "unknown" de la variable/colonne "resolution" en espaces vides " "
df_terrorism$resolution<-gsub("Unknown","",df_terrorism$resolution)


lieuxDesAttentas <- data.frame(Ville = df_terrorism$city,
                               Latitude = df_terrorism$latitude,
                               Longitude = df_terrorism$longitude,
                               temps_de_resolution = df_terrorism$temps_de_resolution_en_jour,
                               nomATK = df_terrorism$gname,
                               iyear = df_terrorism$iyear)

#m <- leaflet(lieuxDesAttentas) %>% addTiles() %>%
#  addCircles(lng = ~Longitude, lat = ~Latitude, weight = 1,
#             radius = 2 * 50, popup = ~paste(Ville, ":", Population),
#             color = "#a500a5", fillOpacity = 0.5)

r_colors <- rgb(t(col2rgb(colors()) / 255))
names(r_colors) <- colors()

ui <- fluidPage(
  leafletOutput("map"),
  p(),
  sliderInput("range", "Annees", min(df_terrorism$iyear), max(df_terrorism$iyear),
              value = range(1970,1971), step = 1
  )
)

server <- function(input, output, session) {
  
  # Reactive expression for the data subsetted to what the user selected
  filteredData <- reactive({
    lieuxDesAttentas[lieuxDesAttentas$iyear >= input$range[1] & lieuxDesAttentas$iyear <= input$range[2],]
  })
  
  
  #  points <- eventReactive(input$recalc, {
  #    cbind(rnorm(40) * 2 + 13, rnorm(40) + 48)
  #  }, ignoreNULL = FALSE)
  
  output$map <- renderLeaflet({
    leaflet(lieuxDesAttentas) %>% addTiles() %>%
      addCircles(lng = ~Longitude, lat = ~Latitude, weight = 2,
                 radius = 50, popup = ~paste(Ville, ":", nomATK),
                 color = "#FF0000", fillOpacity = 0.2)
  })
  
  # Incremental changes to the map (in this case, replacing the
  # circles when a new color is chosen) should be performed in
  # an observer. Each independent set of things that can change
  # should be managed in its own observer.
  observe({
    leafletProxy("map", data = filteredData()) %>%
      clearShapes() %>%
      addCircles(lng = ~Longitude, lat = ~Latitude, weight = 2,
                 radius = 50, popup = ~paste(Ville, ":", nomATK),
                 color = "#FF0000", fillOpacity = 0.2)
  })
}

shinyApp(ui, server)




#renommer les variables pour une meilleure compréhension du dataset
#df_terrorism <- rename(df_terrorism, mois = imonth, jour = iday, 
#                       long_evnmt = resolution, succes = success,
#                       pays = country_txt, province_etat = provstate,
#                       ville = city, type_attaque = attacktype1_txt,
#                       type_cible = targtype1_txt, soustype_cible = targsubtype1_txt,
#                      nat_cible = natlty1_txt, type_arme = weaptype1_txt,
#                       nb_tues = nkill, nb_blesses = nwound, 
#                       degats_materiels = propextent_txt, annee = iyear,
#                       region = region_txt, gname=nom_groupe_terr ) 


#Enregistrer en format CSV 
#write.csv(df_terrorism, "df_terrorisme.csv", row.names=FALSE)
