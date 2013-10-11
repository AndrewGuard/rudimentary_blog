get '/new_post' do
	erb :new_post
end

post '/new_post' do
	@post = Post.create(title: params[:title], body: params[:body])
	# @tag = Tag.create(tag: params[:tag])
	# @post_cat = PostCategory.create(@post.id, @tag.id)
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

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post
end

get '/post/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit_page
end

get '/post/:id/delete' do
  @post = Post.find(params[:id])
  @post.destroy
  erb :index
end