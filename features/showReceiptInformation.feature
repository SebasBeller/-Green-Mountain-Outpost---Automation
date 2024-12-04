Feature:Show receipt Information
  As an online shopper,
  I want to review my billing information,
  so that I can verify that everything is correct before completing my purchase.

  Background:
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button
    And I enter the order quantities as show below:
        | Product Name                | Quantity |
        | 3 Person Dome Tent          | 10       |
    And I click on the "Place An Order" button
    And I click on the "Proceed With Order" button

  Scenario Outline: Show billing information on the receipt
    Given I am at "Billing Information" Page
    When I enter the bill to information as shown below:
      | Name        | <Name>           |
      | Address     | <Address>        |
      | City        | <City>           |
      | State       | <State>          |
      | Zip         | <Zip>            |
      | Phone       | <Phone>          |
      | E-mail      | <E-mail>         |
      | Credit Card | American Express |
      | Card Number | <Card Number>    |
      | Expiration  | <Expiration>     |
    And I check the "shipSameAsBill" checkbox
    And I click on the "Place The Order" button
    Then I should see the following billing information on the receipt:
      | Name            | <Name>            |
      | Phone           |<Phone>            |
      | Postal Address  |<Postal Address>   | 
    And I click for return on the "Return to Home Page" button
    Examples:
    | Name   | Address    | City | State| Zip   | Phone        | E-mail           | Card Number        | Expiration  | Postal Address              |
    | Pepito | Cala cala  | Cbba | Cbba | 33126 | 123-123-1234 | pepito@gmail.com | 1234-123456-12345  | 12/24       | Cala Cala, Cbba, Cbba 33126 |
    | Maria  | 3er anillo | Scz  | Scz  | 33127 | 124-121-1234 | maria@gmail.com  | 1234-123456-12245  | 11/24       | 3er Anillo, Scz, Scz 33127  |

    
    Scenario Outline: Show shipping information on the receipt
    Given I am at "Billing Information" Page
    When I enter the bill to information as shown below:
      | Name        | <Name>           |
      | Address     | <Address>        |
      | City        | <City>           |
      | State       | <State>          |
      | Zip         | <Zip>            |
      | Phone       | <Phone>          |
      | E-mail      | <E-mail>         |
      | Credit Card | American Express |
      | Card Number | <Card Number>    |
      | Expiration  | <Expiration>     |
    And I check the "shipSameAsBill" checkbox
    And I click on the "Place The Order" button
    Then I should see the following shipping information on the receipt:
      | Name            | <Name>            |
      | Phone           |<Phone>            |
      | Postal Address  |<Postal Address>   | 
    And I click for return on the "Return to Home Page" button
    Examples:
    | Name   | Address    | City | State| Zip   | Phone        | E-mail           | Card Number        | Expiration  | Postal Address              |
    | Pepito | Cala cala  | Cbba | Cbba | 33126 | 123-123-1234 | pepito@gmail.com | 1234-123456-12345  | 12/24       | Cala Cala, Cbba, Cbba 33126 |
    | Maria  | 3er anillo | Scz  | Scz  | 33127 | 124-121-1234 | maria@gmail.com  | 1234-123456-12245  | 11/24       | 3er Anillo, Scz, Scz 33127  |

    

