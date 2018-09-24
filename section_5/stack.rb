class Stack
	@@number_of_stacks = 0
	attr_reader :stack
	def initialize(size)
		@stack = []
		@MAX_SIZE = size
		@@number_of_stacks +=1
	end

	def push(element)
		if @stack.size < @MAX_SIZE  
			@stack.push(element)
			puts "Element pushed into stack"
		else
			puts "StackOverflow. Cannot Add."
		end
	end

	def top
		@stack.last
	end

	def pop
		if size > 0
			@stack.pop
			puts "Element popped."
		else
			puts "Stack already empty."
		end

	end

	def size
		@stack.size
	end

	def self.number_of_stacks
		@@number_of_stacks
	end
end

puts "Creating a new stack with size 2 - "
puts "Push Operation - "
s = Stack.new(2)
puts "Adding Element - 1"
s.push(1)
puts "Adding Element - 2"
s.push(2)
puts "Adding Element - 3"
s.push(3)
puts "Now the stack looks like this - " <<  s.stack.to_s

puts "Stack Top Method - "
puts "Element at top of the stack: " << s.top.to_s

puts "Pop Operation - "
s.pop
puts "Now the stack looks like this - " << s.stack.to_s

puts "Stack Size Method - "
puts "Stack size now - " << s.size.to_s

puts "Total number of stacks created: " << Stack.number_of_stacks.to_s
