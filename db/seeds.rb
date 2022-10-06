# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Seeding data"
pizza = Pizza.create( name: "Pizzare",
ingredients: "Onions")
pizza2 = Pizza.create(  name: "Pizza Bay",
ingredients: "Vitunguree")
pizza3 = Pizza.create(  name: "Pizz Shibudi Shibude",
ingredients: "Onionrii onionree")
pizza4 = Pizza.create(
name: "Pixelsze",
ingredients: "Saumuree")
pizza5 = Pizza.create(   name: "Zen Pixxa",
ingredients: "Karotti")
restaurants1 = Restaurant.create(name: "Nandos",
    address: "Mkomani")
restaurants2 = Restaurant.create( name: "Caferezz",
    address: "Nyali")
restaurants3 = Restaurant.create(  name: "Reborebo",
    address: "Mshomoroni")
restaurants4 = Restaurant.create( name: "Tudor",
    address: "Dox Tudor")
restaurants5 = Restaurant.create( name: "Beachi",
    address: "Coast Beach")
restaurantR = RestaurantPizza.create(  price: 234.33,
    pizza_id:pizza.id,
    restaurant_id: restaurants1.id)
restaurantS = RestaurantPizza.create(  price: 24.33,
    pizza_id:pizza2.id,
    restaurant_id: restaurants2.id)
restaurantT = RestaurantPizza.create(   price: 1,
    pizza_id:pizza3.id,
    restaurant_id: restaurants3.id)
restaurantU = RestaurantPizza.create(   price: 10,
    pizza_id:pizza4.id,
    restaurant_id: restaurants4.id)
restaurantV = RestaurantPizza.create(  price: 20,
    pizza_id:pizza5.id,
    restaurant_id: restaurants5.id)