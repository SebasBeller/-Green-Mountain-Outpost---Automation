Then('I verify the receipt contains:') do |table|
    receipt_data = table.rows_hash
    
    expect(page).to have_content('OnLine Store Receipt')
  
    receipt_data.each do |field, value|
      case field
      when 'Name'
         name_element = page.find(:xpath, '/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[1]/td[5]/strong', wait: 5)
        expect(name_element.text.strip).to eq(value)
        
      when 'Phone'
      
        phone_element = page.find(:xpath, '/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[4]/td[5]/strong', wait: 5)
        expect(phone_element.text.strip).to eq(value)
      when 'Address'
        
        Address_element = page.find(:xpath, '/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[2]/td[2]', wait: 5)
        expect(Address_element.text.strip).to eq(value)
  
      else
  
        expect(page).to have_content(value)
      end
    end
  end
  And(/^I click for return on the "([^"]*)" button$/) do |button_name|
    find(:xpath, '/html/body/table[2]/tbody/tr[3]/td/form/p/input', visible: true).click
  end

  
  