Feature: See Logo
  In order to identify the site branding
  As an anonymous user
  I should see a logo on the homepage


  Scenario: See Logo
    Given I am an anonymous user
    When I go to the homepage
    Then the element '.site-branding__logo' should exist

  @api @javascript
  Scenario: Show Modal
    Given I am logged in as an "administrator"
    And I am on "/admin/structure/block"
    When I click "Place block"
    And I wait for AJAX to finish
    Then the element '.block-filter-text-source' should exist
