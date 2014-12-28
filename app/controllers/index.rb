get '/' do
  @users = User.all
  erb :index
end

get 'signup' do
  erb :sign_up
end
