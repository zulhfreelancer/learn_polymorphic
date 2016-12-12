def create_object(model_string)
	object = Object.const_get(model_string)
	o = object.create(title: Faker::Hipster.sentence, body: Faker::Hipster.sentence)
	# puts "#{model_string} #{o.id} created"
	return o
end

def create_comments(object, max)
	1.upto(max).each do |m|
		object.comments.create(body: Faker::Hipster.sentence)
		# puts "Comment created for #{object.class.name} #{m}"
	end
end

def create_with_comments(model_string)
	object = create_object(model_string)
	max    = (1..10).to_a.sample
	create_comments(object, max)
	# puts "****************"
end

1.upto(10).each do |n|
	create_with_comments("Post")
	create_with_comments("Page")
end
