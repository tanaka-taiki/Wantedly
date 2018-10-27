class CreateYoutubes < ActiveRecord::Migration[5.1]
  def change
    create_table :youtubes do |t|
      t.text :url
      t.string :name
      t.text :relation_url
      t.text :information
      t.date :date
      t.timestamps
    end
  end
end
