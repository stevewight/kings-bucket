#curreny class for trade_bot
class Currency

  attr_accessor :symbol, :name, :value, :is_base

  def initialize
    puts 'currency has been initialized'
  end

  def with_json(json_item)
     puts 'creating object with data ' + json_item
  end

  def show
    puts 'symbol: ' + @symbol
    puts 'name: ' + @name
    
    if @is_base == true
      puts 'Is base'
    else
      puts @value
    end

    puts '------------'
  end

end
