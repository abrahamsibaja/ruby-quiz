Feature: mad-libs starts game

  As a player
  I want to start the game
  So I can start giving the words asked

  Scenario: start game
    Given I am not yet playing
    When I start a new game
    Then I should see "Welcome to Mad Libs"
