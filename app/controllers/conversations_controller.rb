class ConversationsController < ApplicationController

  def index
    @conversations = current_user.conversations
  end

  def show
    @conversation = Conversation.find(params[:id])
    @chat_with_user = current_user == @conversation.sender ? @conversation.receiver : @conversation.sender
    @messages = @conversation.messages
    @message = Message.new
  end

  def create
    if existing_convo(params[:user_id])
      redirect_to conversation_path(existing_convo(params[:user_id]))
    else
      conversation = Conversation.create(sender_id: current_user.id, receiver_id: params[:user_id])
      redirect_to conversation_path(conversation)
    end
  end

  private

  def existing_convo(id)
    Conversation.find_by(sender_id: current_user.id, receiver_id: id) ||
    Conversation.find_by(sender_id: id, receiver_id: current_user.id)
  end
end
