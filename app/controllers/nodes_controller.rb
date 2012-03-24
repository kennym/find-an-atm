class NodesController < ApplicationController
  respond_to :json

  def index
    user_node = Node.new(
      :latitude => params[:latitude],
      :longitude => params[:longitude])

    @nodes = user_node.nearbys()

    render :text => "Ext.data.JsonP.callback1(" + @nodes.to_json + ")", :content_type => 'text/javascript'
  end
end
