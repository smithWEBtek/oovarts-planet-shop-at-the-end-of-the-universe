# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# users

User.create([
	{ name: 'Heidi', email: 'heidi@gmail.com', password: 'rainbows' },
	{ name: 'Sasha', email: 'sasha@gmail.com', password: 'momomomo'},
	{ name: 'Abdul', email: 'abdul@gmail.com', password: 'fire'},
	{ name: 'Chan', email: 'chan@gmail.com', password: 'meowmeow'},
	{ name: 'Karla', email: 'karla@gmail.com', password: 'funfunfun'}
])

# planets

counter = 0
planet_names_1 = ['Shyweed', 'Ucrari', 'Enzel', 'Chonjer', 'Darr']

5.times do
	Planet.create(name: planet_names_1[counter], population: Faker::Number.between(5000, 8000000), moons: rand(8), user_id: 1)
	counter += 1
end

planet_names_2 = ['Oodrore', 'Lari', 'Wykits', 'Tynthari', 'Eriodra', 'Thoffini', 'Kofula']

7.times do
	Planet.create(name: planet_names_2[counter], population: Faker::Number.between(5000, 8000000), moons: rand(8), user_id: 2)
	counter += 1
end

# features

Feature.create([
	{name: beache, description: ''},
	{name: cave, description: ''},
	{name: cloud, description: ''},
	{name: desert, description: ''},
	{name: fjord, description: ''},
	{name: forest, description: ''},
	{name: lake, description: ''},
	{name: mountain, description: ''},
	{name: ocean, description: ''},
	{name: volcano, description: ''},
])

# orders

20.times do
	Order.create(price: Faker::Number.between(1000000, 8000000), size: Faker::Number.between(50, 8000000), feature_id: , user_id: )
end