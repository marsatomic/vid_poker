class Card

    attr_reader :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank

        set_suit_name
        set_rank_name
    end

    def set_suit_name
        case @suit
        when 0
            @suit_name = 'Spades'
        when 1
            @suit_name = 'Hearts'
        when 2
            @suit_name = 'Clubs'
        when 3
            @suit_name = 'Diamonds'
        else
            @suit_name = ''
        end

    end

    def set_rank_name
        case @rank
        when 0
            @rank_name = 'Ace'
        when 1
            @rank_name = 'King'
        when 2
            @rank_name = 'Queen'
        when 3
            @rank_name = 'Jack'
        when 4
            @rank_name = 'Ten'
        when 5
            @rank_name = 'Nine'
        when 6
            @rank_name = 'Eight'
        when 7
            @rank_name = 'Seven'
        when 8
            @rank_name = 'Six'
        when 9
            @rank_name = 'Five'
        when 10
            @rank_name = 'Four'
        when 11
            @rank_name = 'Three'
        when 12
            @rank_name = 'Two'
        else
            @rank_name = 'Joker'
        end

    end

    def suit_name
        @suit_name
    end

    def rank_name
        @rank_name
    end

    def to_s
        if(@rank != 13)
            @rank_name + ' of ' + @suit_name
        else
            @rank_name
        end
    end

end