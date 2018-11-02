class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :anonymous_commentor
      t.text :content
      t.integer :user_id
      t.integer :gossip_id

      t.timestamps
    end
  end
end
