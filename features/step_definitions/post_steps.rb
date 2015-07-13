Given (/an? (un)?queued post/) do |queued|
  @post = queued ? FactoryGirl.create(:queued_post) : FactoryGirl.create(:unqueued_post)
end

When(/^a user queues the post$/) do
  @post.queue
end

Then(/^the post should be queued$/) do
  assert @post.queued?
end

Then(/^it should be ordered last in the queue$/) do
  assert_equal @post, Post.queue.last
end
