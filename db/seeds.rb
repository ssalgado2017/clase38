# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Homework.delete_all

9.times do |i|
	Homework.create(
		name: "Tarea #{i + 1}",
		#photo: "http://lorempixel.com/400/200/#{i + 1}/"
		photo: "http://localhost:3000/images/foto#{i + 1}.jpeg"
	)
end
