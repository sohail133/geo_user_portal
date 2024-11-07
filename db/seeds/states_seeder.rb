require 'faker'

def seed_states
  puts "Seeding States..."
  Country.all.each do |country|
    5.times do
      State.find_or_create_by(
        name: Faker::Address.state,
        country: country
      )
    end
  end
  puts "States seeded."
end