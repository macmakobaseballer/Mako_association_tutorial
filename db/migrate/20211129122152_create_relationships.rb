class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.integer :follwing_id
      t.integer :follower_id

      t.timestamps
    end
  end
end