require_relative 'model_deck'

puts "Welcome!"

file_options = ['nighthawk_flashcard_data.txt','otter_flashcard_data.txt','raccoon_flashcard_data.txt']

file = file_options.sample

deck = Deck.new

deck.parse(file)
