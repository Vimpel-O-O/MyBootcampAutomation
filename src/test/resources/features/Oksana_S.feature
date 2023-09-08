Feature: User story 2 and 7
  Scenario: Log in as administrator
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
     # land on login page

    