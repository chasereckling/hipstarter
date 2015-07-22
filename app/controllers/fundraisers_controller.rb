class FundraisersController < ApplicationController
  before_action :authenticate_user!

  def index
    @fundraisers = Fundraiser.all
  end

  def new
    @fundraiser = Fundraiser.new
  end

  def create
    @fundraiser = Fundraiser.new(fundraiser_params)
    @fundraiser.update(user_id: current_user.id)
    if @fundraiser.save
      flash[:notice] = "Your hipster has been added despite his protests about this being lame"
      redirect_to fundraiser_path(@fundraiser)
    else
      flash[:notice] = "Your hipster is too cool for this. Give him a stern talking-to and try again"
      render :new
    end
  end

  def show
    @fundraiser = Fundraiser.find(params[:id])
  end

  def edit
    @fundraiser = params.find(:id)
  end

  def update
    fundraiser = params.find(:id)
    fundraiser.update(recipient_params)
    redirect_to :back
  end

  def destroy
    fundraiser = params.find(:id)
    fundraiser.destroy
    redirect_to :back
  end

  private

    def fundraiser_params
      params.require(:fundraiser).permit(:name, :description)
    end
end
