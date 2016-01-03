class CreateQueueings < ActiveRecord::Migration
  def change
    create_table :queueings do |t|
      t.references :queueable, polymorphic: true, index: true
      t.integer :queue_position, null: false

      t.timestamps null: false
    end
  end
end
