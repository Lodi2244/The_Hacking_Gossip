class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password
      t.references :gossips, foreign_key: true

      t.timestamps
    end
  end
end
