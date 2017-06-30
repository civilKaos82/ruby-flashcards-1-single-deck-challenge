require_relative '../card'

describe Card do

    let(:card) {Card.new(question: "What is a nighthawk's primary food source?", answer: "insects")}

    describe "Card class behavior" do
        it "has accessible questions" do
            expect(card.question).to eq("What is a nighthawk's primary food source?")
        end
    end

    describe "#checker method" do
        it "changes the value of @correct if @answer is equal to the user response" do
            expect(card.checker("insects")).to eq(true)
        end
    end
end
