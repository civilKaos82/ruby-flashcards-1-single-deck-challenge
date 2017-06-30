
class Deck

    attr_reader :cards

    def initialize
        @cards = []
    end

    def parse(filepath)
        file = File.open(filepath, 'a+')

        file_string = file.read

        card_arr = file_string.split("\n\n")
        card_arr.map! do |qa_string|
            qa_string.split("\n")
        end

        card_arr.each do |qa|
            @cards << Card.new(question: qa[0], answer: qa[1])
        end
    end

    def calculate_results
    end


end

