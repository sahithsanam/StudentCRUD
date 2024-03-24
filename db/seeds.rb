# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Student.create(name: "sanam sahith",roll_no:"i212",age:"20") 
Student.create(name: "sreehith",roll_no:"i2122",age:"18") 
Student.create(name: "harsh",roll_no:"i210",age:"21") 
Student.create(name: "abhishek",roll_no:"i211",age:"21") 
Student.create(name: "ss",roll_no:"i2123",age:"20") 