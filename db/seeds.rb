# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'

puts "lancement seeds Faker"
10.times do
  part = Part.create!(part_number: "#{Faker::Number.number(10)}")
end

puts "seeds Part ok"

10.times do
  assembly = Assembly.create!(name: "#{Faker::Pokemon.name}", last_name: "#{Faker::Name.middle_name}")
end
puts "seed assemblies ok"
