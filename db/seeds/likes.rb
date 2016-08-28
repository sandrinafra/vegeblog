check = "[\033[1;32m√\033[m] "
red = "\033[31m"
bold_green = "\033[32;1m"
end_color = "\033[0m"

str = "Seeding from likes.rb"
puts bold_green + "\n" + str
str.length.times do
	print "*"
end
puts end_color

#************************************************#
#                Creating Likes   	             #
#************************************************#

# Comment 1

like = Like.new user_id: 2,
								comment_id: 4
if like.save
  puts check + "like #{like.id} created" + end_color
else
  puts red + "error creating like " + like.id + end_color
  puts " - " + like.errors.full_messages.first
end

like = Like.new user_id: 3,
								comment_id: 2
if like.save
  puts check + "like #{like.id} created" + end_color
else
  puts red + "error creating like " + like.id + end_color
  puts " - " + like.errors.full_messages.first
end

like = Like.new user_id: 1,
								comment_id: 3
if like.save
  puts check + "like #{like.id} created" + end_color
else
  puts red + "error creating like " + like.id + end_color
  puts " - " + like.errors.full_messages.first
end

42.times do |i|
	like = Like.new user_id: rand(1..User.count),
									comment_id: rand(1..Comment.count)
	if like.save
	  puts check + "like #{like.id} created" + end_color
	else
	  puts red + "error creating like " + like.id + end_color
	  puts " - " + like.errors.full_messages.first
	end
end
