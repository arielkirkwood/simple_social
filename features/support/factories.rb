require 'factory_girl'

FactoryGirl.define do
  factory :post do
    text 'Hello world'
  end

  factory :post_queue do
    post
  end
end