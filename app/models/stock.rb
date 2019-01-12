class Stock < ActiveRecord::Base
  
  def self.new_from_lookup(ticker_symbol)
    begin
      var = StockQuote::Stock.quote(ticker_symbol)
      #price = strip_commas(var.close)
      Stock.new(ticker: var.symbol, name: var.company_name, last_price: var.close)
    rescue Exception => e
      return nil
    end
  end
  
  
  
end
