Then(/^I see the list .* for the site$/) do |table|
  expected_technologies = table.raw.flatten
  page_content = page.text
  expected_technologies.each do |technology|
    expect(page_content).to include(technology)
  end
end
  