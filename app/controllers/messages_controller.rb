class MessagesController < ApplicationController
  before_action :set_converstation

  def index
    @messages = @conversation.messages
    @messages.last.mark_as_read if @conversation.recipient == current_user
    @message = @conversation.messages.new
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    redirect_to conversation_messages_path(@conversation) if @message.save
  end

  private

  def set_converstation
    @conversation = Conversation.find(params[:conversation_id])
  end

  def message_params
    params.require(:message).permit(:body, :user_id)
  end
end
