class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.integer :display_laguage, null: false
      t.integer :living, null: false
      t.text :scout_span
      t.text :rejection_company
      t.integer :search_results, null: false
      t.integer :alert, null: false
      t.timestamps
    end
  end
end
