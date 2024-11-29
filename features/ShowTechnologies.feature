Feature:  
  As an online shopper, I want to access information about the site so that I have confidence when using the site.

Scenario: Look for the information of the site
    Given I am at the GMO online site for technologies
    When I click the "About the GMO Site" button for technologies
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
