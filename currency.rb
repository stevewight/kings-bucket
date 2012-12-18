#curreny class for trade_bot
class Currency

  attr_accessor :symbol, :name, :value, :is_base

  def initialize(pd_item)
    @symbol = pd_item[0]
    @name = pd_item[1]
    @value = nil
  end

  def show
    puts 'symbol: ' + @symbol
    puts 'name: ' + @name
    
    if @is_base == true
      puts 'Is base'
    else
      puts 'value: ' + @value.to_s
    end

    puts '------------'
  end

end
