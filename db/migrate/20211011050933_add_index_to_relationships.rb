class AddIndexToRelationships < ActiveRecord::Migration[6.1]
  def change
    add_index(:relationships, [:followee_id, :follower_id], unique: true)
  end
end
