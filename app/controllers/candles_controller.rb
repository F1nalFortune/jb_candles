class CandlesController < ApplicationController
  def index
    @candles = Candle.all
  end

  def show
    @candle = Candle.find(params[:id])
  end

  def create
    @candle = Candle.new(candle_params)

    if @candle.save
      redirect_to candles_path
    else
      render :new
    end
  end

  def new
    @candles = Candle.new
  end

def candle_params
  params.require(:candle).permit(:title, :body, :price)
end


end
