require 'spec_helper'

describe TransactionsController do
  before do
    Stripe.api_key = 'sk_fake_test_key'
  end

  describe 'POST #create' do
    context 'successful post' do
      it 'creates a sales object' do
        token = 'tok_123456'
        email = 'test@example.com'
        permalink = 'steak-offset'

        offset = Offset.create!(
          permalink: permalink,
          price: 100
        )

        Stripe::Charge.expects(:create).with({
          amount: 100,
          currency: 'usd',
          card: token,
          description: email
        }).returns(mock)

        post :create, email: email, stripeToken: token, permalink: permalink

        expect(assigns(:sale)).not_to be_nil
        expect(assigns(:sale).offset_id).to eq offset.id
        expect(assigns(:sale).email).to eq email
      end
    end
  end
end