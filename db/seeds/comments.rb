check = "[\033[1;32m√\033[m] "
red = "\033[31m"
bold_green = "\033[32;1m"
end_color = "\033[0m"

str = "Seeding from comments.rb"
puts bold_green + "\n" + str
str.length.times do
	print "*"
end
puts end_color

#************************************************#
#                Creating Comments	             #
#************************************************#

# Article 1

comment = Comment.new text: 'Super la recette!!',
										user_id: 2,
										article_id: 1
if comment.save
  puts check + "comment #{comment.id} created" + end_color
else
  puts red + "error creating comment #{comment.id}" + end_color
  puts " - " + comment.errors.full_messages.first
end

comment = Comment.new text: 'Super la recette!!',
										user_id: 2,
										article_id: 2
if comment.save
  puts check + "comment #{comment.id} created" + end_color
else
  puts red + "error creating comment #{comment.id}" + end_color
  puts " - " + comment.errors.full_messages.first
end

comment = Comment.new text: 'Super la recette!!',
										user_id: 2,
										article_id: 4
if comment.save
  puts check + "comment #{comment.id} created" + end_color
else
  puts red + "error creating comment #{comment.id}" + end_color
  puts " - " + comment.errors.full_messages.first
end

# Article 2

comment = Comment.new text: 'Super la recette!!',
										user_id: 2,
										article_id: 1
if comment.save
  puts check + "comment #{comment.id} created" + end_color
else
  puts red + "error creating comment #{comment.id}" + end_color
  puts " - " + comment.errors.full_messages.first
end

comment = Comment.new text: 'Super la recette!!',
										user_id: 2,
										article_id: 2
if comment.save
  puts check + "comment #{comment.id} created" + end_color
else
  puts red + "error creating comment #{comment.id}" + end_color
  puts " - " + comment.errors.full_messages.first
end

comment = Comment.new text: 'Super la recette!!',
										user_id: 2,
										article_id: 3
if comment.save
  puts check + "comment #{comment.id} created" + end_color
else
  puts red + "error creating comment #{comment.id}" + end_color
  puts " - " + comment.errors.full_messages.first
end

# Article 3

comment = Comment.new text: 'Super la recette!!',
										user_id: 3,
										article_id: 3
if comment.save
  puts check + "comment #{comment.id} created" + end_color
else
  puts red + "error creating comment #{comment.id}" + end_color
  puts " - " + comment.errors.full_messages.first
end

6.times do |article_id|
	5.times do |i|
		comment = Comment.new text: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
		incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
		exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
		user_id: i % 3 + 1,
		article_id: article_id + 1
		if comment.save
			puts check + "comment #{comment.id} created" + end_color
		else
			puts red + "error creating comment #{comment.id}" + end_color
			puts " - " + comment.errors.full_messages.first
		end
	end

end

comment = Comment.new text: 'Super la recette!!',
										user_id: 4,
										article_id: 3
if comment.save
  puts check + "comment #{comment.id} created" + end_color
else
  puts red + "error creating comment #{comment.id}" + end_color
  puts " - " + comment.errors.full_messages.first
end

comment = Comment.new text: 'Super la recette!!',
										user_id: 4,
										article_id: 3
if comment.save
  puts check + "comment #{comment.id} created" + end_color
else
  puts red + "error creating comment #{comment.id}" + end_color
  puts " - " + comment.errors.full_messages.first
end
