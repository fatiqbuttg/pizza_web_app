class OrdersController < ApplicationController
    before_action :fetch_orders
    before_action :set_order, only: :update
    
    def show; end

    def update
        @order.update(status: 'complete')

        redirect_to root_path
    end

    private

    def fetch_orders
        @orders = Order.includes(cart: [:line_items]).where(status: 'pending')
    end

    def set_order
        @order = Order.find(params[:id])
    end

  end