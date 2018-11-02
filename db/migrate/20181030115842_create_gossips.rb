class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.text :content
      t.string :anonymous_gossiper
      t.references :users, foreign_key: true, index: true
      t.references :comments, foreign_key: true
      t.timestamps
    end
  end
end
