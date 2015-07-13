require 'factory_girl'

FactoryGirl.define do
  factory :post do
    text 'Hello world'

    trait :queued do
      sequence(:queue_position)
    end

    trait :unqueued do
      queue_position nil
    end

    factory :queued_post, traits: [:queued]
    factory :unqueued_post, traits: [:unqueued]
  end
end