Feature: Managing a Post Queue

  Scenario: Add post to queue
    Given a post
    When a user adds it to a queue
    Then the queue should include the post
    And it should be ordered last in the queue

  Scenario: Remove post from queue
    Given a queue with at least one post
    When a user removes a post from the queue
    Then the queue should no longer include the post
