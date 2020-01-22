# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Shoe.create([
  {brand: 'Nike', color: 'black', price: 100, condition: 'new'},
  {brand: 'Adidas', color: 'orange', price: 50, condition: 'worn'},
  {brand: 'Nike', color: 'pink', price: 80, condition: 'muddy'},
  {brand: 'New Balance', color: 'white', price: 70, condition: 'a few grass stains'},
  {brand: 'Newtons', color: 'lime green', price: 180, condition: 'new'},
  {brand: 'Allbirds', color: 'red', price: 90, condition: 'gently used'}
])