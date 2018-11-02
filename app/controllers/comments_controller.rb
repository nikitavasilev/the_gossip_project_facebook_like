class CommentsController < ApplicationController
  def index
    
  end

  def create
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.create(comment_params)
    redirect_to gossip_path(@gossip)
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.find(params[:id])
    @comment.destroy
    redirect_to gossip_path(@gossip)
  end

  private

  def comment_params
    params.require(:comment).permit(:anonymous_commentor, :content)
  end
end
