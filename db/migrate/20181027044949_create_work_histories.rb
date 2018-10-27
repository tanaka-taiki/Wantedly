class CreateWorkHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :work_histories do |t|
      t.string :company_name
      t.string :position
      t.date :company_period
      t.text :company_information
      t.timestamps
    end
  end
end
