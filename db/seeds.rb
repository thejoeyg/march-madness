# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Match.create(winner: "M1A", team1: "M0A", team2: "M0B")

# Team.create(name: "Wisconsin")
# Team.create(name: "Utah")
# Team.create(name: "Texas Southern")
# Team.create(name: "George Washington")
# Team.create(name: "Colorado")
# Team.create(name: "UConn")
# Team.create(name: "Syracuse")




[
  "gSchool Team Martha",
  "gSchool Team John",
  "gSchool Team Colt",
  "gSchool Staff",
  "Data Science Team Jeffrey",
  "Data Science Team Tammy",
  "Data Science Team Giovanna",
  "Bootstrap Labs",
].each do |name|
  Organization.create!(name: name)
end
