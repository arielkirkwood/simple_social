Feature: Managing a Post Queue

  Scenario: Add post to post queue
    Given a post
    And a post queue
    When a user adds it to the post queue
    Then the post queue should include the post
    And it should be ordered last in the post queue

  Scenario: Remove post from post queue
    Given a post queue with at least one post
    When a user removes a post from the post queue
    Then the post queue should no longer include the post
