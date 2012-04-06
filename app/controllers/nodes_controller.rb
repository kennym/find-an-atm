class NodesController < ApplicationController
  respond_to :json

  def index
    # Debugging only
    if params[:latitude].nil? and
       params[:longitude].nil?
      if params[:latitude].empty? or params[:longitude].empty?
        params[:latitude] = "-25.300494"
        params[:longitude] = "-57.636231"
      end
    end

    user_node = Node.new(
      :latitude => params[:latitude],
      :longitude => params[:longitude])
    user_node.save()

    @nodes = user_node.nearbys(5)

    user_node.delete()

    render :text => "#{params[:callback]}(" + @nodes.to_json + ")", :content_type => 'text/javascript'
  end

  def add
  end
end

