class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :users, foreign_key: true, index: true
      t.references :commenteable, polymorphic: true

      t.timestamps
    end
  end
end
