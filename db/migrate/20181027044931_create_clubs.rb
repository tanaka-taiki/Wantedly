class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :url
      t.date :period
      t.text :information
      t.timestamps
    end
  end
end
