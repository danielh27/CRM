class ProspectsController < ApplicationController
  before_action :set_prospect, only: %i[edit update show]

  def index
    @prospects_quantity = Prospect.where(status: 'prospect').count
    @interested_quantity = Prospect.where(status: 'interested').count
    @clients_quantity = Prospect.where(status: 'client').count

    @list_prospects = Prospect.all.includes(:user)
  end

  def new
    @prospect = Prospect.new
  end

  def show
    @conversations = @prospect.conversations
    @new_conversation = Conversation.new
  end

  def edit
    render :new
  end

  def update
    if @prospect.update(prospect_params)
      redirect_to prospects_path
    else
      render :new
    end
  end

  def create
    @prospect = Prospect.new(prospect_params)
    @prospect.user = current_user

    if @prospect.save
      redirect_to prospects_path
    else
      render :new
    end
  end

  private

  def set_prospect
    @prospect = Prospect.find(params[:id])
  end

  def prospect_params
    params.require(:prospect).permit(:first_name, :last_name, :email, :phone, :status)
  end
end
