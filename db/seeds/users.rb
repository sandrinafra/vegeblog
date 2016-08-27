check = "[\033[1;32m√\033[m] "
red = "\033[31m"
bold_green = "\033[32;1m"
end_color = "\033[0m"

str = "Seeding from user.rb"
puts bold_green + "\n" + str
str.length.times do
	print "*"
end
puts end_color

#************************************************#
#                Creating Users	                 #
#************************************************#

sandrina = User.new email: 'sandrinafranco0@gmail.com',
					password: 'aaaaaaaa',
					password_confirmation: 'aaaaaaaa',
					firstname: 'sandrina',
					lastname: 'bernard',
					status: 'admin'
if sandrina.save
	puts check + "user " + sandrina.firstname + " created" + end_color
	puts "creation user sandrina OK"
else
	puts red + "error creating user " + sandrina.firstname + end_color
	puts " - " + sandrina.errors.full_messages.first
end


laure = User.new email: 'laure@gmail.com',
					password: 'aaaaaaaa',
					password_confirmation: 'aaaaaaaa',
					firstname: 'laure',
					lastname: 'beli',
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
					lastname: 'ramin',
					status: 'user'
if louna.save
	puts "creation user louna OK"
else
	puts "error creating user louna"
end
