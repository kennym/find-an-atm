class NodesController < ApplicationController
  respond_to :json

  def index
    # Debugging only
    if params[:latitude].nil? and
       params[:longitude].nil?
      params[:latitude] = "-25.300494"
      params[:longitude] = "-57.636231"
    elsif params[:latitude].empty? or params[:longitude].empty?
      params[:latitude] = "-25.300494"
      params[:longitude] = "-57.636231"
    end

    user_node = Node.new(
      :latitude => params[:latitude],
      :longitude => params[:longitude])
    user_node.save()

    # @nodes = user_node.nearbys(5)
    @nodes = Node.all().sort_by()

    user_node.delete()

    render :json => @nodes.to_json
  end

  def create
    user_node = Node.new(
      :name => params[:name],
      :latitude => params[:latitude],
      :longitude => params[:longitude]
    )

    if user_node.save
      render :json => {"success" => true}
    else
      render :json => {"success" => false}
    end
  end
end

