require 'test_helper'

class CryptoPageTest < ActionDispatch::IntegrationTest
    
  test 'try to create a crypto without symbol and amount' do
    @crypto = cryptos(:one)
    get '/cryptos/new'
    assert_response :success
    
    post crytpos_url, params:{crypto: {cost_per: @crypto.cost_per}}
    assert_select '/cryptos', path
    assert_select 'h2', "2 errors prohibited this crypto from being saved:"
    assert_select 'li', "Symbol can't be blank"
    assert_select 'li', "amount_per can't be blank"
  end
  
end
