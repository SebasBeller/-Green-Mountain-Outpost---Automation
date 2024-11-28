Feature: Add billing information
    As an online shopper 
    I want to enter my billing information  
    So I could complete my purchase.

    Scenario: Fill the billing form fields with the same ship to as bill 
        Given I am on the GMO Home Page
        And I click on the "Enter GMO OnLine" button
        And I enter the order quantities as show below:
          | External Frame Backpack     | 2        |
        And I click on the "Place An Order" button
        And I click on the "Proceed With Order" button
        And I am at "Billing Information" Page
        When I enter the bill to information as show below:
        | Name         | Pepito Perez          |
        | Address      | Cala cala             | 
        | City         | Cochabamba            |
        | State        | Cochabamba            |
        | Zip          | 33126                 |
        | Phone        | 123-123-1234          |
        | E-mail       | pepito@gmail.com      |
        | Credit Card  | American Express      |
        | Card Number  | 1234-123456-12345     |
        | Expiration   | 12/24                 |


