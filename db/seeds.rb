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


10.times do
  push_press = Exercice.create!(
    name: 'Push Press',
    image_url: '/assets/push_press.jpg',
    user: john,
  )

  pp_load = Load.create!(
    max_load: 90,
    exercice: push_press,
  )

  pp_note = Note.create!(
    content: 'suppppppppppppppppppppppppppppppppppppppp',
    exercice: push_press,
  )

  snatch = Exercice.create!(
    name: 'Snatch',
    image_url: '/assets/snatch.jpg',
    user: john
  )

  snatch_load = Load.create!(
    max_load: 90,
    exercice: snatch,
  )

  snatch_note = Note.create!(
    content: 'suppppppppppppppppppppppppppppppppppppppp',
    exercice: snatch,
  )

  deadlift = Exercice.create!(
    name: 'Deadlift',
    image_url: '/assets/deadlift.jpg',
    user: john
  )

  deadlift_load = Load.create!(
    max_load: 90,
    exercice: deadlift,
  )

  deadlift_note = Note.create!(
    content: 'suppppppppppppppppppppppppppppppppppppppp',
    exercice: deadlift,
  )
end
