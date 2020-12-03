library(ggplot2)

spotify_df <- read.csv("./spotify_files/data.csv")
spotify_df <- spotify_df[,c(-2,-4,-8,-9,-11,-14,-15,-17)]

names(spotify_df)
