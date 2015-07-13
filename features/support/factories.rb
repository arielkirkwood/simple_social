require 'factory_girl'

FactoryGirl.define do
  sequence(:queue_position)

  factory :post do
    text 'Hello world'
    queue_position
  end
end