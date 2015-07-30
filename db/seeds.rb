# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

duties = ["Lab Assistant", "Course Assistant"]

20.times do 
  Course.create(title: Faker::Book.title,   
                class_capacity: rand(30..50),
                building: Faker::Team.name)
  Lab.create(lab_capacity: rand(15..30),
                building: Faker::Team.name)
  duty = duties.sample
  duty_id = duties.index_at(duty)
  
  Assistant.create(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  duty_type: duties.sample,
                  )


