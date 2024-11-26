Given(/^I am on the GMO Home Page$/) do
    page.driver.browser.manage.window.maximize
    visit('/')
end

And(/^I click on the "([^"]*)" button$/)  do |buttonName|
    click_button(buttonName) 
end

When(/^I write "([^"]*)" in the order quantity box of the product "([^"]*)"$/) do |orderQuantity, product|
    case product
        when "3 Person Dome Tent"
          fill_in 'QTY_TENTS', with: orderQuantity
        when "External Frame Backpack"
          fill_in 'QTY_BACKPACKS', with: orderQuantity
        when "Glacier Sun Glasses"
          fill_in 'QTY_GLASSES', with: orderQuantity
        when "Padded Socks"
          fill_in 'QTY_SOCKS', with: orderQuantity
        when "Hiking Boots"
          fill_in 'QTY_BOOTS', with: orderQuantity
        when "Back Country Shorts"
          fill_in 'QTY_SHORTS', with: orderQuantity
    end
  end
  

Then(/^I should see a Product Total price of (\d+\.\d+) in the place order summary$/) do |expectedTotalPrice|
    totalPriceText=find(:xpath, '/html/body/form/table/tbody/tr[1]/td/div/center/table/tbody/tr[2]/td[5]').text
    totalPriceNumber = totalPriceText.gsub('$', '').strip
    expect(expectedTotalPrice).to eq(totalPriceNumber)
  end