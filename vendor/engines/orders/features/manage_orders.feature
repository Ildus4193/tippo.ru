@refinerycms @orders @orders-manage
Feature: Manage Orders
  In order to see orders left for me on my website
  As an Administrator
  I want to manage orders

  Background:
    Given I am a logged in refinery user
    And I have no orders
    And I have an order from "David Jones" with email "dave@refinerycms.com" and message "Hello, I really like your website.  Was it hard to build and maintain or could anyone do it?"

  Scenario: Orders List
    When I go to the list of orders
    Then I should see "David Jones said Hello, I really like your website. Was it hard to build ..."
    And I should have 1 orders
    And I should not see "Add"

  Scenario: Spam List
    When I go to the list of orders
    And I follow "Spam"
    Then I should see "Hooray! You don't have any spam."

  @order-settings
  Scenario: Updating who gets notified
    When I go to the list of orders
    And I follow "Update who gets notified"
    And I fill in "Send notifications to" with "phil@refinerycms.com"
    And I press "Save"
    Then I should be redirected back to "the list of orders"
    And I should see "'Notification Recipients' was successfully updated."
    And I should be on the list of orders

  @order-settings
  Scenario: Updating confirmation email copy
    When I go to the list of orders
    And I follow "Edit confirmation email"
    And I fill in "Message" with "Thanks %name%! We'll never get back to you!"
    And I press "Save"
    Then I should be redirected back to "the list of orders"
    And I should see "'Confirmation Body' was successfully updated."
    And I should be on the list of orders

  Scenario: Orders Show
    When I go to the list of orders
    And I follow "Read the order"
    Then I should see "From David Jones [dave@refinerycms.com]"
    And I should see "Hello, I really like your website. Was it hard to build and maintain or could anyone do it?"
    And I should see "Age"
    And I should see "Back to all orders"
    And I should see "Remove this order forever"

  Scenario: Orders Delete
    When I go to the list of orders
    And I follow "Read the order"
    And I follow "Remove this order forever"
    Then I should see "'David Jones' was successfully removed."
    And I should have 0 orders
