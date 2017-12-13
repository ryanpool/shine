# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
350_000.times do |i|
  first = Faker::Name.first_name
  last = Faker::Name.last_name
  user = Faker::Internet.user_name("#{first} #{last} #{i}")
  email = Faker::Internet.email(user)

  Customer.create!(
              first_name: first,
              last_name: last,
              username: user,
              email: email
  )
  print '.' if i % 1000 == 0
end
puts
