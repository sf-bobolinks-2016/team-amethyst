get '/users/new' do
  erb :"users/new"
end

post '/users' do
  p params
  @user = User.new(params[:user])
  if @user.save
    redirect "/"
  else
    redirect "/users/new"
  end
end
