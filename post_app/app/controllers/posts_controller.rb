class PostsController < ApplicationController
  def index
    @posts=Post.all

  end

  def edit
    @posts=Post.all.find(params[:id])

  end

  def show
    @post=Post.all.find(params[:id])

    redirect_to "/posts/#{params[:id]}/comments"
  end

  def create
    new_album=Post.create(post_params)
    new_album.save

    redirect_to "/posts"

  end

  def new
    @posts=Post.new

  end

  def update
    @post=Post.all.find(params[:id])
    @post.update(post_params)
    
    redirect_to "/posts"
  end

  def destroy
    Post.destroy(params[:id])

    redirect_to "/posts"
  end

  protected
  def post_params
    params.require(:post).permit(:user_name, :body, :theme)
  end


end
