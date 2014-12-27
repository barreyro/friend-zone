class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references  :user
      t.integer     :user2_id
      t.string      :status
    end
  end
end
