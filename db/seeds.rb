# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
  { email: '1234@gmail.com', password: '123456'},
  { email: '1111@gmail.com', password: '111111'},
  { email: '2222@gmail.com', password: '222222'}])

ships = Ship.create([
  { name: 'a1', containers: 1, location: 'Jakarta', ship_id: 1, user_id: 1 },
  { name: 'a2', containers: 2, location: 'Jakarta', ship_id: 2, user_id: 1 },
  { name: 'a3', containers: 3, location: 'Jakarta', ship_id: 3, user_id: 1 },
  { name: 'b1', containers: 4, location: 'Bangkok', ship_id: 4, user_id: 2 },
  { name: 'b2', containers: 5, location: 'Bangkok', ship_id: 5, user_id: 2 },
  { name: 'b3', containers: 6, location: 'Bangkok', ship_id: 6, user_id: 2 },
  { name: 'c1', containers: 7, location: 'Djibouti', ship_id: 7, user_id: 3 },
  { name: 'c2', containers: 8, location: 'Djibouti', ship_id: 8, user_id: 3 },
  { name: 'c3', containers: 9, location: 'Djibouti', ship_id: 9, user_id: 3 }])

jobs = Job.create([
  { title: 'j1', description: "widdlyscuds", origin: 'Jakarta', destination: "Purgatory", cost: 1001, containers: 6},
  { title: 'j2', description: "banana hammock", origin: 'Bangkok', destination: "Heaven", cost: 1337, containers: 15},
  { title: 'j3', description: "around the world in 40 lays", origin: 'Djibouti', destination: "Hell", cost: 9001, containers: 24},
  ])
