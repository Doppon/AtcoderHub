class RenameTopicsToContests < ActiveRecord::Migration[5.2]
  def change
    rename_table :topics, :contests
  end
end
