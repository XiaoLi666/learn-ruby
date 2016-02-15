#### Food Finder ####
#
# Launch this Ruby file from the command line
# to get started.
#

# to find the directory of the current file
APP_ROOT = File.dirname(__FILE__)

# multiple ways to get to the guide directory
# require "#{APP_ROOT}/lib/guide"
# require File.join(APP_ROOT, 'lib', 'guide')
# require File.join(APP_ROOT, 'lib', 'guide.rb')

# special ruby variable
$:.unshift(File.join(APP_ROOT, 'lib'))
require 'guide'

guide = Guide.new('restaurant.txt')
guide.launch!