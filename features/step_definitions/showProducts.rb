When('I click on each product link and verify the page:') do |table|
  
  products = {}
  table.rows.each do |row|
    product_name = row[1]   
    item_name = row[0]       
    products[product_name] = item_name
  end


  product_links = all('table td a')
  
  product_links.each do |link|
    product_name = link.text.strip
    
  
    if products.key?(product_name)
      item_name = products[product_name]  

      
      link.click
      expect(page).to have_content(product_name)     
      expect(page).to have_content(item_name)        
      
      
      if has_button?('Back to Catalog')
        click_button 'Back to Catalog'
      else
        page.go_back
      end
    else
      raise "Producto no encontrado en el mapa: #{product_name}"
    end
  end
end

Then('I should see the OnLine Catalog again after each product') do
  expect(page).to have_content('OnLine Catalog')
end
