Feature: Calculate product totals
    As a Outdoor enthusiast shopper
    I want the system to calculate the total price for each product based on the quantity I select
    so I can see the totals for each product on my order summary.

    Scenario: Calculate the total price for product quantities
           Given I am on the GMO Home Page
           And I click on the "Enter GMO OnLine" button
           When I enter the order quantities as show below:
                | 3 Person Dome Tent     | 10 |           
                | External Frame Backpack| 11 |           
                | Glacier Sun Glasses    | 5  |            
                | Padded Socks           | 7  |            
                | Hiking Boots           | 9  |            
                | Back Country Shorts    | 2  | 
           And I click on the "Place An Order" button
           Then I should see the following total prices:
                | 3 Person Dome Tent     | $ 2999.90            |
                | External Frame Backpack| $ 1979.45            |
                | Glacier Sun Glasses    | $ 339.95             |
                | Padded Socks           | $ 139.93             |
                | Hiking Boots           | $ 989.10             |
                | Back Country Shorts    | $ 49.90              |
            
    Scenario: Calculate the product total price for multiple Products
        Given I am on the GMO Home Page
        And I click on the "Enter GMO OnLine" button
        When I enter the order quantities as show below:
           | 3 Person Dome Tent     | 1 |
           | External Frame Backpack| 2 |
           | Glacier Sun Glasses    | 3 | 
           | Padded Socks           | 4 | 
           | Hiking Boots           | 5 | 
           | Back Country Shorts    | 6 |
        And I click on the "Place An Order" button
        Then I should see a product total price of $ 1643.02 
    
    Scenario: Calculate the sales taxe for multiple Products
        Given I am on the GMO Home Page
        And I click on the "Enter GMO OnLine" button
        When I enter the order quantities as show below:
           | 3 Person Dome Tent     | 5 |
           | External Frame Backpack| 5 |
           | Glacier Sun Glasses    | 5 | 
           | Padded Socks           | 5 | 
           | Hiking Boots           | 5 | 
           | Back Country Shorts    | 5 |
        And I click on the "Place An Order" button
        Then I should see a sales taxe of $ 175.69
    
    Scenario: Calculate the Shipping & Handling for multiple Products
        Given I am on the GMO Home Page
        And I click on the "Enter GMO OnLine" button
        When I enter the order quantities as show below:
           | 3 Person Dome Tent     | 5 |
           | External Frame Backpack| 5 |
           | Glacier Sun Glasses    | 5 | 
           | Padded Socks           | 5 | 
           | Hiking Boots           | 5 | 
           | Back Country Shorts    | 5 |
        And I click on the "Place An Order" button
        Then I should see a Shipping and Handling of $ 5.00

    Scenario: Calculate the Grand Total for multiple Products
        Given I am on the GMO Home Page
        And I click on the "Enter GMO OnLine" button
        When I enter the order quantities as show below:
           | 3 Person Dome Tent     | 5 |
           | External Frame Backpack| 5 |
           | Glacier Sun Glasses    | 5 | 
           | Padded Socks           | 5 | 
           | Hiking Boots           | 5 | 
           | Back Country Shorts    | 5 |
        And I click on the "Place An Order" button
        Then I should see a Gran Total of $ 3694.54








