class AdminController < ApplicationController
  def index
    @items = Node.where(:in_queue => true)
  end
end
