
# Load raster package
library(raster)

# Map of India
# Downlaod data from GADM website i.e. https://gadm.org/download_country_v3.html
india0<-readRDS("gadm36_IND_0_sp.rds")
plot(india0,border="blue")

# Map of India with State Borders
india1<-readRDS("gadm36_IND_1_sp.rds")
plot(india1,border="blue")


# Map of India with State and District Borders
india3<-readRDS("gadm36_IND_2_sp.rds")
plot(india3,border="blue")

# Map of India with State, District and Taluka Level
india3<-readRDS("gadm36_IND_3_sp.rds")
plot(india3,border="blue")

# Adding title and subtitle to the Map of India
india3<-readRDS("gadm36_IND_3_sp.rds")
plot(india3,border="blue")+
  title(main = "Map of India with State, District 
        and Taluka boundary",sub = "Source GADM Data")
