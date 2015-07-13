class Post < ActiveRecord::Base
  def self.queue
    where.not(queue_position: nil).order(:queue_position)
  end

  def enqueue
    self.queue_position = Post.queue.length + 1
  end

  def dequeue
    self.queue_position = nil
  end

  def queued?
    !self.queue_position.nil?
  end
end
