class ConversationsController < ApplicationController
  def create
    @conversation = Conversation.new(conversation_params)
    @conversation.prospect = Prospect.find(params[:prospect_id])

    if @conversation.save!
      redirect_to prospect_path(params[:prospect_id])
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:content)
  end
end
