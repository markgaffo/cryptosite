class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    #reading from the news API for news articles
    @url = 'https://min-api.cryptocompare.com/data/v2/news/?lang=EN'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @news = JSON.parse(@response)
    
    #reading crypto coin vaule data
    @coin_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,XRP,LTC,ZRX,OMG,XLM,BCH&tsyms=EUR'
    @coin_uri = URI(@coin_url)
    @coin_response = Net::HTTP.get(@coin_uri)
    @coin_price = JSON.parse(@coin_response)
    
  end
  
  def prices
    require 'net/http'
    require 'json'
    
    @coinsearch = params[:findcoin].to_s.upcase
    if @coinsearch.present?
      #needed for search bar
      @searchcoin_url = 'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=' + @coinsearch + '&tsyms=EUR'
      @searchcoin_uri = URI(@searchcoin_url)
      @searchcoin_response = Net::HTTP.get(@searchcoin_uri)
      @searchcoin_result = JSON.parse(@searchcoin_response)
    end
    
  end
  
end
