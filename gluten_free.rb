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
			if item == @allergy
					raise AllergyError.new("Oh, no! I'm allergic to #{item}!!")
			end
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

class AllergyError < StandardError
end

 
# Bonus: When a person attempts to eat a food they are allergic to,
#        ... remove ALL the food from the person's stomach before raising the exception



chris.eat 