
Given(/^I am on the GMO Home Page$/) do
  visit('/')
end


And(/^I click on the "([^"]*)" button$/) do |button_name|
  click_button(button_name) 
end

And(/^I am at "([^"]*)" Page$/) do |expected_title_page|
  expect(page).to have_content(expected_title_page)
end

And(/^I check the "([^"]*)" checkbox$/) do |checkbox_name|
  check(checkbox_name) 
end



And(/^I click for return on the "([^"]*)" button$/) do |button_name|
  click_button(button_name) 
end

