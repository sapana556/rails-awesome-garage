# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleansing DB"
Owner.destroy_all
Car.destroy_all

puts "creating owners"
owner1 = Owner.create(nickname: "sapana556")
owner2 = Owner.create(nickname: "Ben95")
owner3 = Owner.create(nickname: "sarah500")
puts "finished! created #{Owner.count} owners."

puts "creating cars "
Car.create(brand: "Porche", model: "Carrera", year: 1999, fuel: "Diesel", owner: owner1)
Car.create(brand: "Volkswagon", model: "Polo", year: 2005, fuel: "Petrol", owner: owner2)
Car.create(brand: "Renault", model: "Clio", year: 1984, fuel: "Diesel", owner: owner3)
puts "finished! created #{Car.count} cars with owners."
