class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :anonymous_commentor
      t.references :comments, polymorphic: true
      t.references :gossips, foreign_key: true

      t.timestamps
    end
  end
end
