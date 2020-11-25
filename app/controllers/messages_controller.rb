class MessagesController < ApplicationController

  def create
    @messsage = current_user.messages.build(message_params)
    @messsage.conversation_id = @conversation_id
    @messsage.save!
    flash[:success] = "Your message was sent!"
    redirect_to conversation_path(@conversation)
  end

  private

  def message_params
    params.require(:merssage).permit(:content)
  end
end
