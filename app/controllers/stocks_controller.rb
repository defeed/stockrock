# Stocks controller
class StocksController < ApplicationController
  def index
    @stocks = Stock.all
  end

  def show
    @title = 'Calculation result'
    @stock = Stock.find params[:id]
  end

  def new
    @title = 'Enter stock details'
    @stock = Stock.new
  end

  def create
    @stock = Stock.new stock_params

    if @stock.save
      redirect_to @stock
    else
      @title = 'Enter stock details'
      render action: :new
    end
  end
  
  def destroy
    Stock.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def stock_params
    params.require(:stock)
      .permit(:stock_name, :price, :quantity, :percentage, :years)
  end
end
