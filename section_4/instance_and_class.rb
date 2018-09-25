class Player
	def self.team
		"Team India"
	end

	def name
		if @name
			@name
		else
			"No name yet."
		end
	end

	def name=(name_string)
		@name = name_string
	end
end

{
	ldjfndf
}


p1 = Player.new
puts p1.name
p1.name=("Messi")
puts p1.name
puts Player.team		
			
