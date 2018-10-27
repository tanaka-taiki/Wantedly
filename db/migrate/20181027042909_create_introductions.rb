class CreateIntroductions < ActiveRecord::Migration[5.1]
  def change
    create_table :introductions do |t|
      t.text :introduction
      t.text :will
      t.integer :school_historys_id, foreign_key: true
      t.integer :seminars_id, foreign_key: true
      t.integer :club_id, foreign_key: true
      t.integer :work_history_id, foreign_key: true
      t.integer :project_id, foreign_key: true
      t.integer :skill_id, foreign_key: true
      t.integer :language_id, foreign_key: true
      t.integer :qualification_id, foreign_key: true
      t.integer :award_history_id, foreign_key: true
      t.integer :writing_history_id, foreign_key: true
      t.integer :portfolio_id, foreign_key: true
      t.integer :youtube_id, foreign_key: true
      t.text :link
      t.integer :topic_id, foreign_key: true
      t.integer :information_id, null: false, foreign_key: true
      t.text :file
      t.timestamps
    end
  end
end
