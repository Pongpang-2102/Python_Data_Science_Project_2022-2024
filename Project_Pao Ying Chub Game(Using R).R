# How to create a rock paper scissors game (Pao-Ying_chup) using Based-R programming
# Author : Puriwat Sangrawee



# step 1 : 
# Welcome our new player
welcome_player_f01 <- function(){
  welcome_1 =  "This is Pao Ying Chup Game Beta Version"
  welcome_2 =  "Let 's get started"
  cat(paste(welcome_1,"\n") )
  cat(paste(welcome_2) )
  cat("\n----------------------")
  player_name <- readline("Plese let us know your name : ")
  cat(paste ("Hello!! ",player_name,",Pleased to meet you ") )
  cat("\n----------------------")
  
  
}

# step 2 : 
 # create  function for  developer credit
 
 select_mode_01_dev_f02 <- function(){
   cat("\nDeveloper :  Puriwat Sangrwee\n")
   cat("From DataRockie Data Science Bootcamp # 4\n")
   cat("Learning Basic R Programming\n")
   cat("----------------------------------")
 }


 # step 3 : 
 # create a game rule function
 
 select_mode_02_game_rule_f03 <- function() {
   cat("Please read carefully !!!!!!!\n")
   cat("-----------------------------------\n")
   cat("The game rule as below.....\n")
   cat("as be known from general Pao Ying Chup (Or Tick Tac Toe) Game\n
         Your options from your hands would be Hammer , Scissors or surely Paper\n\n
         -----------------------------------------------------------------------------\n
         Hammer overcomes scissors --> The player with hammer will get +1 score in that turn\n
         Scissors overcomes Paper  --> The player with Scissors will get +1 score in that turn\n
         Paper overcomes hammer    --> The play with paper will get +1 score in that turn\n
         Nothing or other command will not be counted and you will get -1 score in that turn\n
        -----------------------------------------------------------------------------\n
         The game will have 15 turns or will continues until the command 'end now' will be input\n\n\n
         Good Luck !!!!\n\n")
   
 }

 
 # Step 4
 # create a game body function
 
 select_mode_03_game_body_f04 <- function() {
   cat(" we will conduct you to our great game shortly")
   cat("\nmission start !!!!!")
   your_option = 0
   your_score = 0 
   computer_score = 0
   game_round = 0
   
   while(TRUE){
     
     
     
     cat("\nyou Please type number as below : \n
                1 : Hammer\n
                2 : Scissors\n
                3 : Paper\n
               99 : End Now\n")
     cat("---------------------------------")
     
     your_option <- as.numeric(  readline("Please type your selection : ")  )
     computer_option <- sample(c("Hammer","Scissors", "Paper"), 1)
     cat("\n----------------------------------------")
     
     if (game_round == 15){
       
       cat(  paste("\nyour total score is :",your_score)  )
       cat(paste   ("\ncomputer total score is : ",computer_score)  )
       cat("\n------------------------------------")
       if (your_score > computer_score){
         cat("\nYou win")
         break}
       else {
         cat("\nYou lose")
         break
       }
     }else if ( (your_option == 1) &  (computer_option == "Scissors") ) {
       
       cat("\nYou selected : Hammer")
       cat(  paste("\nComputer selected : ",computer_option)  )
       
       your_score <- your_score + 1
       computer_score <- computer_score + 0
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("\n----------------------------------------")
       
       game_round <- game_round + 1
       
     }else if ( (your_option == 1) &  (computer_option == "Paper") ) {
       
       cat("\nYou selected : Hammer")
       cat(  paste("\nComputer selected : ",computer_option)  )
       
       your_score <- your_score + 0
       computer_score <- computer_score + 1
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("\n----------------------------------------")
       
       game_round <- game_round + 1
       
     }else if ( (your_option == 1) &  (computer_option == "Hammer") ) {
       
       cat("\nYou selected : Hammer")
       cat(  paste("\nComputer selected : ",computer_option)  )
       
       your_score <- your_score + 0
       computer_score <- computer_score + 0
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("\n----------------------------------------")
       
       game_round <- game_round + 1
       
       
     }else if ( (your_option == 2) &  (computer_option == "Paper") ) {
       
       cat("\nYou selected : Scissors")
       cat(  paste("\nComputer selected : ",computer_option)  )
       
       your_score <- your_score + 1
       computer_score <- computer_score + 0
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("\n----------------------------------------")
       
       game_round <- game_round + 1
       
       
     }else if ( (your_option == 2) &  (computer_option == "Hammer") ) {
       
       cat("\nYou selected : Scissors")
       cat(  paste("\nComputer selected : ",computer_option)  )
       
       your_score <- your_score + 0
       computer_score <- computer_score + 1
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("\n----------------------------------------")
       
       game_round <- game_round + 1
       
     }else if ( (your_option == 2) &  (computer_option == "Scissors") ) {
       
       cat("\nYou selected : Scissors")
       cat(  paste("\nComputer selected : ",computer_option)  )
       
       your_score <- your_score + 0
       computer_score <- computer_score + 0
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("\n----------------------------------------")
       
       game_round <- game_round + 1
       
       
     }else if ( (your_option == 3) &  (computer_option == 'Hammer') ) {
       
       cat("\nYou selected : Paper")
       cat(  paste("\nComputer selected : ",computer_option)  )
       
       your_score <- your_score + 1
       computer_score <- computer_score + 0
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("\n----------------------------------------")
       
       game_round <- game_round + 1
       
     }else if ( (your_option == 3) &  (computer_option == 'Scissors') ) {
       
       cat("\nYou selected : Paper")
       cat(  paste("\nComputer selected : ",computer_option)  )
       
       your_score <- your_score + 0
       computer_score <- computer_score + 1
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("----------------------------------------")
       
       game_round <- game_round + 1
       
       
     }else if ( (your_option == 3) &  (computer_option == "Paper") ) {
       
       cat("\nYou selected : Paper")
       cat(  paste("\nComputer selected : ",computer_option)  )
       
       your_score <- your_score + 0
       computer_score <- computer_score + 0
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("\n----------------------------------------")
       
       game_round <- game_round + 1
       
       
     }else if  (your_option == 99) {
       
       cat(paste  ("\nyour total score is :",your_score)  )
       cat(paste  ("\ncomputer total score is : ",computer_score)  )
       cat("\n------------------------------------")
       if (your_score > computer_score){
         cat("\nYou win")
         break
       }else if (your_score < computer_score){
         cat("\nYou lose")
         break
       }else {
         cat("\nNo Winner")
       }
     }else {
       
       cat("\nIncorrect Input, Your score will be - 1")
       
       cat("\nYou selected : Nothing ")
       cat(paste  ("\ncomputer total score is : ",computer_score)  )
       
       your_score <- your_score - 1
       computer_score <- computer_score + 0
       cat( paste("\nyour score : ",your_score) )
       cat( paste("\ncomputer  score : ",computer_score) )
       cat("\n----------------------------------------")
       
       game_round <- game_round + 1
       
     }
   }
 }
 
 
pao_ying_chup_game <- function(){
  
  welcome_player_f01()
  
  while(TRUE){
    cat("\nPlease select mode below as you needed")
    cat("\ncredit (1) | Game Rules (2) | Start Game (3) | (4) Quit")
    your_mode <- as.numeric( readline("Select your mode >>  ")  )
    if (your_mode == 1){
      select_mode_01_dev_f02()
      
    }else if (your_mode == 2){
      select_mode_02_game_rule_f03()
      
    }else if (your_mode == 3){
      select_mode_03_game_body_f04()
      
    }else if(your_mode == 4){
      cat("See you later !!!!")
      break
      
      
    }
      
    
    
  }
  

}

pao_ying_chup_game()
