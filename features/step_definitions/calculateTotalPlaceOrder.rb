START_ROW_SUMMARY_TABLE = 2
COLUMNS_SUMMARY_TABLE = {
  "Product Total" => 3,
  "Sales Tax" => 2,
  "Shipping & Handling" => 2,
  "Gran Total" => 2,
}


Given(/^I am on the GMO Home Page$/) do
    page.driver.browser.manage.window.maximize
    visit('/')
end

And(/^I click on the "([^"]*)" button$/)  do |buttonName|
    click_button(buttonName) 
end

When(/^I enter the following order quantities:$/) do |table|
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
  

Then(/^I should see the following order summary table:$/) do |table|
    expectedOrderTable = table.raw 
    startRow=START_ROW_SUMMARY_TABLE
    startColum=  5
    rowXPath = '/html/body/form/table/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[%i]'
    expectedOrderTable.each do |row|
      startColum= COLUMNS_SUMMARY_TABLE[row[0]]  || 5
      price=row[1]
      expect(find(:xpath, rowXPath % [startRow,startColum]).text).to eq(price)
      startRow+=1
    end
end

