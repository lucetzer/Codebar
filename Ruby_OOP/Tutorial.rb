

class Tutorial

	LEVELS = {
  	:easy => 1,
		:medium => 2,
		:hard => 3,
		:advanced => 4,
		:expert => 5,
	}

	attr_reader :type, :difficulty
	def initialize (name, type, difficulty)
		@name = name
		@type = type
		@difficulty = difficulty
	end

#1. check if the both types match? If they match, then compare their difficulty. If they don't go to step 2. If they do go to step 3.
#2. If they don't match, then puts "You can't compare a (type1name) with (type2name) tutorial"
#3. If they do, then compare difficulty- if difficulty1 is great than difficulty2, then it's true else, it's false.
	def is_harder_than?(other)
		if other.type == @type
			LEVELS[@difficulty] > LEVELS[other.difficulty] ? true : false
			# or you can write another method for difficulty and then compare self.difficulty_score > tutorial.difficulty_score ? true : false
		else
			"You can't compare a #{@type} with a #{other.type} tutorial"
		end
	end
end

tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
tutorial2 = Tutorial.new("Introduction to JavaScript", :javascript, :easy)
tutorial3 = Tutorial.new("HTTP Requests, AJAX and APIs", :javascript, :advanced)

puts tutorial1.is_harder_than?(tutorial2)
# Answer should be - You cannot compare a Ruby with a JavaScript tutorial

puts tutorial2.is_harder_than?(tutorial3)
# false

puts tutorial3.is_harder_than?(tutorial2)
# true