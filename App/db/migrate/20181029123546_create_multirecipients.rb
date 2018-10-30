class CreateMultirecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :multirecipients do |t|
      t.references :users, foreign_key: true
      t.references :private_messages, foreign_key: true

      t.timestamps
    end
  end
end
