check = "[\033[1;32m√\033[m] "
red = "\033[31m"
bold_green = "\033[32;1m"
end_color = "\033[0m"

str = "Seeding from articles.rb"
puts bold_green + "\n" + str
str.length.times do
	print "*"
end
puts end_color

#************************************************#
#                Creating Articles	             #
#************************************************#

leonard = Article.new title: 'Pâtes en sauce',
					text: '«J’ai très tôt renoncé à la viande et un jour viendra où les hommes tels que moi proscriront le meurtre des animaux comme ils proscrivent aujourd’hui le meurtre de leurs semblables.» (Léonard de Vinci)',
					status: 'En ligne',
					content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut ligula aliquet, tempus sem sed, sollicitudin nisl. Aenean nec nunc ligula. Mauris auctor mi sit amet diam mattis rhoncus. Aliquam pretium leo odio, sit amet molestie lorem eleifend non. Pellentesque eget est blandit, sollicitudin justo quis, bibendum metus. Proin eleifend sapien at ligula rutrum sollicitudin. Praesent facilisis ac elit ut interdum. ",
					image: open(Rails.root + 'app/assets/images/food/1.jpg')
if leonard.save
	puts "creation article leonard OK"
else
	puts "error creating article leonard"
end

confucius = Article.new title: 'Lentil Burger',
					text: '«Quiconque a entendu les cris d’un animal qu’on tue ne peut plus jamais manger de sa chair.» (Confucius)',
					status: 'En ligne',
					content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut ligula aliquet, tempus sem sed, sollicitudin nisl. Aenean nec nunc ligula. Mauris auctor mi sit amet diam mattis rhoncus. Aliquam pretium leo odio, sit amet molestie lorem eleifend non. Pellentesque eget est blandit, sollicitudin justo quis, bibendum metus. Proin eleifend sapien at ligula rutrum sollicitudin. Praesent facilisis ac elit ut interdum. ",
					image: open(Rails.root + 'app/assets/images/food/2.jpg')

if confucius.save
	puts "creation article confucius OK"
else
	puts "error creating article confucius"
end

zola = Article.new title: 'Vegan BurRITO',
					text: '«La cause des animaux passe avant le souci de me ridiculiser.» (Emile Zola)',
					status: 'En ligne',
					content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut ligula aliquet, tempus sem sed, sollicitudin nisl. Aenean nec nunc ligula. Mauris auctor mi sit amet diam mattis rhoncus. Aliquam pretium leo odio, sit amet molestie lorem eleifend non. Pellentesque eget est blandit, sollicitudin justo quis, bibendum metus. Proin eleifend sapien at ligula rutrum sollicitudin. Praesent facilisis ac elit ut interdum. ",
					image: open(Rails.root + 'app/assets/images/food/3.jpg')
if zola.save
	puts "creation article zola OK"
else
	puts "error creating article zola"
end

gandhi = Article.new title: 'vegan brownies',
					text: '«La grandeur d’une nation et ses progrès moraux peuvent être jugés de la manière dont elle traite les animaux.»',
					status: 'En ligne',
					content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut ligula aliquet, tempus sem sed, sollicitudin nisl. Aenean nec nunc ligula. Mauris auctor mi sit amet diam mattis rhoncus. Aliquam pretium leo odio, sit amet molestie lorem eleifend non. Pellentesque eget est blandit, sollicitudin justo quis, bibendum metus. Proin eleifend sapien at ligula rutrum sollicitudin. Praesent facilisis ac elit ut interdum. ",
					image: open(File.join(Rails.root, 'app/assets/images/food/4.jpg'))
if gandhi.save
	puts "creation article gandhi OK"
else
	puts "error creating article gandhi"
end

darwin = Article.new title: 'POPCORN OKRA',
					text: '«Peu d’hommes pourraient supporter pendant cinq minutes l’observation d’un animal se débattant, avec un membre écrasé ou déchiqueté.» (Darwin)',
					status: 'En ligne',
					content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut ligula aliquet, tempus sem sed, sollicitudin nisl. Aenean nec nunc ligula. Mauris auctor mi sit amet diam mattis rhoncus. Aliquam pretium leo odio, sit amet molestie lorem eleifend non. Pellentesque eget est blandit, sollicitudin justo quis, bibendum metus. Proin eleifend sapien at ligula rutrum sollicitudin. Praesent facilisis ac elit ut interdum. ",
					image: open(File.join(Rails.root, 'app/assets/images/food/5.jpg'))
if darwin.save
	puts "creation article darwin OK"
else
	puts "error creating article darwin"
end

lincoln = Article.new title: "Cauliflower steak",
					text: '«Je suis en faveur des droits des animaux autant que des droits de l’homme.» (Abraham Lincoln)',
					status: 'En ligne',
					content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut ligula aliquet, tempus sem sed, sollicitudin nisl. Aenean nec nunc ligula. Mauris auctor mi sit amet diam mattis rhoncus. Aliquam pretium leo odio, sit amet molestie lorem eleifend non. Pellentesque eget est blandit, sollicitudin justo quis, bibendum metus. Proin eleifend sapien at ligula rutrum sollicitudin. Praesent facilisis ac elit ut interdum. ",
					image: open(File.join(Rails.root, 'app/assets/images/food/6.jpg'))
if lincoln.save
	puts "creation article Lincoln OK"
else
	puts "error creating article Lincoln"
end
