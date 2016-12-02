#currency_data class for holding multiple currency objects
require_relative 'currency'
require_relative 'open_exchange'

class CurrencyData
  
  attr_accessor :currencies, :timestamp, :open_exchange

  def initialize(app_id)
    base_url = 'http://openexchangerates.org/api/'
    @currencies = Hash.new
    @open_exchange = OpenExchange.new(base_url,app_id)
    load_base_currencies
  end

  def load_base_currencies
    parsed_data = @open_exchange.load_local_currencies 
    parsed_data.each do |pdi|
      #create currency objects
      c = Currency.new(pdi)
      @currencies[c.symbol] = c
    end
  end

  def load_currency(date=nil)#yyyy-mm-dd.json
    parsed_data = @open_exchange.load_remote_currencies(date)
    
    parsed_data['rates'].each do |pdi|
      if @currencies.has_key?(pdi[0].to_s)
        c = @currencies[pdi[0].to_s]
 	      c.value = pdi[1]
      end
    end
  end

  def show
    @currencies.each { |c| c[1].show }
  end

end
