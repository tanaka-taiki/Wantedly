class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :url
      t.date :period
      t.text :information
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
