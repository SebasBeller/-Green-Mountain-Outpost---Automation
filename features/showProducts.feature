Feature: Show Products
  As an online shopper,
  I want to view details for each product,
  so that I can explore multiple products.

  Scenario: Show the catalog
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button
    When I click on each product link:
      | Product Name              | Item Number | 
      | 3 Person Dome Tent        | 1000        |
      | External Frame Backpack   | 1001        |
      | Glacier Sun Glasses       | 1002        |
      | Padded Socks              | 1003        |
      | Hiking Boots              | 1004        |
      | Back Country Shorts       | 1005        |
    Then I should see the OnLine Catalog again after each product