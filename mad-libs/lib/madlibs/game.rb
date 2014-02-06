module Madlibs
  class Game
    attr_reader :word_types

    def initialize(output)
      @output = output
      @words = []
      @empty_story = "My name is ((noun)) and it's ((adjetive))"
      @word_types = []
    end

    def game_intro
      @output.puts "Welcome to Mad Libs"
    end

    def ask_words
    end

    def get_all_word_types
      @word_types = @empty_story.split(" ").select{|word| in_parenthesis?(word)}
      clean_word_types
    end

    private
    def in_parenthesis?(word)
      /\(\([a-z\+]/.match(word)
    end

    def clean_word_types
      @word_types.map!{|type| type.delete "("}
      @word_types.map!{|type| type.delete ")"}
    end
  end
end

game = Madlibs::Game.new("")
game.get_all_word_types
game.ask_words
puts game.word_types
