# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# binding.pry
firm = Brokerage.create(name:Faker::Company.name, city:"New York, NY")

10.times do
  new_broker = Broker.new
  new_broker.first_name = Faker::Name.first_name
  new_broker.last_name = Faker::Name.last_name
  new_broker.brokerage = firm
  new_broker.save
end

10.times do
  quote = Faker::MostInterestingManInTheWorld.quote
  review = Review.new
  review.communication = Random.rand(1..5)
  review.team_player = Random.rand(1..5)
  review.skill = Random.rand(1..5)
  review.broker = Broker.find(Random.rand(1..10))
  review.content = quote
  binding.pry
  review.save
end
