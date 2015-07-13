Feature: Queueing Posts

  Scenario: Queue a post
    Given an unqueued post
    When a user queues the post
    Then the post should be queued
    And it should be ordered last in the queue

  Scenario: Remove post from queue
    Given a queued post
    When a user removes a post from the queue
    Then the post should not be queued
