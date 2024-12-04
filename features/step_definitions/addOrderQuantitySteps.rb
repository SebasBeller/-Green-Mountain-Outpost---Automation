
When(/^I (?:enter|remove) the order quantities as (?:show|shown) below:$/) do |table|
    @form.fill_in_fields(table,ORDER_QUANTITIES_FIELDS)
end