post '/addfriend/:user' do |user|
  Friendship.create(friend: User.find(user.to_i), friendee: nil)
  redirect '/'
end
