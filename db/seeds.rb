# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Cleaning the DB
User.destroy_all
Exercice.destroy_all

john = User.create!(
  first_name: 'John',
  last_name: 'Doe',
  password: 'secret',
  email: 'john@gmail.com'
)

push_press = Exercice.create!(
  name: 'Push Press',
  max_load: 90,
  notes: 'Encore du travail à faire sur la technique',
  user: john
)

push_press2 = Exercice.create!(
  name: 'Push Press',
  max_load: 90,
  notes: 'Encore du travail à faire sur la technique',
  user: john
)

push_press3 = Exercice.create!(
  name: 'Push Press',
  max_load: 90,
  notes: 'Encore du travail à faire sur la technique',
  user: john
)
