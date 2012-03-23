class NodesController < ApplicationController
  respond_to :json

  def index
    @nodes = Node.all
    render :text => "Ext.data.JsonP.callback1(" + @nodes.to_json + ")", :content_type => 'text/javascript'
  end
end
