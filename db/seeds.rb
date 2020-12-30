# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting seeds"
User.destroy_all
Like.destroy_all
Message.destroy_all
Post.destroy_all
Friendship.destroy_all


puts "seeding Users"

steven = User.create!(username: "steven420", password:"123456", first_name:"Steven", last_name:"Wu", age: 29, hometown:"Flushing")

alice = User.create!(username: "alice420", password:"123456", first_name:"Alice", last_name:"Jansen", age: 25, hometown:"Springfield")


puts "seeding Posts"

post1 = Post.create!( user: steven, content: "wasuupppppp")


puts "seeding Likes"

like1 = Like.create!( post: post1, user:alice)


puts "seeding Friendships"

friendship1 = Friendship.create!(user: steven , friend: alice)
friendship2 = Friendship.create!(user: alice , friend: steven)

puts "seeding Messages"

