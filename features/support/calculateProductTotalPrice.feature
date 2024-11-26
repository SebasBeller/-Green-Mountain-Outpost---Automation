Feature: Calculate Products Total Price 
    As a Outdoor enthusiast shopper
    I want the system to calculate the total price for each product based on the quantity I select
    so I can see he total cost for each product on my order summary.

    @totalPriceOneProduct
    Scenario: Calculate total price for a select product
        Given I am on the Home Page of GMO
        And I click on the button "Enter GMO OnLine"
        And I enter the quantity for a product as show below
            | product                | input  |   
            | 3 Person Dome Tent     | 1      | 
        And I click on the button "Place An order"
        Then I see a Product Total price of 299.99 in the place order summary
