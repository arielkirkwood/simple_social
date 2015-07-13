class CreatePostQueues < ActiveRecord::Migration
  def change
    create_table :post_queues do |t|
      t.references :post, index: true, foreign_key: true
      t.integer :position

      t.timestamps null: false
    end
  end
end
