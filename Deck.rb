# supports multiple decks via 'decks' arg in construcgor

require_relative 'Card'

class Deck

    def initialize(use_jokers, decks)
        @use_jokers = use_jokers # boolean: whether to include jokers in the deck

        @cards = []

        decks.times do |deck|
            4.times do |suit|
                13.times do |rank|
                    card = Card.new(suit, rank)
                    @cards << card
                end
            end

            if(@use_jokers)
                2.times do |foo|
                    card = Card.new(4, 13)
                    @cards << card
                end
            end
        end
    end

    def use_jokers?
        @use_jokers
    end

    def shuffle
        @cards.shuffle!
    end

    def get_card
        @cards.pop
    end

    def get_cards(qty)
        flop = []
        qty.times do |iteration|
            flop << @cards.pop
        end
        return flop
    end

    def size
        @cards.size
    end

    # Test methods

    def contains(card)
        if(@cards.include?(card))
            return true
        else
            return false
        end
    end

    def print
        @cards.each do |card|
            puts card.to_s
        end
    end

end