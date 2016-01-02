require 'test_helper'

class QueueingTest < ActiveSupport::TestCase
  def setup
    @queueable = posts(:hello_world)
    @queueing = @queueable.queueings.build
  end

  test "assigns a queue position after initialize" do
    refute_nil @queueing.queue_position
  end

  test "ensures no duplicate queue positions" do
    @queueing.save
    @another_queueable = posts(:follow_somaaa_studios)
    @another_queueing = @another_queueable.queueings.build
    @another_queueing.save
    refute @queueing.queue_position == @another_queueing.queue_position,
      "#{@queueing} position #{@queueing.queue_position} is the same as #{@another_queueing} position #{@another_queueing.queue_position}"
  end

end
