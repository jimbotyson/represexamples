repairoutofrange <- function(dirty,datavector) {
  # subfunctions called by menu below
  amenddirty <- function(dirty,datavector) {
    newval <-
      readline(prompt = "Please enter a new value for this case: ")
    datavector[dirty] <- newval
    return(datavector)
  }
  setmissingdirty <- function(dirty,datavector) {
    datavector[dirty] <- NA
    return(datavector)
  }
  
  retaindirty <- function(dirty,datavector) {
    return(datavector)
  }
  for(i in 1:length(dirty)){
    cat("the current item is ", dirty[i], datavector[dirty],"\n")
    if(dirty[i]==1){
  #show user menu
  cat("Please select\n")
  cat("a\t\tamend case value\n")
  cat("m\t\tset missing case value\n")
  cat("k\t\tretain case value\n")
  menuchoice <-
    readline(prompt = "Please enter a choice from the menu: ")
  
  #control statement: assign the outcome to return value of main function
  cleaned <- switch(
    menuchoice,
    a = amenddirty(i,datavector),
    m = setmissingdirty(i,datavector),
    k = retaindirty <- retaindirty(i,datavector),
    print("not a menu choice")
  )}
  }
  return(cleaned)
  }