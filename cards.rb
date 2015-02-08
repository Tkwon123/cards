
class Deck
	def initialize
		@ID = *(1..52)
		@suits = ["Spade", "Heart", "Diamond", "Club"]
		@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
		@cards = []
	end

	def cards
		@cards.each do |card|
			puts card.card
		end
	end

	def shuffle
		@cards.shuffle
	end

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

a = Deck.new
a.create
a.cards
a.shuffle
a.cards