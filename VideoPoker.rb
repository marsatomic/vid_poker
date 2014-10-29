require_relative 'Card'
require_relative 'Deck'

class VideoPoker

    def initialize()

    end

    def init
        @deck = Deck.new(false, 1)
        @deck.shuffle
        @hand = Array.new(5)
    end

    def deal
        init

        @hand = @deck.get_cards(5)
    end

    def has_pair?(hand)
    end

    def has_two_pair?(hand)
    end

    def has_trips?(hand)
    end

    def has_straight?(hand)
    end

    def has_flush(hand)
    end

    def has_full_house(hand)
    end

    def has_quads?(hand)
    end

    def has_straight_flush(hand)
    end

    def set_wager(wager)
    end

    def pay
    end

    def take_marker
    end

    def print_hand
    end

    def load_player_data
    end

    def save_player_data
    end

end