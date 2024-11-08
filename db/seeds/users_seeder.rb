require 'faker'

def seed_users
  puts "Seeding Users..."
  cities = City.limit(50)  
  cities.each do |city|
    3.times do
      User.create(
        email: Faker::Internet.email,
        continent: city.state.country.continent,
        country: city.state.country,
        state: city.state,
        city: city
      )
    end
  end
  puts "Users seeded."
end