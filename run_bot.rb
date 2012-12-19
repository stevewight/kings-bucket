#run_bot, script starting point for kings-bucket
require 'currency_data'

#create the CurrencyData object passing your open exchange app id
cd = CurrencyData.new('YOUR_APP_ID')

#load latest currency values
cd.load_currency

#load historic currency values by passing a date parameter
cd.load_currency('2010-09-04')

#show all the currencies
cd.show
