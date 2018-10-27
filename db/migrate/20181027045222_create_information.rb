class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.integer :sex, null: false
      t.date :date, null: false
      t.integer :unmarried
      t.integer :children
      t.timestamps
    end
  end
end
