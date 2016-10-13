get '/' do
  @container = Post.all
	erb :index
end
