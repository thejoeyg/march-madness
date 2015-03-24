# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)


# Match.create(winner: "M1A", team1: "M0A", team2: "M0B")

# Team.create(name: "Wisconsin")
# Team.create(name: "Utah")
# Team.create(name: "Texas Southern")
# Team.create(name: "George Washington")
# Team.create(name: "Colorado")
# Team.create(name: "UConn")
# Team.create(name: "Syracuse")


[
  "Addy Inc.",
  "Aging 2.0",
  "Ampdesk",
  "Bauxy",
  "Bootstrap Labs",
  "Bridge US",
  "Change Catalyst",
  "Cloudability",
  "Culture Amp",
  "Database Labs",
  "Data Science Team Jeffrey",
  "Data Science Team Tammy",
  "Data Science Team Giovanna",
  "Domino Data Lab",
   "Encore.io",
   "Endeavor",
   "Entangled Ventures",
   "FusePowered",
   "Galvanize Administration",
   "Galvanize Operations",
   "Galvanize Event Planning",
   "gSchool Team Martha",
   "gSchool Team John",
   "gSchool Team Colt",
   "gSchool Staff",
   "GlassBreakers",
   "Goboxi",
   "Good.Co, Inc.",
   "Hub Health",
   "IBM Cloudant",
   "Immediately App",
   "Keen.io Green",
   "Keen.io Blue",
   "Keen.io Red",
   "KidCasa",
   "Kionin",
   "Lenda",
   "MobPartner",
   "Mutible",
   "Nuvola",
   "Pandoodle",
   "Propeller CRM",
   "Propeller Labs",
   "Quick Left",
   "Qurious.io",
   "Radionomy ",
   "Red Tricycle",
   "Reminds",
   "RepairShopr",
   "Ruben Abergel",
   "Smart Sparrow",
   "SourceEasy",
   "SpotXchange",
   "Steelhead Ventures",
   "Switch Automation Inc.",
   "The Mixing Bowl Hub",
   "UP Global",
   "Vantage Point Analytics",
   "Vivino",
   "VoiceLayer",
   "We Are Social",
   "Wheels Up",
   "Women Who Code",
   "Yard Club",
].each do |name|
  Organization.first_or_create!(name: name)
end
