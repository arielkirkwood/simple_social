class AddQueuePositionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :queue_position, :integer
  end
end
