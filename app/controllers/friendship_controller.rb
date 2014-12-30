post '/addfriend' do
  p @users
  Friendship.create(friend: User.find_by(id: @user), friendee: nil)
  redirect '/'
end
