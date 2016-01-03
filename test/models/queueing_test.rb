require 'test_helper'

class QueueingTest < ActiveSupport::TestCase
  def setup
    @queueable = posts(:hello_world)
    @queueing = @queueable.enqueue
  end

  test "assigns a queue position greater than 0 after initialize" do
    position = @queueing.queue_position

    assert position > 0
  end

  test "ensures successive queue positions" do
    another_queueable = posts(:follow_somaaa_studios)
    another_queueing = another_queueable.enqueue

    assert @queueing.queue_position < another_queueing.queue_position,
      "#{@queueing} position #{@queueing.queue_position} is not greater than #{another_queueing} position #{another_queueing.queue_position}"
  end
end
