class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.integer :topic
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
