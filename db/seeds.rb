# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "companies", force: :cascade do |t|
#   t.string "name"
#   t.string "address"
#   t.decimal "latitude"
#   t.decimal "longitude"
#   t.integer "num_of_employees"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
require 'faker'

puts "destroy companies"
Company.destroy_all
puts "create companies"
# New York
Company.create(name: "Flatiron School", address: "11 Broadway, 2nd Floor, New York, NY 10004", latitude: 40.705468, longitude: -74.014088, num_of_employees: 10000)
Company.create(name: "Google", address: "111 8th Avenue, New York, NY 10011", latitude: 40.742709, longitude: -74.001993, num_of_employees: 10000)
Company.create(name: "Douglas Elliman Property Management", address: "675 3rd Avenue, New York, NY 10017", latitude: 40.751180, longitude: -73.973858, num_of_employees: 5000)
Company.create(name: "Bloomberg", address: "731 Lexington Avenue, New York, NY 10022", latitude: 40.762158, longitude: -73.968313, num_of_employees: 20000)
# California
Company.create(name: "Google", address: "75 East Trimble Road, San Jose, CA 95131", latitude: 37.387848, longitude: -121.926919, num_of_employees: 20000)
Company.create(name: "Uber HQ", address: "1455 Market Street, San Francisco, CA 94103", latitude: 37.775914, longitude: -122.417928, num_of_employees: 5000)
Company.create(name: "Twitter", address: "1355 Market Street, San Francisco, CA 94103", latitude: 37.777229, longitude: -122.416692, num_of_employees: 4000)
Company.create(name: "Peet's Coffee Corporate Headquarters", address: "1400 Park Avenue, Emeryville, CA 94608", latitude: 37.839874, longitude: -122.284615, num_of_employees: 3000)
#Seattle
#Atlanta


puts "destroy all users"
User.destroy_all
puts "create users"
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password:Faker::Internet.password, company_id: Company.all.sample.id)
puts "created users"


puts "destroy all restaurants"
Restaurant.destroy_all
puts "create restaurants"
Restaurant.create(name: "Juliana's Pizza", address: Faker::Address.full_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, category: Faker::Nation.nationality, price_range: [1..5].sample, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url)
Restaurant.create(name: "Macoletta", address: Faker::Address.full_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, category: Faker::Nation.nationality, price_range: [1..5].sample, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url)
Restaurant.create(name: "Made In New York Pizza", address: Faker::Address.full_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, category: Faker::Nation.nationality, price_range: [1..5].sample, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url)
Restaurant.create(name: "Dig Inn", address: Faker::Address.full_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, category: Faker::Nation.nationality, price_range: [1..5].sample, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url)
Restaurant.create(name: "Sweet Green", address: Faker::Address.full_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, category: Faker::Nation.nationality, price_range: [1..5].sample, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url)
Restaurant.create(name: "Barn Joo", address: Faker::Address.full_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, category: Faker::Nation.nationality, price_range: [1..5].sample, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url)
Restaurant.create(name: "Golden Crab House", address: Faker::Address.full_address, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, category: Faker::Nation.nationality, price_range: [1..5].sample, phone: Faker::PhoneNumber.phone_number, website: Faker::Internet.url)
puts "created restaurants"


puts "destroy all favorites"
Favorite.destroy_all
puts "create favorites"
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Favorite.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
puts "created favorites"

# create_table "relationships", force: :cascade do |t|
#   t.integer "follower_id"
#   t.integer "followee_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

puts "destroy all relationships"
Relationship.destroy_all
puts "create relationships"
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
Relationship.create(follower_id: User.all.sample.id, followee_id: User.all.sample.id)
puts "created relationships"


puts "destroy reservations"
Reservation.destroy_all
puts "create reservations"
Reservation.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Reservation.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Reservation.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Reservation.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Reservation.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
Reservation.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
puts "created reservations"
