class MessagesController < ApplicationController
  protect_from_forgery
  def index
    render json: Message.all
  end

  def create
    message = Message.new(message_params)
    if message.save
      render json: message, status: :created
    else
      render json: message.errors
    end
  end

  def show
    message = Message.find(params[:id])
    render json: message
  end

  def destroy
    Message.find(params[:id]).images.purge
    render json: "deleted successfully"
  end

  private

  def message_params
    params.require(:message).permit(images:[])
  end
end
