# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.delete_all
Order.delete_all
Item.delete_all

Customer.create!(contact: "Gabe", name: "Gabe's stuff", phone: "651-331-0535")
Customer.create!(contact: "John", name: "what you need", phone: "651-333-3333")
Customer.create!(contact: "Sam", name: "the spot", phone: "651-555-5555")

Item.create!(name: "soup")
Item.create!(name: "rock")
Item.create!(name: "sock")

Order.create!(item_name: "soup", quantity: 8, total_cost: 45.00, customer_name: "Gabe's stuff", item_id: 1)
Order.create!(item_name: "rock", quantity: 1, total_cost: 5.00, customer_name: "Gabe's stuff", item_id: 2)
Order.create!(item_name: "sock", quantity: 2, total_cost: 4.00, customer_name: "Gabe's stuff", item_id: 3)

Order.create!(item_name: "soup", quantity: 3, total_cost: 8.00, customer_name: "what you need", item_id: 1)
Order.create!(item_name: "rock", quantity: 8, total_cost: 45.00, customer_name: "what you need", item_id: 2)
Order.create!(item_name: "sock", quantity: 3, total_cost: 5.00, customer_name: "what you need", item_id: 3)

Order.create!(item_name: "soup", quantity: 2, total_cost: 6.00, customer_name: "the spot", item_id: 1)
Order.create!(item_name: "rock", quantity: 1, total_cost: 1.00, customer_name: "the spot", item_id: 2)
Order.create!(item_name: "sock", quantity: 55, total_cost: 99.00, customer_name: "the spot", item_id: 3)