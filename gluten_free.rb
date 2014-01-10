#Title: Gluten Free
 
#Prerequisites:
#- Ruby
#    - Exceptions
#    - Hashes & Arrays
#    - Objects & Classes
 
#Objectives:
#- Work with exceptions, classes, class variables, conditions
 
"======================================================================"
 
# Create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
# If a food array contains a known allergy reject the food.


class AllergyError < StandardError
end
 
class Person
	attr_reader :name
	def initialize(name, allergy)
		@name = name
		@allergy = allergy
		@stomach = []
	end

	def eat(food)
		@stomach += food
		@stomach.each do |item|
			raise AllergyError.new("Oh, no! I'm allergic to #{item}!!") if item == @allergy
		end
		rescue 
			puts "Spit the food out."
			@stomach = []
		ensure
			if @stomach.empty?
				puts "Your stomach is empty so you are very hungry"
			else
				puts "Yummy food!"
			end
	end

end
 
# Create a Person named Chris. Chris is allergic to gluten.
chris = Person.new("Chris", "gluten")

# Create a Person named Beth. Beth is allergic to scallops.
beth = Person.new("Beth", "scallops")

# Feed them the following foods
 
pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]
 
# When a person attempts to eat a food they are allergic to, raise a custom exception
# For example:  AllergyError


# Bonus: When a person attempts to eat a food they are allergic to,
#        ... remove ALL the food from the person's stomach before raising the exception


puts "Chris is going to eat pizza ... "
chris.eat pizza

puts "Chris is going to eat scallops ... "
chris.eat pan_seared_scallops

puts "Chris is going to drink water ... "
chris.eat water

puts "Beth is going to eat pizza ... "
beth.eat pizza

puts "Beth is going to eat scallops ... "
beth.eat pan_seared_scallops

puts "Beth is giong to drink water ... "
beth.eat water
