class Deck

	def initialize
		@ID = *(1..52)
		@suits = ["Spade", "Heart", "Diamond", "Club"]
		@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
		@cards = []
	end

	#Print out all the cards in the deck
	def cards
		@cards.each do |card|
			puts card.card
		end
	end

	#Move the cards around
	def shuffle
		@cards.shuffle
	end

	#Make the deck by looping through suits and ranks
	def create
		puts "Filling with the following suits:"
		puts "		#{@suits}"
		puts "Filling with the following ranks:"
		puts "		#{@ranks}"
		@suits.each do |suit|
			@ranks.each do |rank|
				@cards<<Card.new(:rank => rank, :suit => suit)
			end
		end
		puts "***Deck complete!****"
	end

	def deal
		@cards.pop
	end

	#Count of current cards herea = Deck.new
	def count
		puts "Deck currently holds #{@cards.count}"
	end

	#Error handling for missing methods
	def method_missing (method_name)
		puts "there's no method called '#{method_name}'"
	end
end


class Card

	attr_reader :rank, :suit, :ID

	def initialize (args)
		@card = args[:rank]
		@suit = args[:suit]
		@ID =  args[:ID]
	end

	#Read a card's values
	def card
		puts "#{@card} #{@suit}"
	end

	#Just the suit
	def suit
		puts "#{@suit}"
	end

	#Just the value
	def value
		put "#{card}"
	end
end

class Deal
	#Deal out cards

	#hand card from the top of the deck

	#reduce the number of cards in the deck

	#replace 

end

#Throwing down this interface for now
puts "What would you like to do?"
puts "1. Create Deck"
puts "2. Count cards in the deck"

response = gets.chomp.to_i
a = Deck.new

case response

when 1
	a.create
	a.cards
when 2
	a.count
when 3
	a.deal
end
