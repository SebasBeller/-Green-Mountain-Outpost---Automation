  
  
  Then(/^all fields should be cleared$/) do
    expect(page.find('input[name="QTY_TENTS"]').value).to eq("0")
    expect(page.find('input[name="QTY_BACKPACKS"]').value).to eq("0")
    expect(page.find('input[name="QTY_GLASSES"]').value).to eq("0")
    expect(page.find('input[name="QTY_SOCKS"]').value).to eq("0")
    expect(page.find('input[name="QTY_BOOTS"]').value).to eq("0")
    expect(page.find('input[name="QTY_SHORTS"]').value).to eq("0")
  end
  