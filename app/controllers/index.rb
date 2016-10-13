get '/' do
  @container = Post.all.order(created_at: :desc)
	erb :index
end
