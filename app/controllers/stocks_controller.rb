class StocksController < ApplicationController
  
  def search
    if params[:stock].blank?
      flash.now[:danger] = "You have not entered anything"
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "You have entered a wrong ticker" unless @stock
    end
     render partial: 'users/result'
  end
  
end