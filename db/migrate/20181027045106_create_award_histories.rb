class CreateAwardHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :award_histories do |t|
      t.date :year
      t.string :title
      t.timestamps
    end
  end
end
