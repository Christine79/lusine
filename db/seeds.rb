# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'faker'


puts "coucou1"
10.times do
  patient = Patient.create!(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.middle_name}")
end

puts "coucou2"

10.times do
##  doctor = Doctor.create!(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.middle_name}" , specialty: "#{Faker::Educator.subject}", postal_code: "#{Faker::Address.zip_code}")
  doctor = Doctor.create!(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.middle_name}" , specialty: "#{Faker::Name.middle_name}", postal_code: "#{Faker::Address.zip_code}")
end
puts "coucou3"

10.times do
##  doctor = Doctor.create!(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.middle_name}" , specialty: "#{Faker::Educator.subject}", postal_code: "#{Faker::Address.zip_code}")
  appointment = Appointment.create!(date: "#{Faker::Date.backward(14)}")
end
puts "coucou4"
