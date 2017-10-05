class CommentsController < ApplicationController

  def index

    @post=Post.find_by(id:params[:post_id])

    @comments=@post.comments

  end

  def edit
    @post=Post.find(params[:post_id])
    @comment=@post.comments.find(params[:id])
  end

  def show
    @post=Post.find(params[:post_id])
    @comment=@post.comments.find(params[:id])
  end

  def create
    @post=Post.find(params[:post_id])
    new_comment=@post.comments.create(comment_params)

    redirect_to post_path(@post)
  end

  def new

    @post=Post.find(params[:post_id])
    @comment=Comment.new

  end

  def update
    @post=Post.find(params[:post_id])

    @post.comments.find(params[:id]).update(comment_params)

    redirect_to post_path(@post)

  end

  def destroy
    @post=Post.find(params[:post_id])
    @post.comments.destroy(params[:id])

    redirect_to post_path(@post)
  end

  protected
  def comment_params
    params.require(:comment).permit(:user_name, :body_comment)
  end

end
