class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :placements, default: 0
      t.integer :video_showings, default: 0
      t.integer :hours, default: 0
      t.integer :return_visits, default: 0
      t.integer :bible_studies, default: 0
      t.string :comments, default: ""
      t.string :month
      t.integer :year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
