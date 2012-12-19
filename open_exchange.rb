#open exchange api wrapper
require 'rubygems'
require 'json'
require 'open-uri'

class OpenExchange
  
  attr_accessor :base_url, :app_id, :parsed_data

  def initialize(base_url,app_id)
    @base_url = base_url
    @app_id = app_id
  end 
  
  def load_local_currencies
    json_data = File.read('currencies.json')
    @parsed_data = JSON.parse(json_data)
  end

  def load_remote_currencies(date=nil)
    if date != nil
      inner_url = 'historical/' + date + '.json?app_id='
    else
      inner_url = 'latest.json?app_id='
    end
    
    json_url = @base_url + inner_url + @app_id
    @parsed_data = JSON.parse(open(json_url).read)
  end

end
