class CreateFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feeds do |t|
      t.references :users, foreign_key:true
      t.timestamps
    end
  end
end
