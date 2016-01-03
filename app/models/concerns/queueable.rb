module Queueable
  extend ActiveSupport::Concern

  included do
    has_many :queueings, as: :queueable

    def enqueue
      queueings.create
    end

    def dequeue
    end

    def queued?
    end
  end
end
