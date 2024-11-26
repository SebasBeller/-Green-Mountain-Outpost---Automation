START_ROW_TABLE = 2

Given(/^I am on the GMO Home Page$/) do
    page.driver.browser.manage.window.maximize
    visit('/')
end

And(/^I click on the "([^"]*)" button$/)  do |buttonName|
    click_button(buttonName) 
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
  

Then(/^I should see the following total prices:$/) do |table|
    expectedOrderTable = table.raw 
    start=START_ROW_TABLE
    rowXPath = '/html/body/form/table/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[5]'
    expectedOrderTable.each do |row|
      totalPriceOfProduct=row[1]
      expect(find(:xpath, rowXPath % [start]).text).to eq(totalPriceOfProduct)
      start+=1
    end
end


Then(/^I should see a (.+) of (\$ \d+\.\d+)$/) do |typeSummaryPrice,summaryPrice|
  row=@orderTable.size()+START_ROW_TABLE
  column=2
  case typeSummaryPrice
    when "product total price" 
      column=3
    when "sales taxe"
      row+=1
    when "Shipping and Handling"
      row+=2
    when "Gran Total"
      row+=3
  end
  rowXPath = '/html/body/form/table/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[%i]'
  expect(find(:xpath, rowXPath % [row,column]).text).to eq(summaryPrice)
end
