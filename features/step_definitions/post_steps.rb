Given (/an? (un)?queued post/) do |queued|
  queued ? FactoryGirl.create(:queued_post) : FactoryGirl.create(:unqueued_post)
end
