

When(/^I enter the bill to information as shown below:$/) do |table|
    order_table = table.raw 
    order_table.each do |row|
        field_name = row[0]
        field_value = row[1]
        case field_name
            when "Name"
              fill_in 'billName', with: field_value
            when "Address"
              fill_in 'billAddress', with: field_value
            when "City"
              fill_in 'billCity', with: field_value
            when "State"
              fill_in 'billState', with: field_value
            when "Zip"
              fill_in 'billZipCode', with: field_value
            when "Phone"
              fill_in 'billPhone', with: field_value
            when "E-mail"
              fill_in 'billEmail', with: field_value
            when "Credit Card"
              select field_value, from: 'CardType'
            when "Card Number"
              fill_in 'CardNumber', with: field_value
            when "Expiration"
              fill_in 'CardDate', with: field_value
        end
    end
end

Then('The billing information should be copied to the shipping fields as shown below:') do |table|
    shipping_form = table.raw 
    start_row = 2
    start_column = 2
    row_xpath = '/html/body/form/table/tbody/tr[2]/td[3]/table/tbody/tr[%i]/td[%i]/input'
    shipping_form.each do |row|
      field_value = row[1]
      expect(find(:xpath, row_xpath % [start_row, start_column]).value).to eq(field_value)
      start_row += 1
    end
end

Then (/^I should see the following message "([^"]*)"$/) do |message|
  expect(page.driver.browser.switch_to.alert.text).to eq(message)
  sleep 2
end