# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

input = File.open(File.join(Rails.root, 'db', 'airports.dat'))
array = input.lines.map {|x| x}
array.each do |row|
	airport = row.gsub(/[^0-9A-Za-z,.]/, '').split(",")
	Airport.create(country: airport[3], code: airport[4], lat: airport[6].to_f, long: airport[7].to_f)
end

Flight.create(beginning_airport: "Germany", ending_airport: "France", price: 5000, phone_number: "917-957-7347")
