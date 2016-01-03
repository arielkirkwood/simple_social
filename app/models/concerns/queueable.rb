module Queueable
  extend ActiveSupport::Concern

  included do
    has_many :queueings, as: :queueable, dependent: :destroy

    def enqueue
      queueings.create
    end

    def dequeue
      queueings.destroy_all
    end

    def queued?
      !queueings.empty?
    end
  end
end
