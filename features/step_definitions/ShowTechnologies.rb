Given('I am at the GMO online site for technologies') do
    visit 'https://demo.borland.com/gmopost/'
  end
  
  
  Then('I see the list of technologies used for the site') do |table|
    expected_technologies = table.raw.flatten
    page_content = page.text
    expected_technologies.each do |technology|
      expect(page_content).to include(technology)
    end
  end
  