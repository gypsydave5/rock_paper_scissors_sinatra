Feature: Playing
	In order to play Rock Paper Scissors
	As a player
	I need to get two players

Scenario: A player can register
	Given I am on the homepage
	When I click "New Game"
	And I enter my name
	When I press "Play!"
	Then I should be ready to play

#How do I dummy results in Cucumber?

Scenario: A player is playing
	Given I've registered to play
	When I choose Paper
  Then I should see "Paper"

Scenario: A player is playing
	Given I've registered to play
	When I choose Rock
	Then I should see "Rock"

Scenario: A player is playing
	Given I've registered to play
	When I choose Scissors
  Then I should see "Scissors"

Scenario: A player is playing
	Given I've registered to play
	When I choose Deano
  Then I should see "Deano"

Scenario: A player is playing
	Given I've registered to play
	When I choose Sinatra
  Then I should see "Sinatra"