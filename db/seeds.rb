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


leonard = Article.new title: 'Bugls vegan',
					text: '«J’ai très tôt renoncé à la viande et un jour viendra où les hommes tels que moi proscriront le meurtre des animaux comme ils proscrivent aujourd’hui le meurtre de leurs semblables.» (Léonard de Vinci)',
					status: 'En ligne',
					image: open(File.join(Rails.root, 'app/assets/images/hamburger.jpg'))
if leonard.save
	puts "creation article leonard OK"
else
	puts "error creating article leonard"
end

confucius = Article.new title: 'Mousse au curry',
					text: '«Quiconque a entendu les cris d’un animal qu’on tue ne peut plus jamais manger de sa chair.» (Confucius)',
					status: 'En ligne',
					image: open(File.join(Rails.root, 'app/assets/images/hamburger.jpg'))

if confucius.save
	puts "creation article confucius OK"
else
	puts "error creating article confucius"
end

zola = Article.new title: 'Mousse au curry',
					text: '«La cause des animaux passe avant le souci de me ridiculiser.» (Emile Zola)',
					status: 'En ligne',
					image: open(File.join(Rails.root, 'app/assets/images/hamburger.jpg'))
if zola.save
	puts "creation article zola OK"
else
	puts "error creating article zola"
end

gandhi = Article.new title: 'Mousse au curry',
					text: '«La grandeur d’une nation et ses progrès moraux peuvent être jugés de la manière dont elle traite les animaux.»',
					status: 'En ligne',
					image: open(File.join(Rails.root, 'app/assets/images/hamburger.jpg'))
if gandhi.save
	puts "creation article gandhi OK"
else
	puts "error creating article gandhi"
end