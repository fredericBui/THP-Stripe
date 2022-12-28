require 'stripe'
require 'dotenv'
Dotenv.load

Rails.configuration.stripe = {
    :publishable_key => ENV['PK_STRIPE'],
    :secret_key      => ENV['SK_STRIPE']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]