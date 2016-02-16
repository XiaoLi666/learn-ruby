# implicitly
def test_block_implicit
	return "No block" unless block_given?
	yield
	yield
end

puts test_block_implicit
test_block_implicit { puts "I am a block!" }

# explicitly
def test_block_explicit (&block_param)
	return "No block" if block_param == nil
	block_param.call
	block_param.call
end

puts test_block_explicit
test_block_explicit { puts "I am a block!" }