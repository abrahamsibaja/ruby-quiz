require 'spec_helper'

describe Madlibs::Game, "#game_intro" do
  let(:output) { double('output').as_null_object }
  let(:game) { described_class.new(output) }

  context "when the player starts the game" do
    it "displays 'Welcome to Mad Libs'" do
      allow(output).to receive(:puts) { "Welcome to Mad Libs"}
      game.game_intro
    end
  end
end

describe Madlibs::Game, "#asks_words" do
  let(:output) { double('output').as_null_object }
  let(:game) { described_class.new(output) }

  context "when the game asks for a word" do
    it "displays the type of the word" do
      allow(output).to receive(:puts) {"Word Type"}
      game.ask_words
    end

    it "saves the word given by the player" do
      expect(game.words).to be_empty
    end
  end
end
