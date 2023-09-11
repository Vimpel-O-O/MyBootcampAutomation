# Author: Iryna K

Feature: User Story 3

  Scenario: Adding new specialist with valid credentials
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "Karl" into element with xpath "//input[@id='first_name']"
    Then I type "Marx" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Ophthalmologist')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.tuesday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.tuesday.to']"
    And I type "13:00" into element with xpath "//input[@id='working_hours.thursday.from']"
    And I type "16:00" into element with xpath "//input[@id='working_hours.thursday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(),'Karl Marx')]" should be present


  Scenario: Adding new specialist using alphanumeric and special characters
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "ART2&/" into element with xpath "//input[@id='first_name']"
    Then I type "COM%*2" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I open url "https://medicenter-qa2.vercel.app/"
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(),'ART2&/ COM%*2')]" should be present


  Scenario: Entering whitespaces in the required First mame field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "  A" into element with xpath "//input[@id='first_name']"
    Then I type "Smith" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present


  Scenario: Entering whitespaces in the required Last mame field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "Adam" into element with xpath "//input[@id='first_name']"
    Then I type "S  " into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present

  Scenario: Entering whitespaces in the required fields (First name and Last name)
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "  " into element with xpath "//input[@id='first_name']"
    Then I type "  " into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present


  Scenario: Adding new specialist with empty required First name field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "Smith" into element with xpath "//input[@id='last_name']"
    Then I click on element with xpath "//option[contains(text(),'Cardiologist')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present
    And element with xpath "//input[@id='first_name']" should be enabled
    And I wait for 2 sec

  Scenario: Adding new specialist with empty required Last name field
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I type "Adam" into element with xpath "//input[@id='first_name']"
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present
    And element with xpath "//input[@id='last_name']" should be enabled
    And I wait for 2 sec
    

  Scenario: Adding new specialist with empty required fields (Last name and First name)
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then  I should see page title contains "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I type "administrator1@gmail.com" into element with xpath "//input[@id='email']"
    Then I type "abc123" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 2 sec
    Then element with xpath "//h1[@class='font-medium text-xl']" should be present
    Then I click on element with xpath "//button[contains(text(),'Add specialist')]"
    #open popup window
    And element with xpath "//span[contains(text(),'New specialist')]" should be present
    Then I click on element with xpath "//option[contains(text(),'Doctor')]"
    Then I type "09:00" into element with xpath "//input[@id='working_hours.monday.from']"
    Then I type "12:00" into element with xpath "//input[@id='working_hours.monday.to']"
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then element with xpath "//span[contains(text(),'New specialist')]" should be present
    And element with xpath "//input[@id='first_name']" should be enabled
    And I wait for 2 sec