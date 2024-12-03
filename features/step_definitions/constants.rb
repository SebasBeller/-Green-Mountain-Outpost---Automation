
PRODUCTS_CATALOG_FIELDS={
  "3 Person Dome Tent" => "tents",
  "External Frame Backpack" => "backpacks",
  "Glacier Sun Glasses" => "glasses",
  "Padded Socks" => "socks",
  "Hiking Boots" => "boots",
  "Back Country Shorts" => "shorts"
}


ORDER_QUANTITIES_FIELDS={
    "3 Person Dome Tent" => { "id" => "QTY_TENTS", "type" => "input" },
    "External Frame Backpack" => { "id" => "QTY_BACKPACKS", "type" => "input" },
    "Glacier Sun Glasses" => { "id" => "QTY_GLASSES", "type" => "input" },
    "Padded Socks" => { "id" => "QTY_SOCKS", "type" => "input" },
    "Hiking Boots" => { "id" => "QTY_BOOTS", "type" => "input" },
    "Back Country Shorts" => { "id" => "QTY_SHORTS", "type" => "input" }
}

COLUMNS_SUMMARY_ORDER_TABLE = {
  "3 Person Dome Tent" => 5,
  "External Frame Backpack" => 5,
  "Glacier Sun Glasses" =>5,
  "Padded Socks" => 5,
  "Hiking Boots" => 5,
  "Back Country Shorts" => 5,
  "Product Total" => 3,
  "Sales Tax" => 2,
  "Shipping & Handling" => 2,
  "Gran Total" => 2,
}

COLUMNS_SHIPPING={
"Name"=>2,
"Address"=>2 ,   
"City"=>2  ,
"State"=>2,     
"Zip"=>2 ,    
"Phone"=>2  
}

SHIPPING_FIELDS = {
  "Name" => { "id" => "shipName", "type" => "input" },
  "Address" => { "id" => "shipAddress", "type" => "input" },
  "City" => { "id" => "shipCity", "type" => "input" },
  "State" => { "id" => "shipState", "type" => "input" },
  "Zip" => { "id" => "shipZipCode", "type" => "input" },
  "Phone" => { "id" => "shipPhone", "type" => "input" },
}  

COLUMNS_SUMMARY_ORDER_QUANTITIES_TABLE = {
  "3 Person Dome Tent" => 1,
  "External Frame Backpack" => 1,
  "Glacier Sun Glasses" =>1,
  "Padded Socks" => 1,
  "Hiking Boots" => 1,
  "Back Country Shorts" => 1,
  "Product Total" => 1,
  "Sales Tax" => 1,
  "Shipping & Handling" => 1,
  "Gran Total" => 1,
}



BILLING_FIELDS = {
    "Name" => { "id" => "billName", "type" => "input" },
    "Address" => { "id" => "billAddress", "type" => "input" },
    "City" => { "id" => "billCity", "type" => "input" },
    "State" => { "id" => "billState", "type" => "input" },
    "Zip" => { "id" => "billZipCode", "type" => "input" },
    "Phone" => { "id" => "billPhone", "type" => "input" },
    "E-mail" => { "id" => "billEmail", "type" => "input" },
    "Credit Card" => { "id" => "CardType", "type" => "combo_box" },
    "Card Number" => { "id" => "CardNumber", "type" => "input" },
    "Expiration" => { "id" => "CardDate", "type" => "input" }
  }  



  RECEIPT_BILLING_COLUMNS={
    "Name" => 2,
    "Address" => 2,
    "Postal Adress" => 2,
  }

  RECEIPT_SHIPPING_COLUMNS={
    "Name" => 2,
    "Address" => 2,
    "Postal Adress" => 2,
  }


