Feature: Show Products
  As an outdoor enthusiast shopper
  I want to click on each product link and go back to reset the form so that I can review multiple products.

  Scenario: Click on each product link, verify the page, and go back
    Given I am on the GMO Home Page
    And I click on the "Enter GMO OnLine" button
    When I click on each product link and go back
    Then I should see the OnLine Catalog again after each product