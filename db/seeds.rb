# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tool = Tool.new(user_id: 1, category: "power", description: "very useful", title: "charger", price: 4, available: true, photo: "http://lorempixel.com/400/400/nature")
tool.save!
