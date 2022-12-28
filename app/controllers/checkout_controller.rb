class CheckoutController < ApplicationController
    def index
        Payment.new.checkout
    end
end
