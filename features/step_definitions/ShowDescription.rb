Given('I am at the GMO online site for the description') do
    visit 'https://demo.borland.com/gmopost/'
  end
  
  When('I click the "About the GMO Site" button for the description') do
    find(:xpath, '/html/body/form/div[1]/center/table/tbody/tr/td[2]/input').click
  end
  
  Then('I should see the description of the site:') do |description|
    expect(page).to have_content(description.strip)
  end
  
  