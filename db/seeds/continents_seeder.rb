require 'faker'

def seed_continents
  puts "Seeding Continents..."
  continents = ['Africa', 'Asia', 'Europe', 'North America', 'South America', 'Australia', 'Antarctica']
  continents.each do |continent_name|
    Continent.find_or_create_by(name: continent_name)
  end
  puts "Continents seeded."
end