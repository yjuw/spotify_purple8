library(ggplot2)

spotify_df <- read.csv("./spotify_files/data.csv")
spotify_df <- spotify_df[,c(-2,-4,-8,-9,-11,-14,-15,-17)]

names(spotify_df)


ggplot(data = spotify_df) +
    geom_histogram(aes(x = valence)) +
    labs(x = "Valence (positivity)")

ggplot(data = spotify_df) +
    geom_histogram(aes(x = tempo)) +
    labs(x = "tempo")

ggplot(data = spotify_df) +
    geom_histogram(aes(x = speechiness)) +
    labs(x = "speechiness")

ggplot(data = spotify_df) +
    geom_histogram(aes(x = acousticness), bins=35) +
    labs(x = "acousticness")

ggplot(data = spotify_df) +
    geom_histogram(aes(x = danceability)) +
    labs(x = "danceability")

ggplot(data = spotify_df) +
    geom_histogram(aes(x = energy), bins=35) +
    labs(x = "energy")

ggplot(data = spotify_df) +
    geom_histogram(aes(x = instrumentalness)) +
    labs(x = "instrumentalness")

ggplot(data = spotify_df) +
    geom_histogram(aes(x = liveness)) +
    labs(x = "liveness")

ggplot(data = spotify_df) +
    geom_histogram(aes(x = loudness)) +
    labs(x = "loudness")

ggplot(data = spotify_df) +
    geom_histogram(aes(x = tempo)) +
    labs(x = "tempo")

