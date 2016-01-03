Feature: Queueing Posts
  In order to automate choosing what to post next
  As a social media manager
  I want to be able to add posts to a queue for future publishing

  Background:
    Given I have added these posts to my Library:
      | text |
      | I am making dinner |
      | I just woke up |
      | I am going to work |

  Scenario: Add post to Queue
    When I add a post to the Queue
    Then the post should be queued
    And I should see the post in the Queue

  Scenario: Remove post from queue
    When I remove a post from the Queue
    Then the post should not be queued
    And I should not see the post in the Queue
