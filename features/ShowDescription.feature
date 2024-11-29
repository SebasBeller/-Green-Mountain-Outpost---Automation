Feature: 
  As an online shopper, I want to view the description of the site
  So I can understand its purpose and limitations.

Scenario: View the site description                                
    Given I am at the GMO online site for the description            
    When I click the "About the GMO Site" button for the description 
    Then I should see the description of the site:                   
      """
      This is a sample online commerce application. It is not real. Green Mountain Outpost is a fictitious company. Any resemblance to actual companies, either living or dead, is purely coincidental.
      """
