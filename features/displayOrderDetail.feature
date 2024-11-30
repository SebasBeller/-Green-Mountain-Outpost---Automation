Feature: Display Detailed Order Summary
  As an outdoor enthusiast shopper,
  I want the system to present a detailed summary of my purchase,
  including the total price for each product, sales taxes, shipping fees, and the overall grand total,
  so that I can review all associated costs before finalizing my order.

    @maximize
    Scenario: Display Total Prices Based on Product Quantities
      Given I am on the GMO Home Page
      And I click on the "Enter GMO OnLine" button
      And I am at "OnLine Catalog" Page
      When I enter the order quantities as show below:
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
  

    @maximize
    Scenario Outline: Display Total Prices with a Single Product
        Given I am on the GMO Home Page
        And I click on the "Enter GMO OnLine" button
        And I am at "OnLine Catalog" Page
        When I enter the order quantity 1 for "<product_name>"
        And I click on the "Place An Order" button
        Then I should see the following order summary table:
          | <product_name>           | <product_price>       |
          | Product Total            | <product_total>       |
          | Sales Tax                | <sales_tax>           |
          | Shipping & Handling      | <shipping_handling>   |
          | Gran Total               | <grand_total>         |
      Examples:
          | product_name            | product_price | product_total | sales_tax | shipping_handling | grand_total |
          | 3 Person Dome Tent      | $ 299.99      | $ 299.99      | $ 15.00   | $ 5.00            | $ 319.99    |
          | External Frame Backpack | $ 179.95      | $ 179.95      | $ 9.00    | $ 5.00            | $ 193.95    |
          | Glacier Sun Glasses     | $ 67.99       | $ 67.99       | $ 3.40    | $ 5.00            | $ 76.39     |
          | Padded Socks            | $ 19.99       | $ 19.99       | $ 1.00    | $ 5.00            | $ 25.99     |
          | Hiking Boots            | $ 109.90      | $ 109.90      | $ 5.50    | $ 5.00            | $ 120.40    |
          | Back Country Shorts     | $ 24.95       | $ 24.95       | $ 1.25    | $ 5.00            | $ 31.20     |

