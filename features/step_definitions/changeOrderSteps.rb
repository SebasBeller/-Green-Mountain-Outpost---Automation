When(/^I change the order quantities as shown below:$/) do |table|
  @form.fill_in_fields(table,ORDER_QUANTITIES_FIELDS)
end

Then(/^I should see the (?:following|updated) quantities:$/) do |table|
  start_row = 2
  path_table = '/html/body/form/table/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[%i]'
  @form.compare_fields_with_table(
    table,
    start_row,
    COLUMNS_SUMMARY_ORDER_QUANTITIES_TABLE,
    path_table
  )
end

And(/^I go back to the previous page$/) do
  page.go_back
end

