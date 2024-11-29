When('I click on each product link and go back') do
    
    product_links = all(:xpath, "/html/body/form/table/tbody/tr[2]/td/div/center/table/tbody/tr/td[2]/a")
    product_links.each do |link|
    product_name = link.text
    link.click
    expect(page).to have_content(product_name)
        
    page.go_back
    end
  end
  Then('I should see the OnLine Catalog again after each product') do
   
   expect(page).to have_content('OnLine Catalog')
  end