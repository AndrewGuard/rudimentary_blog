get '/new_post' do
	erb :new_post
end

post '/new_post' do
	@post = Post.create(title: params[:title], body: params[:body])
	erb :post
end

get '/posts' do
	@all_posts = Post.all
  erb :all_posts
end

get '/index_page' do
  @all_posts_index = Post.all
  erb :all_posts_index
end