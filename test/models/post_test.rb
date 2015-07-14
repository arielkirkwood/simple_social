require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(text: "Hello World")
  end

  test 'should be valid' do
    assert @post.valid?
  end

  test 'text should be present' do
    @post.text = '     '
    refute @post.valid?
  end
end
