Given('I am at the GMO online site for future technologies') do
    visit 'https://demo.borland.com/gmopost/'
  end
  
  Then('I see the list of future technologies for the site') do |table|
    expected_technologies = table.raw.flatten
    expected_technologies.each do |technology|
      expect(page).to have_content(technology)
    end
  end
  