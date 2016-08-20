# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sandrina = User.new email: 'sandrinafranco0@gmail.com',
					password: 'aaaaaaaa',
					password_confirmation: 'aaaaaaaa',
					firstname: 'sandrina',
					lastname: 'franco',
					status: 'admin'
if sandrina.save
	puts "creation user sandrina OK"
else
	puts "error creating user sandrina"
end