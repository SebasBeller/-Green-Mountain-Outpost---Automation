When(/^I click on each product link:$/) do |table|
  counter= 1
  table = table.raw 
  table.each do |row|
    product_name, product_id = row
    if PRODUCTS_CATALOG_FIELDS.key?(product_name)
        click_link(product_name)
        css_selector='a[name=%s]'% PRODUCTS_CATALOG_FIELDS[product_name]
        product_field=find(:css,css_selector)
        item_number=find(:xpath,"/html/body/div[%i]/table/tbody/tr[3]/td[2]" %[counter])
        expect(product_name).to eq(product_field.text)     
        expect(product_id).to eq(item_number.text)        
        if has_button?('Back to Catalog')
          click_button 'Back to Catalog'
        else
          page.go_back
        end
        counter+=1
    end
  end
end
  
  Then('I should see the OnLine Catalog again after each product') do
    expect(page).to have_content('OnLine Catalog')
  end