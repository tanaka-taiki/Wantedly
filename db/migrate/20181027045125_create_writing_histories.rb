class CreateWritingHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :writing_histories do |t|
      t.date :date
      t.string :title
      t.text :url
      t.timestamps
    end
  end
end
