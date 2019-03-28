class CreateCongregations < ActiveRecord::Migration[5.2]
  def change
    create_table :congregations do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country, default: "USA"
      t.string :language, default: "English"

      t.timestamps
    end
  end
end
