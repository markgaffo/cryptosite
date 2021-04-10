require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  fixtures :all 
  
  test 'try to create new user without information' do
    @user = users(:one)
    get '/users/sign_up'
    assert_response :success
    
    post users_url, params:{user: {}}
    assert_select '/users', path
    assert_select 'h2', "2 errors prohibited this user from being saved:"
    assert_select 'li', "Email can't be blank"
    assert_select 'li', "Password can't be blank"
  end
end
