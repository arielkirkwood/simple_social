Given(/an? (un)?queued post/) do |queued|
  @post = queued ? FactoryGirl.create(:queued_post) : FactoryGirl.create(:unqueued_post)
end

When(/^a user adds the post to the queue$/) do
  @post.enqueue
end

When(/^a user removes a post from the queue$/) do
  @post.dequeue
end

Then(/^the post should( not)? be queued$/) do |negate|
  negate ? refute(@post.queued?) : assert(@post.queued?)
end

Then(/^it should be ordered last in the queue$/) do
  assert_equal @post, Post.queue.last
end
