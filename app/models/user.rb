class User < ActiveRecord::Base
  has_secure_password
  validates :username, :presence => true
  validates :email, :uniqueness => true

  has_many  :friends, foreign_key: :from_user_id, :class_name: "Friendship", table_name: "friendships"
  has_many  :potential_friends, source: :to_user, through: :friends

  has_many :reverse_friendships, class_name: "Friendship", foreign_key: :user2_id
  has_many :friendships
  has_many  :friends, through: :friendships, class_name: "User"
  has_many  :reverse_friends, class_name: "User", through: :reverse_friendships

  def find_friends
  end
end

