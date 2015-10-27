rangecheck<-function(invar,floor,ceiling){
  
  dirty<-c(rep(0,length(invar)))
 
  for(i in 1:length(invar)){ 

    if(invar[i]<0 | invar[i]>100){
      
      print(invar[i])
      
      dirty[i]<-1
    }
  }
  return(dirty)
}

# dealing with dirty

