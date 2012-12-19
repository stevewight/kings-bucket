<h1>Kings-Bucket</h1>
============

Ruby script for pulling the latest (or historical) currency data from OpenExchangeRates.org

<h2>Usage</h2>
<p>To see a sample use of accessing the open exchange rates api data execute run bot file from the command line</p>

`````ruby
require 'currency_data'

puts 'Instantiating a new CurrencyData object with your app id'
cd = CurrencyData.new('YOUR_APP_ID')

puts 'load the latest currency data and showing...'
cd.load_currency
cd.show

puts 'load historic currency data for September 4th, 2011 and showing...'
cd.load_currency('2011-09-04')
cd.show
`````

<p><span>note:</span>You must sign up for a free app id at <a href="http://openexchangerates.org">Open Exchange Rates</a>.  The free version allows for 1000 requests per month and 1 hour updates on rates.  You can pay for more requests and 10 minute updates of rates.</p>

<h2>Files</h2>
<ul>
  <li><h3>currency.rb</h3><p>For storing a single instance of a Currency object, including the symbol, name,  and value in relation to base currency (USD)</p></li>
  <li><h3>currency_data.rb</h3><p>The CurrencyData object interfaces with the OpenExchange object and creates/stores Currency objects that it parses from the api data.</p></li>
  <li><h3>open_exchange.rb</h3><p>OpenExchange is the wrapper around the Open Exchange Rates api.  Pull's the latest currency rates or historical currency rates.  Also returns the local currencies.json file for creation of initial @currencies hash.</p></li>
  <li><h3>run_bot.rb</h3><p>Sample run of the script</p></li>
  <li><h3>currencies.json</h3><p>Local version of symbol => name data for all the currencies</p></li>
</ul>
