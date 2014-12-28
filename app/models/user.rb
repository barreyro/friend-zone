class User < ActiveRecord::Base
  has_secure_password
  validates :username, :presence => true
  validates :email, :uniqueness => true

  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :reverse_friendships, :class_name => 'Friendship', :foreign_key => 'friend_id'
  has_many :reverse_friends, :through => :reverse_friendships, :source => :user

  def friendship_with(friend_id)
    Friendship.of_user(self.id).where('user_id = ? or friend_id = ?', friend_id, friend_id)
  end

  def friends_with?(other_user)
    Friendship.of_user(self.id).where('user_id = ? or friend_id = ?', other_user, other_user).any?
  end

end

