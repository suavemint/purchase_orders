Feature: Organization Sign Up
  As a user
  I want to sign up for an organization account
  So that I can have myself or others track purchase orders

  Scenario: User sees signup link
    When I go to the homepage
    Then I should see the signup link

  Scenario: User goes to signup page from home page
    Given I am on the home page
    When I click the signup link
    Then I should go to the signup page

  Scenario: User enters organization information and submits
    Given I am on the signup page
    When I enter my organization's information
    Then I have an org acount created and am redirected to it

    #Feature: User Sign Up
    #  As a user
    #  I want to sign up for a user account
    #  So that I can have myself view and track purchase orders

  #  Scenario: User follows signup link from email inviting them on behalf of organization
  #  Given An organization account has been set up and has included my email address
  #  When I click a signup link that is sent to me
  #  Then I am taken to the organization sign up page
