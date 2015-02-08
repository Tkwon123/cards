class Cards
	attr_reader :rank, :suit, :ID

	def initialize (args)
		@card = args[:rank]
		@suit = args[:suit]
		@ID =  args[:ID]
	end

	def value
		puts ""
	end

end

@ID = *(1..52)
@suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
@ranks = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
@deck = []

@suits.each do |suit|
	@ranks.each do |rank|
		@deck<<Cards.new(:rank => rank, :suit => suit)
	end
end
