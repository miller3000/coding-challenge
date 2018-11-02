class PostsController < ApplicationController
  include PostsHelper

# VIEWS
  def index
    # Return view of all `Posts`
    @posts = Post.all
  end

  def edit
    # Return view to update an existing `Post`
  end

  def new
    # Return view to create a new `Post`
    @post = Post.new
  end

  def show
    # Return view to create a new `Post`
  end

# C.R.U.D.
  def create
    # Add a new `Post` to the database
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post has been saved."
      redirect_to posts_path(@path)
    else
      render :new
    end
  end

  def destroy
    # Remove a `Post` from the database
    @post.destroy
    flash[:notice] = "Post has been deleted."
    redirect_to posts_path
  end

  def update
    # Edit a `Post` in the database
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post has been updated."
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
