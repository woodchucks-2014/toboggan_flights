# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

input = File.open('airports.dat', File::RDONLY){|f| f.read }
array = input.lines.map {|x| x}
p array[1].gsub(/[^0-9A-Za-z,]/, '').split(",")
