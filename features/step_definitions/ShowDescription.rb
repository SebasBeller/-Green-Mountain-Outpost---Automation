Given('I am at the GMO online site for the description') do
    visit 'https://demo.borland.com/gmopost/'
  end
  
  
  Then('I should see the description of the site:') do |description|
    expect(page).to have_content(description.strip)
  end
  
  