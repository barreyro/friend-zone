get '/' do
  @users = User.all
  erb :index
end

get '/signup' do
  erb :sign_up
end

post '/signup' do
  puts params[:user]
  user = User.new(params[:user])

  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/sign_up'
  end
end
