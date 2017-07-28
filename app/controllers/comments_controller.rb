class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    @comment = Comment.all.first
  end

  def create
    Comment.create(content: params[:content])
  end
end
