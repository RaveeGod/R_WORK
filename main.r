chatbot <- function() {
  source("chatbot.r")
}

paoyingchub <- function() {
  source("pao_ying_chub.r")
}

print("What do you want to do ?")
print("1. Order Pizza, 2. Play PaoYingChub")
action <- readLines("stdin", n=1)
if (action == 1) {
  chatbot()
} else {
  paoyingchub()
}