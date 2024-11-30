
Then('I should see the description of the site:') do |description|
  expect(page).to have_content(description.strip)
end
  
  