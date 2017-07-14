# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

address_list = [
  "5333 Casgrain Ave, Montreal, Quebec",
  "5952 Avenue De Chateaubriand, Montreal, Quebec",
  "5890 Avenue De Chateaubriand, Montreal, Quebec",
  "5816 Avenue De Chateaubriand, Montreal, Quebec",
  "6005 Rue de Saint-Vallier, Montreal, Quebec",
  "6251 Rue de Saint-Vallier, Montreal, Quebec",
  "6327 Rue Saint-Denis, Montreal, Quebec",
  "6233 Rue Saint-Denis, Montreal, Quebec",
  "6308 Rue Saint-Denis, Montreal, Quebec",
  "6353 Rue Drolet, Montreal, Quebec",
  "6219 Rue Drolet, Montreal, Quebec",
  "6651 Rue Alma, Montreal, Quebec",
  "6620 Avenue Casgrain, Montreal, Quebec",
  "6551 A Rue Saint-Dominique, Montreal, Quebec",
  "7837 Rue Saint-Dominique, Montreal, Quebec",
  "7943 Rue Saint-Dominique, Montreal, Quebec",
  "8218 Avenue de Gaspé, Montreal, Quebec",
  "8336 Avenue de Gaspé, Montreal, Quebec",
  "8452 Avenue Henri-Julien, Montreal, Quebec",
  "8603 Rue Saint-Denis, Montreal, Quebec",
  "9460 Ave Millen, Montreal, Quebec",
  "9430 Avenue De Chateaubriand, Montreal, Quebec",
  "9556 Rue St-Hubert, Montreal, Quebec",
  "9561 Avenue De Chateaubriand, Montreal, Quebec",
  "9697 Avenue Durham, Montreal, Quebec",
  "9765 Avenue Durham, Montreal, Quebec",
  "10194 Ave Millen, Montreal, Quebec",
  "10195 Ave Millen, Montreal, Quebec",
  "10196 Ave Millen, Montreal, Quebec",
  "10197 Ave Millen, Montreal, Quebec",
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

