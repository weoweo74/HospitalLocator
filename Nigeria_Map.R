DATA<-read.csv("https://github.com/weoweo74/HospitalLocator.git//datanigeria.csv",header=T)
str(DATA)

# First Second and Third Column with All rows
DATA[,c(1,1:3)]

map<-leaflet(DATA)%>% addTiles()%>%
addMarkers(lat=DATA$lat, lng = DATA$long, popup=DATA$name)

library(leaflet)
m <- leaflet() %>%
  addTiles(m) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lat=DATA$lat, lng = DATA$long, popup=DATA$name,

data = getMapData(map))


 # Print the map
m <- leaflet()
m <- addTiles(m)
m <- addMarkers(m, lat=DATA$lat, lng = DATA$long, popup=DATA$name)
m

m %>%
  # Fitting bounds size and position of the Map frame
  fitBounds(9.45, 6.95, 4.22, 4.35) %>%
  addMeasure(
    position = "bottomleft",
    primaryLengthUnit = "meters",
    primaryAreaUnit = "sqmeters",
    activeColor = "#3D535D",
    completedColor = "#7D4479")



