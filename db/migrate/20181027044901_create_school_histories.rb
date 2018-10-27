class CreateSchoolHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :school_histories do |t|
      t.string :schoolname
      t.string :department
      t.date :graduate
      t.text :research_content
      t.timestamps
    end
  end
end
