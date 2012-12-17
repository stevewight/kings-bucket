#currency_data class for holding multiple currency objects
class CurrencyData
  
  attr_accessor :currencies, :timestamp

  def initialize
    puts 'CurrencyData has been initialized'
    @currencies = Hash.new
  end

  def load_all_currencies
    puts 'load_all_currencies'
    json_data = File.read('currencies.json')
    parsed_data = JSON.parse(json_data)
    parsed_data.each do |j|
      #create currency objects
      currency = Currency.new
      currency.with_json(j)
    end
    puts parsed_data.size
    @currencies = parsed_data
  end

  def show
    #puts 'showing all currencies'
    #@currencies.each { |c| puts c }
  end

end
