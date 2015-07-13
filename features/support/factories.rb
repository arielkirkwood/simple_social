require 'factory_girl'

FactoryGirl.define do
  factory :post do |f|
    f.text 'Hello world'
  end

  # factory :queue do |f|
  #   f.username 'testuser'
  # end
end