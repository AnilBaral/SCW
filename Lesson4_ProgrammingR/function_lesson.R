gapminder <- read.table("gapminder.txt", header=TRUE)

fahrnheit_to_celsius <-  function(temp){
  celsius <- (temp - 32)*5/9
  return(celsius)
}
celsius_to_kelvin <- function(temp_c){
  kelvin <- temp_c +273.15
  return(kelvin)
}

fahrnheit_to_kelvin <- function(temp_f){
  celsius <- fahrnheit_to_celsius(temp_f)
  kelvin <- celsius_to_kelvin(celsius)
  return(kelvin)
}

Meanlifeexp <- function(Continent){
  subset_continent_gapminder <- gapminder[gapminder$continent == Continent, "lifeExp"]
  mean_life_exp <- mean(subset_continent_gapminder)
  return(mean_life_exp)
}

Meanlifeexp("Europe")
x <- 8
if(x>=10){
  print("X is greater than or equal to 10")
}else{
  print("x is smaller than 10")
}

if(x>=10){
  print("X is greater than or equal to 10")
}else if (x>=5){
  print("x is greater than 5 less than 10")
}else{
  print("x is less than 5")
}

x <- 4==3
if(x){
  print("X is greater than or equal to 10")
}else{
  print("x is smaller than 10")
}

x <- Meanlifeexp("Asia")
if(x>=50){
  print("Life expectancy greater than 50")
}else{
  print("Life expectancy smaller than 50")
}

for (i in 1:10){
  print(i)
}
menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("solid","liquid","solid","liquid"))
menuCost <- c(4.99,2.99,3.29,1.89)
myorder_df <- data.frame(menuItems, menuType, menuCost)
View(myorder_df)

for (items in myorder_df$menuItems) {
  myorder_df_subset <- myorder_df[myorder_df$menuItems == items, ]
  print(items)
  print(myorder_df_subset$menuCost)
}

for (items in myorder_df$menuItems) {
  myorder_df_subset <- myorder_df[myorder_df$menuItems == items,"menuCost" ]
  print(items)
  print(myorder_df_subset)
}
################################################

gapminder <- read.table("gapminder.txt", header= TRUE)
thresholdValue <- 50
continent_list <- unique(gapminder$continent)

for(continent in continent_list) {
  continent_subset <- gapminder[gapminder$continent == continent, "lifeExp"]
  tmp <- mean(continent_subset)
  if(tmp <= thresholdValue){
    print(paste0("Average Life Expectancy in ", continent, " is less than ", thresholdValue))
  }
  else{
    print(paste0("Average Life Expectancy in ", continent, " is greater than ", thresholdValue))
  } # end if else condition
  rm(tmp)
}
