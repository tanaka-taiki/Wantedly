class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.text :image
      t.string :name
      t.text :url
      t.text :information
      t.date :date
      t.timestamps
    end
  end
end
