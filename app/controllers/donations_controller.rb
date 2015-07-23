class DonationsController < ApplicationController
  def new
    @name = "Bill"
  end

  def create
    # Set secret key: remember to change this to live secret key in production
    Stripe.api_key = "sk_test_gIgy2ECRkPETPxugi8IuHm1X"

    # Get the credit card details submitted by the form
    token = params[:stripe_token]
    amount = params[:stripe_amount].to_i * 100

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => amount,
        :currency => "usd",
        :source => token,
        :description => "Example charge"
      )
      flash[:notice] = "Payment submitted!"
      redirect_to :back
    rescue Stripe::CardError => e
      # The card has been declined
    end
  end
end
