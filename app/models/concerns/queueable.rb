module Queueable
  extend ActiveSupport::Concern

  included do
    has_many :queueings, as: :queueable

    def enqueue
    end

    def dequeue
    end

    def queued?
    end
  end
end