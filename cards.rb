class Deck

end


class Card
	attr_reader :rank, :suit, :ID

	def initialize (args)
		@card = args[:rank]
		@suit = args[:suit]
		@ID =  args[:ID]
	end

	def card
		puts "#{@card} #{@suit}"
	end

	def suit
		puts "#{@suit}"
	end

	def value
		put "#{card}"
	end
end

@ID = *(1..52)
@suits = ["Spade", "Heart", "Diamond", "Club"]
@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
@deck = []

@suits.each do |suit|
	@ranks.each do |rank|
		@deck<<Card.new(:rank => rank, :suit => suit)
	end
end