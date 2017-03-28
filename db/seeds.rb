# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create 10 users
10.times do
  User.create!(first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               user_name: Faker::Pokemon.name,
               email: Faker::Internet.email,
               password: Faker::Internet.password)
end

# create 5 loctions
5.times do
  Location.create!(name: Faker::Pokemon.location)
end

# create 10 categories
10.times do
  Category.create(name: Faker::Commerce.department(1))
end

# create 50 items
50.times do
  Item.create(name: Faker::Commerce.product_name,
              description: Faker::ChuckNorris.fact,
              location_id: rand(1..5),
              # grab random user id
              user_id: rand(1..10),
              category_id: rand(1..10))
end
