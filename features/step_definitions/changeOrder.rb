
Then('I should see the following quantity:') do |table|
  
  expect(page).to have_selector(:xpath, '/html/body/form/table/tbody/tr[1]/td/div/center/table', visible: true, wait: 10)

  within(:xpath, '/html/body/form/table/tbody/tr[1]/td/div/center/table') do
    table.raw.each do |row|
      qty = row[0]
      description = row[1]

     
      within('tr', text: description) do
       
        expect(page).to have_selector('td', text: qty)
      end
    end
  end
end
And('I go back to the previous page') do
  page.go_back
end
When(/^I change the order quantities as shown below:$/) do |table|
  @orderTable = table.raw
  @orderTable.each do |row|
    product_name = row[0]
    new_quantity = row[1]
    case product_name
    when "3 Person Dome Tent"
      fill_in 'QTY_TENTS', with: new_quantity
    when "External Frame Backpack"
      fill_in 'QTY_BACKPACKS', with: new_quantity
    when "Glacier Sun Glasses"
      fill_in 'QTY_GLASSES', with: new_quantity
    when "Padded Socks"
      fill_in 'QTY_SOCKS', with: new_quantity
    when "Hiking Boots"
      fill_in 'QTY_BOOTS', with: new_quantity
    when "Back Country Shorts"
      fill_in 'QTY_SHORTS', with: new_quantity
    end
  end
end
Then('I should see the updated quantities:') do |table|
  expect(page).to have_selector(:xpath, '/html/body/form/table/tbody/tr[1]/td/div/center/table', visible: true, wait: 10)

  within(:xpath, '/html/body/form/table/tbody/tr[1]/td/div/center/table') do
    table.raw.each do |row|
      qty = row[0]
      description = row[1]

      within('tr', text: description) do
        
        expect(page).to have_selector('td', text: qty)
      end
    end
  end
end








