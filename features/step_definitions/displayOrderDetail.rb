START_ROW_SUMMARY_TABLE = 2
COLUMNS_SUMMARY_TABLE = {
  "Product Total" => 3,
  "Sales Tax" => 2,
  "Shipping & Handling" => 2,
  "Gran Total" => 2,
}

Then(/^I should see the following order summary table:$/) do |table|
  expected_order_table = table.raw 
  start_row = START_ROW_SUMMARY_TABLE
  start_column = 5
  row_xpath = '/html/body/form/table/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[%i]'
  
  expected_order_table.each do |row|
    start_column = COLUMNS_SUMMARY_TABLE[row[0]] || 5
    price = row[1]
    expect(find(:xpath, row_xpath % [start_row, start_column]).text).to eq(price)
    start_row += 1
  end
end