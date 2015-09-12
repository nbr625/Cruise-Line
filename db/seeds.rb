# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'json'



records = JSON.parse(File.read('db/cruisedata.json'))
records.each do |record|
  Cruiseline.create!(record)
end


records = JSON.parse(File.read('db/sailingdata.json'))
records.each do |record|
  Sailing.create!(record)
end


records = JSON.parse(File.read('db/sailing_options_data.json'))
records.each do |record|
  SailingOption.create!(record)
end


