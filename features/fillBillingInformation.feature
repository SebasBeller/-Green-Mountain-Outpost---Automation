Feature: Fill out billing information
    As an online shopper 
    I want to fill my billing information  
    So I could complete my purchase.

  @maximize
  Scenario Outline: Fill out billing information With Different Card types
    Given I am on the GMO Home Page
      And I click on the "Enter GMO OnLine" button
      When I enter the order quantity 10 for "3 Person Dome Tent"
      And I click on the "Place An Order" button
      And I click on the "Proceed With Order" button
      And I am at "Billing Information" Page
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
      Then I am at "OnLine Store Receipt" Page
  Examples:
        | Name   | Address    | City | State| Zip   | Phone        | E-mail           | Credit Card      | Card Number        | Expiration  |
        | Pepito | Cala cala  | Cbba | Cbba | 33126 | 123-123-1234 | pepito@gmail.com | American Express | 1234-123456-12345  | 12/24       |
        | Maria  | 3er anillo | Scz  | Scz  | 65432 | 456-789-0123 | maria@gmail.com  | Visa             | 1234-1234-1234-1234| 01/25       |
        | Ana    | Zona Sur   | Cbba | Cbba | 98765 | 321-654-9870 | ana@gmail.com    | MasterCard       | 1234-1234-1234-1234| 12/25      |

@maximize
Scenario:  Fill out billing information with a wrong zip code
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
      | Zip         | 0                |
      | Phone       | 123-123-1234     |
      | E-mail      | pepito@gmail.com |
      | Credit Card | American Express |
      | Card Number | 1234-123456-12345|
      | Expiration  | 12/24            |
      And I check the "shipSameAsBill" checkbox
      And I click on the "Place The Order" button
      Then I should see the following message "Please enter a valid zip code in this field."


  @maximize
  Scenario:  Fill out billing information with a wrong phone number
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
      | Phone       | 123              |
      | E-mail      | pepito@gmail.com |
      | Credit Card | American Express |
      | Card Number | 1234-123456-12345|
      | Expiration  | 12/24            |
      And I check the "shipSameAsBill" checkbox
      And I click on the "Place The Order" button
      Then I should see the following message "Please enter a valid phone number in this field."

  @maximize
  Scenario:  Fill out billing information with a wrong email
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
      | E-mail      | nose             |
      | Credit Card | American Express |
      | Card Number | 1234-123456-12345|
      | Expiration  | 12/24            |
      And I check the "shipSameAsBill" checkbox
      And I click on the "Place The Order" button
      Then I should see the following message "Please enter a valid email in this field."

  @maximize
  Scenario:  Fill out billing information with a wrong card number for Master Card
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
      | Credit Card | MasterCard       |
      | Card Number | 1234             |
      | Expiration  | 12/24            |
      And I check the "shipSameAsBill" checkbox
      And I click on the "Place The Order" button
      Then I should see the following message "Please enter a valid card number of the form '1234-1234-1234-1234' in this field."
  
  @maximize
  Scenario:  Fill out billing information with a wrong card number for Visa
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
      | Credit Card | Visa             |
      | Card Number | 1234             |
      | Expiration  | 12/24            |
      And I check the "shipSameAsBill" checkbox
      And I click on the "Place The Order" button
      Then I should see the following message "Please enter a valid card number of the form '1234-1234-1234-1234' in this field."

  @maximize
  Scenario:  Fill out billing information with a wrong card number for American Express
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
      | Card Number | 1234             |
      | Expiration  | 12/24            |
      And I check the "shipSameAsBill" checkbox
      And I click on the "Place The Order" button
      Then I should see the following message "Please enter a valid card number of the form '1234-123456-12345' in this field."

  @maximize
  Scenario:  Fill out billing information with a wrong Expiration Date Card
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
      | Expiration  | 12/2024          |
      And I check the "shipSameAsBill" checkbox
      And I click on the "Place The Order" button
      Then I should see the following message "Please enter a valid date of the form 'MM/YY' in this field."

  