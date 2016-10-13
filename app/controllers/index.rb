get '/' do
  @container = Post.all.order(created_at: :desc)
	erb :index
end

get '/questions/:id' do
  id = params[:id]
  @question = Question.find(id)
  erb :"questions/show"
end
