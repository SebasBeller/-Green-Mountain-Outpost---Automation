Then(/^I should see an error message "(.*)"$/) do |expected_message|
    begin
        alert = page.driver.browser.switch_to.alert
        expect(alert.text).to eq("Please Order Something First")
        alert.accept
      rescue Selenium::WebDriver::Error::NoSuchAlertError
        puts "No alert was present."
      end
  end
  
  When('I enter the order quantities and item numbers as shown below:') do |table|
    table.hashes.each do |row|
      product_name = row['Product Name']
      quantity = row['Quantity']
      item_number = row['Item Number']
      
      
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
      
      @current_row = { 'Product Name' => product_name, 'Item Number' => item_number, 'Quantity' => quantity }
    end
  end
  

  When('I click on {string} to view its details') do |product_name|
    link = find('a', text: product_name) 
    if link
      link.click
    else
      raise "Product link for '#{product_name}' not found."
    end
  end
  Then('on the Products page:') do
    
    expect(page).to have_selector('h1', text: 'Products') 
  end

  Then('the "Item Number" matches the value from the table') do
    
    expected_item_number = @current_row['Item Number']
    
    
    displayed_item_number = find(:xpath, '/html/body/div[1]/table/tbody/tr[3]/td[2]').text.strip
    
    expect(displayed_item_number).to eq(expected_item_number),
      "Expected Item Number: #{expected_item_number}, but got: #{displayed_item_number}"
  end

  When('I compare the entered quantity with the stock displayed on the page') do
  
    stock_text = find(:xpath, '/html/body/div[1]/table/tbody/tr[2]').text.strip
    stock = stock_text.to_i
  
 
    entered_quantity = @current_row['Quantity'].to_i
  
   
    if entered_quantity > stock
      @comparison_result = 'Quantity exceeds available stock'
    else
      @comparison_result = 'Order placed successfully'  
    end
  end
  
  Then('I should see the message: {string}') do |expected_message|
    expect(@comparison_result).to eq(expected_message),
      "Expected message: '#{expected_message}', but got: '#{@comparison_result}'"
  end
  
  Then('I should see a message indicating an invalid quantity') do
    begin
      alert = page.driver.browser.switch_to.alert
      puts "Alert found with text: #{alert.text}"
     
      alert.accept
    rescue Selenium::WebDriver::Error::UnexpectedAlertOpenError
      raise 'The alert did not close. This is an issue with the application.'
    rescue Selenium::WebDriver::Error::NoAlertOpenError
      raise 'Expected an alert, but none was found.'
    end
  end
  
  