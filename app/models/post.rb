class Post < ActiveRecord::Base
  def queue
    self.queue_position = 0
  end

  def queued?
    !self.queue_position.nil?
  end
end
