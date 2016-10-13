get '/' do
  @container = Post.all.order(id: :desc)
	erb :index
end

get '/questions/:id' do
  id = params[:id]
  @question = Question.find(id)
  if request.xhr?
    page = erb :"questions/_content", layout: false, locals: {question: @question}
    json id: @question.id, page: page
  else
    erb :"questions/show"
  end
end
