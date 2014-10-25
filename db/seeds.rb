# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Products
bread_roll = Product.create(name: 'Bread roll', price: 0.1)
butter     = Product.create(name: 'Butter', price: 1.2)
milk       = Product.create(name: 'Milk', price: 1.4)
apples     = Product.create(name: 'Apples — 1 kg', price: 0.85)
potatoes   = Product.create(name: 'Potatoes — 1 kg', price: 0.65)
onions     = Product.create(name: 'Onions — 1 kg', price: 1)

# Orders
Order.transaction do
  breakfast = Order.create(customer: 'Jack Herbert')

  breakfast.order_lines.create(quantity: 3, product: bread_roll)
  breakfast.order_lines.create(quantity: 1, product: butter)
  breakfast.order_lines.create(quantity: 1, product: milk)
end

Order.transaction do
  poland = Order.create(customer: 'Jan Kowalski')

  poland.order_lines.create(quantity: 1000, product: onions)
end

Order.transaction do
  marc_newson = Order.create(customer: 'Marc Newson')

  marc_newson.order_lines.create(quantity: 2, product: apples)
end

Order.transaction do
  something = Order.create(customer: 'Alfred Daniels')

  something.order_lines.create(quantity: 2, product: potatoes)
  something.order_lines.create(quantity: 1, product: milk)
end
