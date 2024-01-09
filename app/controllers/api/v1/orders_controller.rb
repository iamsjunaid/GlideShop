class Api::V1::OrdersController < ApplicationController
  before_action :find_order, only: %i[show update destroy]

  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    find_order
    render json: @order
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      render json: @order, status: :created
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    find_order
    if @order.update(order_params)
      render json: @order
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    find_order
    @order.destroy
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
end
