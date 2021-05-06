# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'Faker'

25.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

5.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name,
                          last_name: Faker::Name.last_name,
                          specialty:["Généraliste", "Dermatologue", "Ophtalmologue"].sample,
                          zip_code: Faker::Address.country_by_code(code: 'FR')
)
end

25.times do
  appointments = Appointment.create!(date: Faker::Date.between(from: '2021-06-01', to: '2021-06-30'), 
                                     doctor_id: Doctor.all.sample.id, 
                                     patient_id: Patient.all.sample.id
                                     city_id: City.all.sample.id)
end

