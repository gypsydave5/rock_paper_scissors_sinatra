When(/^I click "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I enter my name$/) do
  fill_in "name", with: "Stephen"
end

Then(/^I should be ready to play$/) do
  expect(page).to have_content("OK then")
end

Given(/^I've registered to play$/) do
  visit '/new-game'
  click_button "Play"
end

When(/^I choose (.*?)$/) do |something|
  click_button(something)
end

#When(/^the computer pick (.*?)$/) do |something|
	#allow(GAME.player2).to receive(:pick).and_return("Scissors")
#end