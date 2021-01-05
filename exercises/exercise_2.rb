require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
# Load the second store from the database and assign it to @store2.
# Update the first store (@store1) instance in the database. (Change its name or something.)

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)
@store4 = Store.find(4)
@store5 = Store.find(5)
@store6 = Store.find(6)

@store1.update(name: "Frenchie")

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ben", last_name: "Butch", hourly_rate: 40)
@store1.employees.create(first_name: "Han", last_name: "Solo", hourly_rate: 400)

@store2.employees.create(first_name: "Jerk", last_name: "Fren", hourly_rate: 23)
@store2.employees.create(first_name: "Total", last_name: "Douche", hourly_rate: 100)
@store2.employees.create(first_name: "Luke", last_name: "Skywalker", hourly_rate: 1)

@store4.employees.create(first_name: "Aragorn", last_name: "Son of Arathorn", hourly_rate: 500)
@store4.employees.create(first_name: "Gimly", hourly_rate: 400)
@store4.employees.create(first_name: "Legolas", last_name: "Greenleaf", hourly_rate: 1)

@store5.employees.create(first_name: "Dain", last_name: "Ironfoot", hourly_rate: 700)
@store5.employees.create(first_name: "Thorin", last_name: "Oakenshield", hourly_rate: 600)
@store5.employees.create(first_name: "Durin", last_name: "All Father", hourly_rate: 1000)

@store6.employees.create(first_name: "Gandald", last_name: "The White", hourly_rate: 420)
@store6.employees.create(first_name: "Radagast", last_name: "The Brown", hourly_rate: 200)
@store6.employees.create(first_name: "Pallando", last_name: "The Blue", hourly_rate: 500)


puts @store1.name