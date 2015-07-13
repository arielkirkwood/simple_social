class Post < ActiveRecord::Base
  def self.queue
    where.not(queue_position: nil).order(:queue_position)
  end

  def queue
    self.queue_position = 0
  end

  def queued?
    !self.queue_position.nil?
  end
end
