require 'faker'

def seed_countries
  puts "Seeding Countries..."
  Continent.all.each do |continent|
    10.times do
      Country.find_or_create_by(
        name: Faker::Address.country,
        continent: continent
      )
    end
  end
  puts "Countries seeded."
end