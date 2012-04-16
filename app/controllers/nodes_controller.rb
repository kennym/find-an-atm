class NodesController < ApplicationController
  respond_to :json

  def index
    if params[:latitude].nil? and params[:longitude].nil? or params[:latitude].empty? or params[:longitude].empty?
      render :json => {"success" => false, "message" => "Invalid location"} and return
    end

    user_node = Node.new(
      :latitude => params[:latitude],
      :longitude => params[:longitude])
    user_node.save()

    # @nodes = user_node.nearbys(5)
    @nodes = Node.where(:in_queue => false).order("distance")

    user_node.delete()

    render :json => @nodes.to_json
  end

  def create
    user_node = Node.new(
      :name => params[:name],
      :latitude => params[:latitude],
      :longitude => params[:longitude],
      :in_queue => true)

    if user_node.save
      render :json => {"success" => true, "errors" => user_node.errors}
    else
      render :json => {"success" => false, "errors" => user_node.errors}
    end
  end
end

