# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# duties = ["Lab Assistant", "Course Assistant"]

duty_types = ["Lab", "Course"]

20.times do 
  Course.create(title: Faker::Company.name,   
                class_capacity: rand(30..50),
                building: Faker::Team.name)
  Lab.create(lab_capacity: rand(15..30),
                building: Faker::Team.name)
end 

count_of_labs = Lab.count
count_of_courses = Course.count

40.times do
  duty = duty_types.sample
  if duty == "Lab"
      duty_id = Lab.offset(rand(count_of_labs)).first.id
  else
      duty_id = Course.offset(rand(count_of_courses)).first.id
  end

  Assistant.create(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  duty_type: duty, 
                  duty_id: duty_id
                  )
end


