class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :telephone
      t.string :password_digest
      t.boolean :admin, default: false
      t.references :congregation, foreign_key: true

      t.timestamps
    end
  end
end
