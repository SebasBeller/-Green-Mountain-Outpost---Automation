Feature: Fill out ShipTo Information
    As an online shopper,
    I want to fill in the ShipTo information,
    So that I can complete my purchase.

@maximize
Scenario: Fill out ShipTo Information Automatically using "Bill To" information
  Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button
    When I enter the order quantity 10 for "3 Person Dome Tent"
    And I click on the "Place An Order" button
    And I click on the "Proceed With Order" button
    And I am at "Billing Information" Page
    When I enter the bill to information as shown below:
      | Name        | Pepito Perez     |
      | Address     | Cala cala        |
      | City        | Cochabamba       |
      | State       | Cochabamba       |
      | Zip         | 33126            |
      | Phone       | 123-123-1234     |
      | E-mail      | pepito@gmail.com |
      | Credit Card | American Express |
      | Card Number | 1234-123456-12345|
      | Expiration  | 12/24            |
    And I check the "shipSameAsBill" checkbox
    Then The billing information should be copied to the shipping fields as shown below:
      | Name    | Pepito Perez |
      | Address | Cala cala    |
      | City    | Cochabamba   |
      | State   | Cochabamba   |
      | Zip     | 33126        |
      | Phone   | 123-123-1234 |










