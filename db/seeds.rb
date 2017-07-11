# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print "creating user..."
user = User.new(
  id: 5,
  first_name: "Eric",
  last_name: "Greg",
  password: "mynamesgreg",
  address: "734 N. Overlook Dr., Olathe, KS 66061",
  bio: "I love sawing things!",
  email: "eric@gmail.com"
  )
user.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/b/b9/Eric_Roberts_FSC_2015.jpg"
user.save!
print "user created!"

print "Creating tool..."
tool = Tool.new(
  user_id: 5,
  category: "power tools",
  description: "Brand new, barely used.",
  title: "Eric's Grinder",
  price: 25,
  available: true,
  photo: "https://static.pexels.com/photos/266125/pexels-photo-266125.jpeg"
  )
tool.save!
print "New tool created"
