Feature: mad-libs asks words

  As a player
  I want to give the words
  So I can see the story

  Scenario: ask words
    Given I am already playing
    When I am asked a word
    Then I should write the word
