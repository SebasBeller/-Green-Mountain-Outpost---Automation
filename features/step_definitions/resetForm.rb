Given(/^I am on the GMO Home Page Reset$/) do
    page.driver.browser.manage.window.maximize
    visit('/')
  end
  
  And(/^I click on the "Enter GMO OnLine" button for resetting$/) do
    click_button('Enter GMO OnLine')
  end
  
  When(/^I fill the form with the following quantities:$/) do |table|
    table.raw.each do |row|
      product_name = row[0]
      quantity = row[1]
  
      case product_name
      when "3 Person Dome Tent"
        fill_in 'QTY_TENTS', with: quantity
      when "External Frame Backpack"
        fill_in 'QTY_BACKPACKS', with: quantity
      when "Glacier Sun Glasses"
        fill_in 'QTY_GLASSES', with: quantity
      when "Padded Socks"
        fill_in 'QTY_SOCKS', with: quantity
      when "Hiking Boots"
        fill_in 'QTY_BOOTS', with: quantity
      when "Back Country Shorts"
        fill_in 'QTY_SHORTS', with: quantity
      end
    end
  end
  
  When(/^I click on the "Reset Form" button for resetting$/) do
    click_button('Reset Form')
  end
  
  Then(/^all fields should be cleared$/) do
    expect(page.find('input[name="QTY_TENTS"]').value).to eq("0")
    expect(page.find('input[name="QTY_BACKPACKS"]').value).to eq("0")
    expect(page.find('input[name="QTY_GLASSES"]').value).to eq("0")
    expect(page.find('input[name="QTY_SOCKS"]').value).to eq("0")
    expect(page.find('input[name="QTY_BOOTS"]').value).to eq("0")
    expect(page.find('input[name="QTY_SHORTS"]').value).to eq("0")
  end
  