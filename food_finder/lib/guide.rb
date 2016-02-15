# in the same directory
require 'restaurant'

class Guide

	class Config
		@@actions = ['list','find','add','quit']
		def self.actions; @@actions; end
	end

	def initialize(path=nil)
		# locate the restaurant text file at path
		# or create a new file
		# exit if create fails
		Restaurant.filepath = path
		if Restaurant.file_usable?
			puts "Found restaurant file."
		elsif Restaurant.create_file
			puts "Created restaurant file."
		else
			puts "Existing. \n\n"
			exit!
		end
	end

	def launch!
		introduction
		# action loop
		# 	what do yo want to do? (list, find, add, quit)
		# 	do that action
		# repeat until user quits
		result = nil
		until result == :quit
			action = get_action
			result = do_action(action)
		end
		conclusion
	end

	def get_action
		action = nil
		until Guide::Config.actions.include?(action)
			puts "Actions: " + Guide::Config.actions.join(", ")
			print "> "
			user_response = gets.chomp
			action = user_response.downcase.strip
		end
		return action
	end

	def do_action(action)
		# handling diff actions
		case action
		when 'list'
			puts "Listing..."
		when 'find'
			puts "Finding..."
		when 'add'
			puts "Adding..."
		when 'quit'
			return :quit
		else
			puts "\n I don't understand that command. \n"
		end
	end

	def introduction
		puts "\n\n<<< Welcome to the Food Finder >>>\n\n"
		puts "This is an interactive guide to help you find the food you crave.\n\n"
	end

	def conclusion
		puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
	end
end