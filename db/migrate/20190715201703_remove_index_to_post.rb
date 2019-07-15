class RemoveIndexToPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :topic_id, :integer
  end
end
