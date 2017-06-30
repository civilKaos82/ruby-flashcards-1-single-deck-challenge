class Card

    attr_reader :question, :answer, :correct

    def initialize(args = {})
        @question = args[:question]
        @answer = args[:answer]
        @correct = false
    end

    def checker(user_response)
        @correct = true if user_response == self.answer
    end

end
