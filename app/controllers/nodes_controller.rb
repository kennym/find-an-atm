class NodesController < ApplicationController
  respond_to :json

  def index
    @nodes = Node.all
    render :json => @nodes
  end
end
