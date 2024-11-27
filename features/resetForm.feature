Feature: Reset form fields
  As an outdoor enthusiast shopper
  I want to reset the form so that all fields are cleared
  so I can start a new order.

  Scenario: Fill fields and reset form
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button for resetting
    When I fill the form with the following quantities:
      | Product Name              | Quantity |
      | 3 Person Dome Tent        | 6        |
      | External Frame Backpack   | 2        |
      | Glacier Sun Glasses       | 8        |
      | Padded Socks              | 9        |
      | Hiking Boots              | 3        |
      | Back Country Shorts       | 2        |
    And I click on the "Reset Form" button for resetting
    Then all fields should be cleared
