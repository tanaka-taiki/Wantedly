class CreateLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :languages do |t|
      t.integer :can_language
      t.integer :level
      t.timestamps
    end
  end
end
