Given(/^I am on the GMO Home Page$/) do
  visit('/')
end

When(/^I enter the order quantities as show below:$/) do |table|
<<<<<<< HEAD
  order_table = table.raw 
  expected_total_product_price = 0
  order_table.each do |row|
=======
  @order_table = table.raw 
  expected_total_product_price = 0
  @order_table.each do |row|
>>>>>>> dcb67328052898582b7ee234a4e5f7310409dc6f
    product_name = row[0]
    quantity = row[1]
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
  end
end

And(/^I click on the "([^"]*)" button$/) do |button_name|
  click_button(button_name) 
end

And(/^I check the "([^"]*)" checkbox$/) do |checkbox_name|
  check(checkbox_name) 
end


And(/^I am at "([^"]*)" Page$/) do |expected_title_page|
  expect(page).to have_content(expected_title_page)
end
