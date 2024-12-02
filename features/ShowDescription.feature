Feature: Show Site Description
  As an online shopper, 
  I want to view the description of the site
  So I can understand its purpose and limitations.

Scenario: Display the site description                                
    Given I am on the GMO Home Page           
    When I click on the "About The GMO Site" button
    Then I should see the description of the site:                   
      """
      This is a sample online commerce application. It is not real. Green Mountain Outpost is a fictitious company. Any resemblance to actual companies, either living or dead, is purely coincidental.
      """
