#run_bot, script starting point for kings-bucket
require_relative 'currency_data'
require_relative 'api_key'

#create the CurrencyData object passing your open exchange app id
cd = CurrencyData.new(API_KEY)

#load latest currency values
cd.load_currency

#load historic currency values by passing a date parameter
cd.load_currency('2015-09-04')

#show all the currencies
cd.show
