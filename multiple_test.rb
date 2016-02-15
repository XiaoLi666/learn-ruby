class Animal
	attr_accessor 	:name, :noise, :color
	attr_writer 	:leg, :arm
	# attr_reader 	:color 

	@@species = ['cat','cow','dog','duck','horse','pig']
	@@current_animals = []

	def self.current_animals
		@@current_animals
	end

	# class method rather than instance method
	def self.species
		@@species
	end

	def self.species=(array=[])
		@@species = array
	end

	# this is more like a static factory
	def self.create_with_attributes(noise, color)
		animal = Animal.new(color)
		animal.noise = noise
		return animal
	end

	# instance methods
	def initialize(color = "white")
		@color = color
		@noise = "haha"
		#puts "A new animal has been instantiated!"
		@@current_animals << self
	end

	def Speak
		puts "I am an animal!"
	end
end

=begin
a1 = Animal.new("blue")
puts a1.color
puts "-----"

a2 = Animal.new
puts a2.color
puts "-----"

a3 = Animal.create_with_attributes("haha", "yellow")
puts a3.noise
puts a3.color

# class methods
puts Animal.species.inspect
Animal.species = [1,2,3,4,5]
puts Animal.species.inspect
puts Animal.current_animals.inspect
=end

# try to define a subclass here
class Cow < Animal
	def Speak
		super
		puts "I am also a cow!"
	end
end

#maisie = Cow.new("purple")
#maisie = Cow.create_with_attributes("lol", "red");
maisie = Cow.new("purple")
maisie.Speak
puts maisie.color

=begin
# array = ["a","b","c","d",2]
x = [1,2,3]
x = x.to_s
puts x
=end

class Array
	# just to override the to_s function defined in the array class
	def to_s
		self.join(' lol ')
	end
end
x = [1,2,3]
puts x.to_s

class Pig < Animal
	def
end

module Romantic
	class Date
		# class body
	end
end