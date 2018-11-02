class GossipController < ApplicationController
  def index
    @gossip = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.create(gossip_params)
    if @gossip.save
      flash[:success] = "Gossip created!"
      redirect_to @gossip
    else
      render 'gossip/new'
    end
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossip_params)

    flash[:success] = "Updated successfully."
    redirect_to gossip_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy

    flash[:success] = "Deleted successfully."
    redirect_to gossip_index_path
  end

  private

  def gossip_params
    params.require(:gossip).permit(:anonymous_gossiper, :title, :content)
  end
end
