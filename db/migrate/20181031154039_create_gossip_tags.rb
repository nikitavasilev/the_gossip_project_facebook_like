class CreateGossipTags < ActiveRecord::Migration[5.2]
  def change
    create_table :gossip_tags do |t|
      t.integer :gossip_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
