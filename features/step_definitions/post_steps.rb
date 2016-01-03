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

Then(/^I should( not)? see the post in the Queue$/) do |negated|
  pending # express the regexp above with the code you wish you had
  negated ? raise : raise
end

Then(/^the post should( not)? be queued$/) do |negated|
  negated ? refute(@post.queued?) : assert(@post.queued?)
end
