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

laure = User.new email: 'laure@gmail.com',
					password: 'aaaaaaaa',
					password_confirmation: 'aaaaaaaa',
					firstname: 'laure',
					lastname: 'franco',
					status: 'user'
if laure.save
	puts "creation user laure OK"
else
	puts "error creating user laure"
end

thierry = User.new email: 'thierry@gmail.com',
					password: 'aaaaaaaa',
					password_confirmation: 'aaaaaaaa',
					firstname: 'thierry',
					lastname: 'franco',
					status: 'user'
if thierry.save
	puts "creation user thierry OK"
else
	puts "error creating user thierry"
end

louna = User.new email: 'louna@gmail.com',
					password: 'aaaaaaaa',
					password_confirmation: 'aaaaaaaa',
					firstname: 'louna',
					lastname: 'franco',
					status: 'user'
if louna.save
	puts "creation user louna OK"
else
	puts "error creating user louna"
end
