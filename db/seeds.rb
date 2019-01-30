# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#On reset les données en base :
Course.destroy_all
Student.destroy_all

#On créé 1O cours de sorts de Poudlard
10.times do
	Course.create(title: "Cours de #{Faker::HarryPotter.spell}")
end
puts "10 cours de sortilèges ont été ajouté à Poudlard !"


#On créé 5 étudiants par cours
Course.all.each do |course|
	5.times do
		Student.create(first_name: Faker::HarryPotter.character, last_name: "Of #{Faker::HarryPotter.location}", course: course)
	end
end
puts "Chaque cours est complet désormais !"
