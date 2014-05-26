# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sex = Sex.create([
  { name: "Meżczyzna"},
  { name: "Kobieta"}
])

education = Education.create([
  { name: "Podstawowe"},
  { name: "Średnie"},
  { name: "Wyższe"}
])

brands = Brand.create([
  { name: 'Lech Browary Wielkopolski' },
  { name: 'Kompania Piwowarska' },
  { name: 'Tyskie Browary Książęce' },
  { name: 'Prazdroj' },
  { name: 'Enschede' },
  { name: 'Okocim' },
  { name: 'Żywiec' },
  { name: 'Warka' },
  { name: 'Kasztelan' },
  { name: 'Browary Lubelskie' },
  { name: 'Browar Heineken' },
  { name: 'Carlsberg' },
  { name: 'Łomża' },
  { name: 'Czarnków' },
  { name: 'Gotyniec' },
  { name: 'Fortuna' },
  { name: 'St. James\'s Gate Brewery' },
  { name: 'Paulaner' },
  { name: 'Cornelius' }
])
kind = Kind.create([
  { name: 'Jasne' },
  { name: 'Ciemne' },
  { name: 'Pszeniczne' },
  { name: 'Smakowe' },
  ])
sort = Sort.create([
  { name: 'lager' },
  { name: 'miodowe' },
  { name: 'owocowe' },
  { name: 'pils' },
  { name: 'mocny pils' },
  { name: 'mocny lager' },
  { name: 'ciemne' },
  { name: 'stout' },
  { name: 'porter' },
  { name: 'tequilla' }
  ])
region = Region.create([
  { name: 'krajowe' },
  { name: 'regionalne' },
  { name: 'zagraniczne' }
  ])
processing = Processing.create([
  { name: 'pasteryzowane' },
  { name: 'niepasteryzowane' },
  { name: 'nieflitrowane' }
  ])
cost = Cost.create([
  { name: 'tanie' },
  { name: 'przeciętne' },
  { name: 'drogie' }
  ])

user = User.new(
      :email                 => "tobiasz_3@wp.pl",
      :password              => "123456",
      :password_confirmation => "123456"
  )
user.save!(:validate => false)


