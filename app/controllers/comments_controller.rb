class CommentsController < ApplicationController
  before_action :set_current_post
  before_action :set_comment, only: [:destroy, :update]

  # C.R.U.D.
  def create
    # Add a new `Comment` for the current `Post`
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment has been saved."
      redirect_to post_path(@post)
    end
  end

  def destroy
    # Remove a `Comment` from the database
    @comment.destroy
    flash[:notice] = "Comment has been deleted."
    redirect_to post_path(@post)
  end

  def update
    # Edit a `Comment` in the database
    if @comment.update(comment_params)
      flash[:notice] = "Comment has been updated."
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_current_post
    @post = Post.find_by id: @comment.post_id
  end

end
