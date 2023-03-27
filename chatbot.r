menu <- character()
size <- character()
price <- integer()
need_order <- 0

pizza <- c("Seafood Cocktail", "Spicy Super Seafood", "Seafood Deluxe", "Shrimp Cocktail")
price_m <- c(409,409,409,409)
price_l <- c(509,509,509,509)

table_pizza <- list(
             PizzaName = pizza,
             Price_M = price_m,
             Price_L = price_l)


#Welcome

print("Welcome to the most delicious pizza place ;) ")
print("Hello love! ")

#question 1

print("What's your name ?? ")
user_name <- readLines("stdin", n=1)
print(paste("Hello", user_name))
print("How can I help you??")
print("1.Order pizza 2.Check discount")
requirement <- readLines("stdin",n=1)

if (requirement == "2"){
  print("Sorry, we don't have a discount today. ")
  print("Do you want to order ?")
  print("1.Yes 2.No")
  need_order <- readLines("stdin",n=1)
  if (need_order == "1"){
    print("Ok!")
  } else if (need_order == "2"){
    print("Hope you'll order soon.")
    break
  }
}

if (requirement == "1" || need_order == "1") {
  add_more <- "1"
  
while (add_more == "1"){
    
# question 2
    
  print("Please select menu by item number")
  print(data.frame(table_pizza))
  select_menu <- readLines("stdin",n=1)
  if (select_menu == 1) {
    pizza_menu <- "Seafood Cocktail"
    print("Seafood Cocktail")
  } else if (select_menu == 2) {
    pizza_menu <- "Spicy Super Seafood"
    print("Spicy Super Seafood")
  } else if (select_menu == 3) {
    pizza_menu <- "Seafood Deluxe"
    print("Seafood Deluxe")
  } else if (select_menu == 4) {
    pizza_menu <- "Shrimp Cocktail"
    print("Shrimp Cocktail")
  }
    
#question 3

  print("Which size do you want ??")
  print("M or L")
  select_size <- readLines("stdin",n=1)
  if (select_size == "M") {
    price1 <- 409
  } else if (select_size == "L") {
    price1 <- 509
  } 
  
  print ("Do you want to add more ??")
  print ("1.Yes 2.No")
  size <- append(size,select_size)
  menu <- append(menu,pizza_menu)
  price <- append(price,price1)
  add_more <- readLines("stdin",n=1)
  df_pizza <- data.frame(menu,size,price)
  }
}

print("Here's your order")
print(df_pizza)
total_price <- sum(price)
print(paste("Total : ", total_price))