#package for maps
library(leaflet)
#to view map of empty whole world
map <- leaflet()
print(map)
#to add tiles in map,used to zoom in and out
mapa <- leaflet() %>% addTiles()
print(mapa)
#Marking a place by specifying it's lattitude and longitude and if needed a popup
#name can be added
mapb <- leaflet() %>% addTiles() %>% addMarkers(lng = 76.3930,lat = 10.1518,
                                                popup = "CIAL Airport")
print(mapb)
#using a different tile
mapc <- leaflet() %>% addProviderTiles("Stamen.Watercolor") %>% 
  addMarkers(lng = 76.3930,lat = 10.1518,popup = "CIAL Airport")
print(mapc)