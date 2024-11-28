Feature: Display Detailed Order Summary
  As an outdoor enthusiast shopper,
  I want the system to calculate and present a detailed summary of my purchase,
  including the total price for each product, sales taxes, shipping fees, and the overall grand total,
  so that I can review all associated costs before finalizing my order.

    Scenario: Calculate Total Price Based on Product Quantities
      Given I am on the GMO Home Page
      And I click on the "Enter GMO OnLine" button
      When I enter the following order quantities:
        | 3 Person Dome Tent          | 10       |
        | External Frame Backpack     | 11       |
        | Glacier Sun Glasses         | 5        |
        | Padded Socks                | 7        |
        | Hiking Boots                | 9        |
        | Back Country Shorts         | 2        |
      And I click on the "Place An Order" button
      Then I should see the following order summary table:
        | 3 Person Dome Tent          | $ 2999.90         |
        | External Frame Backpack     | $ 1979.45         |
        | Glacier Sun Glasses         | $ 339.95          |
        | Padded Socks                | $ 139.93          |
        | Hiking Boots                | $ 989.10          |
        | Back Country Shorts         | $ 49.90           |
        | Product Total               | $ 6498.23         |
        | Sales Tax                   | $ 324.91          |
        | Shipping & Handling         | $ 5.00            |
        | Gran Total                  | $ 6828.14         |
    
    Scenario: Calculate Total Price with a Product Quantity of 0
        Given I am on the GMO Home Page
        And I click on the "Enter GMO OnLine" button
        When I enter the following order quantities:
          | 3 Person Dome Tent          | 10       |
          | External Frame Backpack     | 11       |
          | Glacier Sun Glasses         | 5        |
          | Padded Socks                | 7        |
          | Hiking Boots                | 9        |
        And I click on the "Place An Order" button
        Then I should see the following order summary table:
          | 3 Person Dome Tent          | $ 2999.90         |
          | External Frame Backpack     | $ 1979.45         |
          | Glacier Sun Glasses         | $ 339.95          |
          | Padded Socks                | $ 139.93          |
          | Hiking Boots                | $ 989.10          |
          | Product Total               | $ 6448.33         | 
          | Sales Tax                   | $ 322.42          |
          | Shipping & Handling         | $ 5.00            |
          | Gran Total                  | $ 6775.75         |

    Scenario: Calculate Total Price with a Single Product 
        Given I am on the GMO Home Page
        And I click on the "Enter GMO OnLine" button
        When I enter the following order quantities:
          | External Frame Backpack     | 1        |
        And I click on the "Place An Order" button
        Then I should see the following order summary table:
          | External Frame Backpack     | $ 179.95          |
          | Product Total               | $ 179.95          |
          | Sales Tax                   | $ 9.00            |
          | Shipping & Handling         | $ 5.00            |
          | Gran Total                  | $ 193.95          |



