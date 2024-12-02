Feature: Change Order
  As an outdoor enthusiast shopper
  I want to place an order so I can change my purchase.


  Scenario: Fill fields and place an order
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button
    When I enter the order quantities as show below:
      | Product Name              | Quantity |
      | 3 Person Dome Tent        | 6        |
    And I click on button named "Place An Order"
    Then I should see the following quantity:
      | Qty | Product Description       |
      | 6   | 3 Person Dome Tent        |
     And I go back to the previous page
     When I change the order quantities as shown below:
      | Product Name              | New Quantity |
      | 3 Person Dome Tent        | 10           |
    And I click on button named "Place An Order"
    Then I should see the updated quantities:
      | Qty | Product Description       |
      | 10  | 3 Person Dome Tent        |