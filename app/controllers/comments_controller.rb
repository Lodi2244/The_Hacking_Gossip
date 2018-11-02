class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new(comment_params)
    @comment.save
  end

  def create
  end

  def destroy
  end

  def edit
  end

  private

  def comment_params
      params.require(:comment).permit(:anonymous_commentor, :content, :comments)
    end
end
