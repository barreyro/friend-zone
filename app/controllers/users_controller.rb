get '/signup' do
  erb :sign_up
end

post '/signup' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/signup'
  end
end

get '/login' do
  erb :login
end

post '/login' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    redirect '/login'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
