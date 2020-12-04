set.seed(111)
library(reshape2)
library(dplyr)
#spotify url format http://open.spotify.com/track/idnumber

big_df <- readRDS("big_df.rds")
user <- readRDS("user.rds")


automatic_generation <- function(big_df, user){
  #    calculate how many songs are from cluster 1, 2, and 3
  cluster1 <- sum(user$`kmeans$cluster`==1)
  cluster2<- sum(user$`kmeans$cluster`==2)
  cluster3<- sum(user$`kmeans$cluster`==3)
  
  returned_list <- (sample_n(big_df[big_df$`kmeans$cluster`==1,], cluster1))
  returned_list <- rbind(returned_list, sample_n(big_df[big_df$`kmeans$cluster`==2,], cluster2))
  returned_list <- rbind(returned_list, sample_n(big_df[big_df$`kmeans$cluster`==3,], cluster3))
  cbind(returned_list$name, returned_list$id)
}

auto_list <- automatic_generation(big_df, user)
auto_list[,2] <- paste("http://open.spotify.com/track/", auto_list[,2])

set.seed(753984)
auto_list1 <- automatic_generation(big_df,user)
auto_list1[,2] <- paste("http://open.spotify.com/track/", auto_list1[,2])

set.seed(123456)
auto_list2 <- automatic_generation(big_df,user)
auto_list2[,2] <- paste("http://open.spotify.com/track/", auto_list2[,2])

write.csv(auto_list, "autolist1.csv")
write.csv(auto_list1, "autolist2.csv")
write.csv(auto_list2, "autolist3.csv")
write.csv(big_df, "big_df.csv")

