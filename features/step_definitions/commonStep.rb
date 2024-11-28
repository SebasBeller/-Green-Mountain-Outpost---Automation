Given(/^I am on the GMO Home Page$/) do
    page.driver.browser.manage.window.maximize
    visit('/')
end
When(/^I enter the order quantities as show below:$/) do |table|
    @orderTable = table.raw 
    expectedTotalProductPrice=0
    @orderTable.each do |row|
      productName=row[0]
      quantity=row[1]
      case productName
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


And(/^I click on the "([^"]*)" button$/)  do |buttonName|
    click_button(buttonName) 
end
