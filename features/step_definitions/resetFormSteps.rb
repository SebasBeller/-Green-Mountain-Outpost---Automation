  Then(/^all fields should be cleared$/) do
    ids_order_quantities_fields = ORDER_QUANTITIES_FIELDS.values.map { |item| item["id"] }
    ids_order_quantities_fields.each do |id|
      expect(page.find('input[name="%s"]'%[id]).value).to eq("0")
    end
  end