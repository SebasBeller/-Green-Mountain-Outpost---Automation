Feature: Place an Order Quantity
  As an outdoor enthusiast shopper
  I want to place an order so that I can complete my purchase.
  
  Background:
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button

  @maximize
  Scenario: Fill fields and place an order with valid quantities
       When I enter the order quantities as show below:
      | Product Name              | Quantity |
      | 3 Person Dome Tent        | 8        |
      | External Frame Backpack   | 9        |
      | Glacier Sun Glasses       | 10       |
     
    And I click on button named "Place An Order"
    Then I should see the following quantity:
      | Qty | Product Description       |
      | 8   | 3 Person Dome Tent        |
      | 9   | External Frame Backpack   |
      | 10  | Glacier Sun Glasses       |
     

@maximize
Scenario: Leave the fields empty and show the message
    
    When I remove the order quantities as show below:
      | Product Name              | Quantity |
      | 3 Person Dome Tent        |          |
      | External Frame Backpack   |          |
      | Glacier Sun Glasses       |          |
      | Padded Socks              |          |
    And I click on button named "Place An Order"
    Then I should see an error message "Please enter only digits in this field"

@maximize
Scenario: Quantity exceeds stock
   
    When I enter the order quantities and item numbers as shown below:
      | Item Number  | Product Name          | Quantity  |
      |<item_number> | <product_name>        |<quantity> |
     
    And I click on "3 Person Dome Tent" to view its details
    Then on the Products page:
    And the "Item Number" matches the value from the table
    When I compare the entered quantity with the stock displayed on the page
    Then I should see the message: "Quantity exceeds available stock"
Examples:
      | item_number  | product_name              | quantity |
      | 1000         | 3 Person Dome Tent        |   1000   |

@maximize
Scenario: Verify a message appears when entering numbers in literal
      When I enter the order quantities as shown below:
      | Product Name          | Quantity  |
      | 3 Person Dome Tent    | Cuatro    |
    And I click on the "Place An Order" button
    Then I should see a message indicating an invalid quantity
