require 'faker'

def seed_cities
  puts "Seeding Cities..."
  State.all.each do |state|
    5.times do
      City.find_or_create_by(
        name: Faker::Address.city,
        state: state
      )
    end
  end
  puts "Cities seeded."
end