require 'test_helper'

class PostTest < ActiveSupport::TestCase
  include QueueableTest

  def setup
    @post = @model = Post.new(text: "Hello World")
  end

  test 'should be valid' do
    assert @post.valid?
  end

  test 'text should be present' do
    @post.text = '     '

    refute @post.valid?
  end
end
