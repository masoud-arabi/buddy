class ConversationsController < ApplicationController

  def index
    @conversations = current_user.conversations
  end

  def show
    raise
    @conversation = Conversation.find(params[:id])
  end
end
