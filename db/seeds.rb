# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sex = Sex.create([
  { name: "Mezczyzna"},
  { name: "Kobieta"}
])

education = Education.create([
  { name: "Podstawowe"},
  { name: "Średnie"},
  { name: "Wyższe"}
])

brands = Brand.create([
  { name: 'Lech' },
  { name: 'Warka' }
])
