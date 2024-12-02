Feature: Receipt Information
  As an online shopper
  I want to fill in my billing information
  So I can verify that everything is correct before completing my purchase.

  Background:
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button
    When I enter the order quantity 10 for "3 Person Dome Tent"
    And I click on the "Place An Order" button
    And I click on the "Proceed With Order" button

  Scenario Outline: Review billing information with different card types
    Given I am at "Billing Information" Page
    When I enter the bill to information as shown below:
      | Name        | <Name>           |
      | Address     | <Address>        |
      | City        | <City>           |
      | State       | <State>          |
      | Zip         | <Zip>            |
      | Phone       | <Phone>          |
      | E-mail      | <E-mail>         |
      | Credit Card | <Credit Card>    |
      | Card Number | <Card Number>    |
      | Expiration  | <Expiration>     |
    And I check the "shipSameAsBill" checkbox
    And I click on the "Place The Order" button
    Then I verify the receipt contains:
      | Name     | <Name>    |
      | Phone    |<Phone>    |
      | Address  |<Address>      |
      
    And I click for return on the "Return To Home Page" button

    Examples:
    | Name   | Address    | City | State| Zip   | Phone        | E-mail           | Credit Card      | Card Number        | Expiration  |
    | Pepito | Cala cala  | Cbba | Cbba | 33126 | 123-123-1234 | pepito@gmail.com | American Express | 1234-123456-12345  | 12/24       |
    
