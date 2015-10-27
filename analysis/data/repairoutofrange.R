repairoutofrange <- function(dirty) {
  # subfunctions called by menu below
  amenddirty <- function(dirty) {
    newval <- readline(prompt = "Please enter a new value for this case: ")
    dirty <- newval
    return(as.integer(dirty))
  }
  setmissingdirty <- function(dirty) {
    dirty <- NA
    return(dirty)
  }
  
  retaindirty <- function(dirty) {
    return(dirty)
  }
  
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
    a = amenddirty(dirty),
    m = setmissingdirty(dirty),
    k = retaindirty <- retaindirty(dirty),
    print("not a menu choice")
  )
  return(cleaned)
}