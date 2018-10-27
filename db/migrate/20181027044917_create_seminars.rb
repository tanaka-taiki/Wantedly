class CreateSeminars < ActiveRecord::Migration[5.1]
  def change
    create_table :seminars do |t|
      t.string :name
      t.text :url
      t.date :period, foreign_key: true
      t.text :information
      t.timestamps
    end
  end
end
