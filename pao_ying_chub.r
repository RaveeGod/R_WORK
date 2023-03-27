action <- list("rock", "scissor", "paper")
win <- 0
lose <- 0
draw <- 0
live <- 5

print("Welcome to the Pao_Ying_Chub Championship")
print("What's your name challenger ??")
player_name <- readLines("stdin",n=1)
print(paste("Ok",player_name, ", are you ready ?"))
print("1.Yes 2.No")
play <- readLines("stdin",n=1)

if(play == 1) {
  print("That's nice")
} else if (play ==2) {
  print("Blah! you're suck")
  q()
} else {
  ("Wrong input, Please select again (1.Yes/2.No)")
}

print(paste(player_name , ", you only have" , live , "lives"))
print("Let's Start the Game!")
print("---------------------------------------")

while (live >= 1 & live <= 5) {

  
  print("What will you choose ?? ")
    print(paste("1 :", action[1]))
    print(paste("2 :", action[2]))
    print(paste("3 :", action[3]))
  player <- readLines("stdin",n=1)
  bot <- action[[sample(1:length(action),1)]]

# player choose ROCK

  if (player == 1) {
    player <- as.character(action[1])
    if (bot == action[1]) {
      print(paste("Your choose:", player))
      print(paste("Bot choose:", bot))
      print("--DRAW--")
      draw <- draw + 1
    } else if (bot == action[2]) {
      print(paste("Your choose:", player))
      print(paste("Bot choose:", bot))
      print("--WIN--")
      win <- win + 1
    } else if (bot == action[3]) {
      print(paste("Your choose:", player))
      print(paste("Bot choose:", bot))
      print("--LOSE--")
      live <- live - 1
      lose <- lose + 1
    }

# player choose SCISSOR

  } else if (player == 2) {
    player <- as.character(action[2])
    if (bot == action[1]) {
      print(paste("Your choose:", player))
      print(paste("Bot choose:", bot))
      print("--LOSE--")
      live <- live - 1
      lose <- lose + 1
    } else if (bot == action[2]) {
      print(paste("Your choose:", player))
      print(paste("Bot choose:", bot))
      print("--DRAW--")
      draw <- draw + 1
    } else if (bot == action[3]) {
      print(paste("Your choose:", player))
      print(paste("Bot choose:", bot))
      print("--WIN--")
      win <- win + 1
    }

# player choose PAPER

  } else if (player == 3) {
    player <- as.character(action[1])
    if (bot == action[1]) {
      print(paste("Your choose:", player))
      print(paste("Bot choose:", bot))
      print("--WIN--")
      win <- win + 1
    } else if (bot == action[2]) {
      print(paste("Your choose:", player))
      print(paste("Bot choose:", bot))
      print("--LOSE--")
      live <- live - 1
      lose <- lose + 1
    } else if (bot == action[3]) {
      print(paste("Your choose:", player))
      print(paste("Bot choose:", bot))
      print("--DRAW--")
      draw <- draw + 1
    }
        
  } else if (live == 0) {
      stop()
    } else {
      print("Please select no. between 1 to 3")
    } 

    print("---------------------------------------")
    print(paste("You have" , live , "remaining life"))
    print("---------------------------------------")
}

print("GAME OVER !")
print("Sorry dude, you lose")
print(">>>>>>>>>>>>>>>>>>>>>>>>>")
print("The Result is")
print(paste("WIN : " , win , "times"))
print(paste("LOSE : " , lose , "times"))
print(paste("DRAW : " , draw , "times"))
print("<<<<<<<<<<<<<<<<<<<<<<<<<")
print("You're almost to be a champion")
