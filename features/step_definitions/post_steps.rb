Given(/I have added these posts to my Library:$/) do |posts|
  @posts = []
  post_attributes = posts.hashes.map do |post_attrs|
    @posts.append create(:post, post_attrs)
  end
end

When(/^I add a post to the Queue$/) do
  @post = @posts.first
  @post.enqueue
end

When(/^I remove a post from the Queue$/) do
  # queue = ...
  # @post = queue.something ...
  # @post.dequeue
  pending
end

Then(/^the post should( not)? be queued$/) do |negate|
  negate ? refute(@post.queued?) : assert(@post.queued?)
end
