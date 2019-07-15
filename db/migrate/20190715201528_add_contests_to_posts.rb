class AddContestsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :contest, index: true
  end
end
