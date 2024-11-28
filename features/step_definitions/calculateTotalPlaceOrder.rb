START_ROW_TABLE = 2



Then(/^I should see the following total prices:$/) do |table|
    expectedOrderTable = table.raw 
    start=START_ROW_TABLE
    rowXPath = '/html/body/form/table/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[5]'
    expectedOrderTable.each do |row|
      totalPriceOfProduct=row[1]
      expect(find(:xpath, rowXPath % [start]).text).to eq(totalPriceOfProduct)
      start+=1
    end
end


Then(/^I should see a (.+) of (\$ \d+\.\d+)$/) do |typeSummaryPrice,summaryPrice|
  row=@orderTable.size()+START_ROW_TABLE
  column=2
  case typeSummaryPrice
    when "product total price" 
      column=3
    when "sales taxe"
      row+=1
    when "Shipping and Handling"
      row+=2
    when "Gran Total"
      row+=3
  end
  rowXPath = '/html/body/form/table/tbody/tr[1]/td/div/center/table/tbody/tr[%i]/td[%i]'
  expect(find(:xpath, rowXPath % [row,column]).text).to eq(summaryPrice)
end
