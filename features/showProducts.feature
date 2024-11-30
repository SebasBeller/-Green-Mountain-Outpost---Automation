Feature: Show Products
  As an outdoor enthusiast shopper
  I want to click on each product link and verify the product page
  So that I can review multiple products and return to the catalog
@maximize
  Scenario: Click on each product link, verify the page, and go back
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button
    When I click on each product link and verify the page:
      | Item Name | Product Name              | 
      | 1000      | 3 Person Dome Tent        |
      | 1001      | External Frame Backpack   |
      | 1002      | Glacier Sun Glasses       |
      | 1003      | Padded Socks              |
      | 1004      | Hiking Boots              |
      | 1005      | Back Country Shorts       |
    Then I should see the OnLine Catalog again after each product
