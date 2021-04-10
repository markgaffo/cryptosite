require 'test_helper'

class BalancePageTest < ActionDispatch::IntegrationTest
  
   test 'create a balance with no information' do
    @balance = balances(:one)
    get '/balances/new'
    assert_response :success
    
    post balances_url, params:{balance: {}}
    assert_select '/balances', path
    assert_select 'h2', "1 errors prohibited this balance from being saved:"
    assert_select 'li', "Balance can't be blank"
  end
end
