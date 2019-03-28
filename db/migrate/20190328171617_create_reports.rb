class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :placements
      t.integer :video_showings
      t.integer :hours
      t.integer :return_visits
      t.integer :bible_studies
      t.string :comments
      t.string :month
      t.integer :year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
