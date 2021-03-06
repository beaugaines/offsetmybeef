class TransactionsController < ApplicationController

  def new
    @offset = Offset.find_by!(permalink: params[:permalink])
  end
  

  def create
    offset = Offset.find_by!(
      permalink: params[:permalink]
    )

    token = params[:stripeToken]

    begin
      charge = Stripe::Charge.create(
        amount: offset.price,
        currency: 'usd',
        card: token,
        description: params[:email]
      )

      @sale = offset.sales.create!(
        offset_id: offset.id,
        email: params[:email],
        user_id: current_user.id
      )
      redirect_to authenticated_root_path, notice: 'Purchase successful'
    rescue Stripe::CardError => e
      # card denied!
      @error = e
      render :new
    end
  end

end
  