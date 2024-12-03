Feature:Show technologies
  As an online shopper, 
  I want to access information about the site,
  so that I have confidence when using the site.

Scenario: Show technologies of the site
    Given I am on the GMO Home Page
    When I click on the "About The GMO Site" button
    Then I see the list of technologies used for the site
      | HTML 3.2                     |
      | HTML Browser Extensions      |
      | Animation                    |
      | JavaScript                   |
      | CGI                          |
      | Java                         |
      | ActiveX                      |
      | Client-side processes        |
      | Server-side processes        |