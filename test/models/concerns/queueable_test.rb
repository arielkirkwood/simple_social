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

    test 'enqueues a saved model' do
      @model.save
      @model.enqueue
      queued_items = Queueing.all.map { |queueing| queueing.queueable }

      assert_includes queued_items, @model, "model was not queued"
    end

    test 'should destroy queueings when model is destroyed' do
      @model.save
      @model.enqueue
      queueings = @model.queueings
      @model.destroy

      assert_empty queueings
    end
  end
end
