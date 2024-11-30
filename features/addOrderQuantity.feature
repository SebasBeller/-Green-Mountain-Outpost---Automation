Feature: Place an Order
  As an outdoor enthusiast shopper
  I want to place an order so that I can complete my purchase.

  Scenario: Fill fields and place an order
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button
    When I enter the order quantities as show below:
      | Product Name              | Quantity |
      | 3 Person Dome Tent        | 8        |
      | External Frame Backpack   | 9        |
      | Glacier Sun Glasses       | 10       |
      | Padded Socks              | 19       |
      | Hiking Boots              | 1        |
      | Back Country Shorts       | 20       |
    And I click on button named "Place An Order"
    Then I should see the following quantity:
      | Qty | Product Description       |
      | 8   | 3 Person Dome Tent        |
      | 9   | External Frame Backpack   |
      | 10  | Glacier Sun Glasses       |
      | 19  | Padded Socks              |
      | 1   | Hiking Boots              |
      | 20  | Back Country Shorts       |