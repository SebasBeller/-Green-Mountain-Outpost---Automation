

Then(/^I should see the following billing information on the receipt:$/) do |table|
    start_row=1
    path_table="/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[%i]"
    @form.compare_fields_with_table(
      table,
      start_row,
      RECEIPT_BILLING_COLUMNS,
      path_table
    )
  end

  Then(/^I should see the following shipping information on the receipt:$/) do |table|
    start_row=1
    path_table="/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[%i]"
    @form.compare_fields_with_table(
      table,
      start_row,
      RECEIPT_SHIPPING_COLUMNS,
      path_table
    )
  end
  

  
  