class RecipientController < ApplicationController
  def index
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def recipient_params
      params.require(:recipient).permit(:name)
    end
end
