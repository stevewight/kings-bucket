#run_bot, script starting point for the trade_bot
require 'stock'
require 'currency'
require 'currency_data'
require 'rubygems'
require 'json'

s = Stock.new
c = Currency.new
c.symbol = 'USD'
c.name = 'United States Dollar'
c.value = nil
c.is_base = true
c.show

c1 = Currency.new
c1.symbol = 'AED'
c1.name = 'United Arab Emirates Dirham'
c1.value = 3.672626
c1.is_base = false
c1.show

c2 = Currency.new
c2.symbol = 'AFN'
c2.name = 'Afghan Afghani'
c2.value = 48.3775
c2.is_base = false
c2.show

c3 = Currency.new
c3.symbol = 'ALL'
c3.name = 'Albanian Lek'
c3.value = 110.223333
c3.is_base = false
c3.show

cd = CurrencyData.new
cd.load_all_currencies
cd.show
