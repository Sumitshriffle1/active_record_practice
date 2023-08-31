class MessagesController < ApplicationController
  protect_from_forgery
  def create
    message = Message.create(message_params)
    render json: message
  end

  private

  def message_params
    params.permit(:images)
  end
end
