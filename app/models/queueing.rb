class Queueing < ActiveRecord::Base
  after_initialize :assign_queue_position

  belongs_to :queueable, polymorphic: true

  private
    def assign_queue_position
      self.queue_position = Queueing.count + 1
    end
end
