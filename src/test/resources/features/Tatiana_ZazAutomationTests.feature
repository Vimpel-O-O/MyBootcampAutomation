#Author: Tatiana Zaznova
# Jira task MA-669

  @medicenter
  Feature: MedicalCenter Test Scenarios

    Scenario: Admin User able to create a specialist.
      Given I open url "https://medicenter-qa2.vercel.app/"
      Then I should see page title as "Medicenter"
      Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
      Then I click on element with xpath "//button[contains(text(),'Login')]"
      Then element with xpath "//a[contains(text(),'Back to home')]" should be present
      Then I type "taraborova@n2snow.com" into element with xpath "//input[@id='email']"
      And I type "1234567" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[contains(text(),'Sign in')]"
      Then I wait for element with xpath "//h1[contains(text(),'Tata Zaz')]" to be present
      Then I click on element with xpath " //button[contains(text(),'Specialists')]"
      And I click on element with xpath "//button[contains(text(),'Add specialist')]"
      Then I type "Tata" into element with xpath "//input[@id='first_name']"
      And I type "Doc" into element with xpath "//input[@id='last_name']"
      Then I click on element with xpath "//button[contains(text(),'Save')]"
      And I open url "https://medicenter-qa2.vercel.app/admin"
      Then I wait for element with xpath "//td[contains(text(),'Tata Doc')]" to be present


Scenario:MA-293 Administrator user able to open "Edit specialist Info" window
  Given I open url "https://medicenter-qa2.vercel.app/"
  Then I should see page title as "Medicenter"
  Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
  Then I click on element with xpath "//button[contains(text(),'Login')]"
  Then element with xpath "//a[contains(text(),'Back to home')]" should be present
  Then I type "taraborova@n2snow.com" into element with xpath "//input[@id='email']"
  And I type "1234567" into element with xpath "//input[@id='password']"
  And I click on element with xpath "//button[contains(text(),'Sign in')]"
  Then I wait for element with xpath "//h1[contains(text(),'Tata Zaz')]" to be present
  Then I click on element with xpath " //button[contains(text(),'Specialists')]"
  Then I wait for 3 sec
  And I click on element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[3]/div/span[1]/span"
  Then I wait for element with xpath "//span[contains(text(),'Edit specialist info')]" to be present



    Scenario: First and Last Name fields accept alphanumeric and special characters.
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then element with xpath "//a[contains(text(),'Back to home')]" should be present
    Then I type "taraborova@n2snow.com" into element with xpath "//input[@id='email']"
    And I type "1234567" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//h1[contains(text(),'Tata Zaz')]" to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(),'Specialists')]"
    Then I wait for 10 sec
    And I click on element with xpath "//td[contains(text(),'Tata Doc')]//ancestor::tr/td[3]/div/span[1]/span"
    Then I wait for element with xpath "//span[contains(text(),'Edit specialist info')]" to be present
    Then I wait for element with xpath "//input[@id='first_name']" to be present
    And I wait for element with xpath "//input[@id='last_name']" to be present
    #Verify that fields accept alphanumeric and special characters
    Then I clear element with xpath "//input[@id='first_name']"
    And I clear element with xpath "//input[@id='last_name']"
    Then I type "Robert32$" into element with xpath "//input[@id='first_name']"
    And I type "Borisov909%" into element with xpath "//input[@id='last_name']"
    And I click on element with xpath "//button[contains(text(),'Save')]"
    And I wait for 3 sec
    #Edit window closed and first name should be changed.
    Then I open url "https://medicenter-qa2.vercel.app/admin"
    And I wait for element with xpath "//td[contains(text(),'Robert32$ Borisov909%')]" to be present
    
  
    
  
  Scenario: First and Last Name fields accept 98 characters.
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then element with xpath "//a[contains(text(),'Back to home')]" should be present
    Then I type "taraborova@n2snow.com" into element with xpath "//input[@id='email']"
    And I type "1234567" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath "//td[contains(text(),'Robert32$ Borisov909%')]" to be present
    Then I wait for 3 sec
    Then I click on element with xpath "//button[contains(text(),'Specialists')]"
    Then I wait for 10 sec
    And I click on element with xpath "//td[contains(text(),'Robert32$ Borisov909%')]//ancestor::tr/td[3]/div/span[1]/span"
    Then I wait for element with xpath "//span[contains(text(),'Edit specialist info')]" to be present
    Then I wait for element with xpath "//input[@id='first_name']" to be present
    And I wait for element with xpath "//input[@id='last_name']" to be present
    #Verify that first and last name field accepts 98 characters
    Then I clear element with xpath "//input[@id='first_name']"
    And I clear element with xpath "//input[@id='last_name']"
    Then I type "RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo" into element with xpath "//input[@id='first_name']"
    And I type "RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo" into element with xpath "//input[@id='last_name']"
    And I click on element with xpath "//button[contains(text(),'Save')]"
    And I wait for 3 sec
  #Edit window closed and first name should be changed.
    Then I open url "https://medicenter-qa2.vercel.app/admin"
    And I wait for element with xpath "//td[contains(text(),'RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo')]" to be present


    Scenario: Admin user able to remove employee.
      Given I open url "https://medicenter-qa2.vercel.app/"
      Then I should see page title as "Medicenter"
      Then element with xpath "//h1[contains(text(),'Medical Center')]" should be present
      Then I click on element with xpath "//button[contains(text(),'Login')]"
      Then element with xpath "//a[contains(text(),'Back to home')]" should be present
      Then I type "taraborova@n2snow.com" into element with xpath "//input[@id='email']"
      And I type "1234567" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//button[contains(text(),'Sign in')]"
      Then I wait for element with xpath "//td[contains(text(),'RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo')]" to be present
      Then I click on element with xpath "//td[contains(text(),'RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo')]//ancestor::tr/td[3]/div/span[2]/span"
      Then I wait for element with xpath "//span[contains(text(),'Removing specialist')]" to be present
      And I click on element with xpath "//button[contains(text(),'Remove specialist')]"
      Then I wait for element with xpath "//h1[contains(text(),'Medical Center')]" to be present
      And element with xpath "//td[contains(text(),'RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo RobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRobertRo')]" should not be displayed

