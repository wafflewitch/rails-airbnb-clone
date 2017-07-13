# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

address_list = [
  "5333 Casgrain Ave",
  "5952 Avenue De Chateaubriand",
  "5890 Avenue De Chateaubriand",
  "5816 Avenue De Chateaubriand",
  "6005 Rue de Saint-Vallier",
  "6251 Rue de Saint-Vallier",
  "6327 Rue Saint-Denis",
  "6233 Rue Saint-Denis",
  "6308 Rue Saint-Denis",
  "6353 Rue Drolet",
  "6219 Rue Drolet",
  "6651 Rue Alma",
  "6620 Avenue Casgrain",
  "6551 A Rue Saint-Dominique",
  "7837 Rue Saint-Dominique",
  "7943 Rue Saint-Dominique",
  "8218 Avenue de Gaspé",
  "8336 Avenue de Gaspé",
  "8452 Avenue Henri-Julien",
  "8603 Rue Saint-Denis",
  "9460 Ave Millen",
  "9430 Avenue De Chateaubriand",
  "9556 Rue St-Hubert",
  "9561 Avenue De Chateaubriand",
  "9697 Avenue Durham",
  "9765 Avenue Durham",
  "10194 Ave Millen",
  "10195 Ave Millen",
  "10196 Ave Millen",
  "10197 Ave Millen",
]

# address_list.each do |address|
#   user = User.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     address: address,
#     email: Faker::Internet.email,
#     password: "ilovecats",
#     bio: Faker::StarWars.quote)
#   user.save!
# end

