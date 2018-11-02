class JoinTableGossipsTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :gossips, :comments do |t|
       t.index [:gossip_id, :comment_id]
       t.index [:comment_id, :gossip_id]
    end
  end
end
