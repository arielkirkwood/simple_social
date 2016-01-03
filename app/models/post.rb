class Post < ActiveRecord::Base
  include Queueable

  validates :text,  presence: true
end
