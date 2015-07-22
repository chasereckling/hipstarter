class RecipientsController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipients = Recipient.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
    @recipient = params.find(:id)
  end

  def update
    recipient = params.find(:id)
    recipient.update(recipient_params)
    redirect_to :back
  end

  def destroy
    recipient = params.find(:id)
    recipient.destroy
    redirect_to :back
  end

  private

    def recipient_params
      params.require(:recipient).permit(:name, :description)
    end
end
