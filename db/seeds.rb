# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

constituent1 = Constituent.create([{name: 'Matt Fender'}, {zip_code: 10031}, {gender: 'male'}, {dob:12/23/1985}])
constituent2 = Constituent.create([{name: 'Valerie McCarthy'}, {zip_code: 10007}, {gender: 'female'}, {dob:02/21/1968}])

politician1 = Politician.create([{name: 'Chuck Schumer'}, {party: "Democrat"}, {start_date: 01/03/1999}, {end_date:01/02/2023}])
politician2 = Politician.create([{name: 'Chris Christie'}, {party: "Republican"}, {start_date: 01/19/2010}, {end_date:01/18/18}])

office1 = Office.create([{name: 'Senator'}, {district_num: 36}, {level: 'Federal'}])
office2 = Office.create([{name: 'Governor'}, {district_num: 1}, {level: 'State'}])

cons_pol1 = ConstituentPolitician.create([{constituent_id: 1}, {politician_id: 1}])
cons_pol2 = ConstituentPolitician.create([{constituent_id: 2}, {politician_id: 2}])

pol_off1 = PoliticianOffice.create([{politician_id: 1}, {office_id: 1}])
pol_off2 = PoliticianOffice.create([{politician_id: 2}, {office_id: 2}])



