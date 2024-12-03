Then(/^I should see the following order summary table:$/) do |table|
  start_row=2
  path_table='/html/body/form/table/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[%i]'
  @form.compare_fields_with_table(
    table,
    start_row,
    COLUMNS_SUMMARY_ORDER_TABLE,
    path_table
    )
end

