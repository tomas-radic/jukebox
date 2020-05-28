# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Album.destroy_all
Artist.destroy_all
Country.destroy_all

ActiveRecord::Base.transaction do
  gb = Country.create!(name: "Great Britain")

  cp = Artist.create!(name: "Coldplay", country: gb)
  os = Artist.create!(name: "Oasis", country: gb)

  Album.create!(title: "Everyday Life", year_recorded: 2019, artist: cp)
  Album.create!(title: "Ghost Stories", year_recorded: 2014, artist: cp)
  Album.create!(title: "Dig Out Your Soul", year_recorded: 2008, artist: os)
  Album.create!(title: "Don't Believe The Truth", year_recorded: 2005, artist: os)
end

puts "Done."
