get '/login' do
  p session
  if !logged_in?
    erb :"sessions/login"
  else
    redirect "/"
  end
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user.authenticate?(params[:email],params[:password])
    login(@user)
    redirect "/"
  else
    erb :"sessions/login"
  end
end

get '/logout' do
  logout
  redirect "/"
end
