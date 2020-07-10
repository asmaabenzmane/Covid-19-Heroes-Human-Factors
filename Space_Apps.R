Co_19 <- read.csv("C:/Users/hp/Documents/covid19.csv")
points_chauds <- function(n,mat){
  ptc<- rep(0,n)
  m<- mean(mat$nombre_des_cas_9jui)
  for(i in 1:n){
    if(mat$nombre_des_cas_9jui[i]>m){
      ptc[i]=1
    }
    else{
      ptc[i]=0
    }
  }
  ptc
  matm <- cbind(mat,ptc)
}

points_chauds(12,Co_19)