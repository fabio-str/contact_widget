class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  skip_before_action :verify_authenticity_token, only: [:show]
  before_action :set_widget, only: [:show]
  
  def create
    message = @widget.messages.create!(message_params)
    message.notify_user
    head :ok
  end

  def index
    @messages = current_user.messages.order(created_at: :desc)

    respond_to do |format|
      format.html { @messages }
      format.csv { send_data(Message.to_csv(@messages), filename: "messages_export_#{Date.today}.csv") }
    end

  end

  private

  def set_widget
    @widget = Widget.find_by(client_id: params[:client_id])
    @widget = Widget.last
  end

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end 

end
