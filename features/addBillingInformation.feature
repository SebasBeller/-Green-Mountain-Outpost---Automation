Feature: Add billing information
    As an online shopper 
    I want to enter my billing information  
    So I could complete my purchase.

  Scenario: Autocomplete the "Ship To" form using "Bill To" information
      Given I am on the GMO Home Page
      And I click on the "Enter GMO OnLine" button
      And I enter the order quantities as show below:
        | External Frame Backpack | 2 |
      And I click on the "Place An Order" button
      And I click on the "Proceed With Order" button
      And I am at "Billing Information" Page
      When I enter the bill to information as shown below:
        | Name        | <Name>       |
        | Address     | <Address>    |
        | City        | <City>       |
        | State       | <State>      |
        | Zip         | <Zip>        |
        | Phone       | <Phone>      |
        | E-mail      | <E-mail>     |
        | Credit Card | <Credit Card>|
        | Card Number | <Card Number>|
        | Expiration  | <Expiration> |
      And I check the "shipSameAsBill" checkbox
      Then The billing information should be copied to the shipping fields as shown below:
        | Name    | <Name>    |
        | Address | <Address> |
        | City    | <City>    |
        | State   | <State>   |
        | Zip     | <Zip>     |
        | Phone   | <Phone>   |
      Examples:
        | Name         | Address      | City       | State       | Zip   | Phone         | E-mail            | Credit Card       | Card Number        | Expiration |
        | Pepito Perez | Cala cala    | Cochabamba | Cochabamba  | 33126 | 123-123-1234  | pepito@gmail.com  | American Express  | 1234-123456-12345  | 12/24      |
        |Maria Gonzalez| Av.Santa Cruz| Santa Cruz | Santa Cruz  | 65432 | 456-789-0123  | maria@gmail.com   | American Express  | 1234-113456-12456  | 01/25      |
        | Ana Perez    | Zona Sur     | Cochabamba | Cochabamba  | 98765 | 321-654-9870  | ana@gmail.com     | American Express  | 2234-123456-12556  | 12/25      |








