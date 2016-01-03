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
      queued_models = Queueing.all.map { |queueing| queueing.queueable }

      assert_includes queued_models, @model, "model was not queued"
    end

    test 'dequeues a saved model' do
      @model.save
      @model.enqueue
      @model.dequeue
      queued_models = Queueing.all.map { |queueing| queueing.queueable }

      refute_includes queued_models, @model, "model was still queued"
    end

    test 'knows if a model is queued' do
      @model.save
      refute @model.queued?

      @model.enqueue
      assert @model.queued?

      @model.dequeue
      refute @model.queued?
    end

    test 'should destroy queueings when model is destroyed' do
      @model.save
      @model.enqueue
      queueings = @model.queueings
      @model.destroy

      assert_empty queueings
      refute @model.queued?
    end
  end
end
