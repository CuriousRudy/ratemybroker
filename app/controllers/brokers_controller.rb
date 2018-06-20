class BrokersController < ApplicationController

  def index
    brokers = Broker.all
    render json: brokers
  end

  # def show(broker_id)
  #   broker = Broker.find(broker_params)
  # end

  # private
  #
  # def broker_params(params)
  #   params.permit(:broker_id, :broker_name)
  # end

end
