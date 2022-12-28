class CheckoutController < ApplicationController
    def index
        require 'stripe'
        require 'dotenv'
        Dotenv.load

        # This is your test secret API key.
        Stripe.api_key = ENV['SK_STRIPE']

        domain = 'http://localhost:3000/checkout'

        # content_type 'application/json'

        session = Stripe::Checkout::Session.create({
            line_items: [{
            # Provide the exact Price ID (e.g. pr_1234) of the product you want to sell
            price: 'price_1MJw8QKedGwHhxrz4vMrczR0',
            quantity: 1,
            }],
            mode: 'payment',
            success_url: domain + '/success',
            cancel_url: domain + '/cancel',
        })
        redirect_to "#{session.url}", allow_other_host: true
    end

    def success
    end

    def cancel
    end
end
