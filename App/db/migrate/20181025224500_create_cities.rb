class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :zip_code
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
