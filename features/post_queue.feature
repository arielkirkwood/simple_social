Feature: Queueing Posts
  In order to spend less time worrying about what to post and when
  As a social media manager
  I want to be able to add posts to a queue for scheduled publishing

  Scenario: Add post to queue
    Given an unqueued post
    When a user adds the post to the queue
    Then the post should be queued
    And it should be ordered last in the queue

  Scenario: Remove post from queue
    Given a queued post
    When a user removes a post from the queue
    Then the post should not be queued
