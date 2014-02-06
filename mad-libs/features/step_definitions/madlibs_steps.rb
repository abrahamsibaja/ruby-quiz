system('clear')
class Output
  def messages
    @messages ||=[]
  end

  def puts message
    messages << message
  end
end

def output
  @output ||= Output.new
end

#starts_game
Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  @start = Madlibs::Game.new(output)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  @start.game_intro
  output.messages.should include(arg1)
end

#asks_words
Given(/^I am already playing$/) do
    pending # express the regexp above with the code you wish you had
end

When(/^I am asked a word$/) do
    pending # express the regexp above with the code you wish you had
end

Then(/^I should write the word$/) do
    pending # express the regexp above with the code you wish you had
end
