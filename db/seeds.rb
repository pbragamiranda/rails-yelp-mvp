# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
polis = { name: 'Polis', address: 'Leblon', phone_number: '97778530', category: 'belgian'}
italian = { name: 'LittleItaly', address: 'Santa Teresa', phone_number: '97778330', category: 'italian'}
china = { name: 'ChinaInBox', address: 'Gloria', phone_number: '999898330', category: 'chinese'}
japa =  { name: 'MaduJapa', address: 'Madureira', phone_number: '999898445', category: 'japanese'}
french =  { name: 'BelleEpoche', address: 'Arpoador', phone_number: '988390016', category: 'french'}

[polis, italian, china, japa, french].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'