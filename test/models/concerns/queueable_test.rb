module QueueableTest
  extend ActiveSupport::Concern

  included do
    test 'responds to enqueue' do
      assert_respond_to @model, :enqueue
    end

    test 'responds to dequeue' do
      assert_respond_to @model, :dequeue
    end

    test 'responds to queued?' do
      assert_respond_to @model, :queued?
    end
  end
end
