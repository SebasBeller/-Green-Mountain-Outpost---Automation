Feature: Place an Order
  As an outdoor enthusiast shopper
  I want to place an order so that I can complete my purchase.
  
@maximize
  Scenario: Fill fields and place an order
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button
    When I enter the order quantities as show below:
      | Product Name              | Quantity |
      | 3 Person Dome Tent        | 6        |
      | External Frame Backpack   | 2        |
      | Glacier Sun Glasses       | 8        |
      | Padded Socks              | 9        |
      | Hiking Boots              | 3        |
      | Back Country Shorts       | 2        |
    And I click on button named "Place An Order"
    Then I should see the following quantity:
      | Qty | Product Description       |
      | 6   | 3 Person Dome Tent        |
      | 2   | External Frame Backpack   |
      | 8   | Glacier Sun Glasses       |
      | 9   | Padded Socks              |
      | 3   | Hiking Boots              |
      | 2   | Back Country Shorts       |
     And I go back to the previous page
     When I change the order quantities as shown below:
      | Product Name              | New Quantity |
      | 3 Person Dome Tent        | 10           |
      | External Frame Backpack   | 4            |
      | Glacier Sun Glasses       | 12           |
      | Padded Socks              | 15           |
      | Hiking Boots              | 5            |
      | Back Country Shorts       | 3            |
    And I click on button named "Place An Order"
    Then I should see the updated quantities:
      | Qty | Product Description       |
      | 10  | 3 Person Dome Tent        |
      | 4   | External Frame Backpack   |
      | 12  | Glacier Sun Glasses       |
      | 15  | Padded Socks              |
      | 5   | Hiking Boots              |
      | 3   | Back Country Shorts       |