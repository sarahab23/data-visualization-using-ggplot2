library(leaflet)
head(quakes)
#quakes is a built_in dataframe of many places,here in the map markers are clustered,
#we are trying to overcome it in 2 methods
map <- leaflet(quakes) %>% addTiles() %>% addMarkers(lng = quakes$long,
                                                     lat = quakes$lat)
print(map)
#method1- clusterOptions(clusters formed with distance in btw places)
#wtf error while saving html file???????
mapa <- leaflet(quakes) %>% addTiles() %>% addMarkers(clusterOptions = markerClusterOptions())
saveWidget(mapa,file="mapa.html",selfcontained=F)
display_html(paste("<iframe src =' ",'mapa.html'," 'width='100%' height='300'","/>"))
print(mapa)
#method2- Add circles
mapb <- leaflet(quakes) %>% addTiles() %>% addCircles(lng = quakes$long,lat=quakes$lat)
print(mapb)
#highlight an area
mapc <- leaflet() %>% addTiles() %>% addMarkers(lng = 76.3930,lat = 10.1518,popup = "CIAL Airport") %>% addRectangles(75.9345,9.1518,77.3930,11.1518)
print(mapc)