class MessagesController < ApplicationController

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.user = current_user
    @message.conversation = @conversation
    @message.save
    ConversationChannel.broadcast_to(
    @conversation,
    render_to_string(partial: "messages/message", locals: { message: @message }))
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
