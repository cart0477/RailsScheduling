class OrderController < ApplicationController
  def index
    @orders = Order.all
    @technicians = Technician.all
    @locations = Location.all
  end
end
