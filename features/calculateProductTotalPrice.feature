Feature: Calculate Products Total Price 
    As a Outdoor enthusiast shopper
    I want the system to calculate the total price for each product based on the quantity I select
    so I can see the total price for each product on my order summary.

    Scenario Outline: Calculate the total price of just one product
        Given I am on the GMO Home Page
        And I click on the "Enter GMO OnLine" button
        When I write "<orderQuantity>" in the order quantity box of the product "<product>"
        And I click on the "Place An Order" button
        Then I should see a Product Total price of <expectedTotalPrice> in the place order summary
    Examples:
        | product                | orderQuantity | expectedTotalPrice |
        | 3 Person Dome Tent     | 1             | 299.99             |
        | External Frame Backpack| 1             | 179.95             |
        | Glacier Sun Glasses    | 1             | 67.99              |
        | Padded Socks           | 1             | 19.99              |
        | Hiking Boots           | 1             | 109.90             |
        | Back Country Shorts    | 1             | 24.95              |



