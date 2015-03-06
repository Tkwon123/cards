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
			puts cards.card
		end
	end

	#Move the cards around
	def shuffle
		@cards = @cards.shuffle
		#puts "Here's the new order:"
		#@cards.each do |card|
		#	print card.card
		#end
	end

	#Make the deck by countering through suits and ranks
	def create
		#puts "Filling with the following suits:"
		#puts "		#{@suits}"
		#puts "Filling with the following ranks:"
		#puts "		#{@ranks}"
		@suits.each do |suit|
			@ranks.each do |rank|
				#@cards will hold all the cards in the deck
				@cards<<Card.new(:rank => rank, :suit => suit)
			end
		end
		puts "***Deck complete!****"
	end

	#Initializes a starting hand of 5 cards
	def deal
		@cardsdealt = 5
		@temparr = []
		@cardsdealt.times do |deal|
			@temparr << @cards.pop
		end
		@hand = Hand.new(:holding => @temparr)
	end

	#Count of current cards here = Deck.new
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
		puts "#{card}"
	end
end

class Hand < Deck #Inherits the variables within deck to keep track of cards
	#Deal out cards
	def initialize(args)
		@holding = args[:holding]
		self.holding
	end


	def holding
	counter = 1
		@holding.each do |card|
			print "#{counter}: "
			print "#{card.card}"
			counter = counter+1
		end
	end

end
 

=begin
		@cardsdealt.each do |x|
			@hand << @cards.pop
		end
		puts @hand
=end

	#hand card from the top of the deck

	#reduce the number of cards in the deck

	#replace 


#Throwing down this interface for now
puts "What would you like to do?"
puts "1. Count cards in the deck"
puts "2. Deal a deck" 
puts "3. Deal your hand"

response = gets.chomp.to_i

#Automatically create a deck for now
deck = Deck.new
deck.create
deck.shuffle

case response

	when 1
		deck.count
	when 2
		deck.shuffle
	when 3
		deck.deal
		puts "Which cards to hold?"
end
