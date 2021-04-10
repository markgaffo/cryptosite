require 'test_helper'

class ProfileLoginTest < ActionDispatch::IntegrationTest
   fixtures :all 
  
  test 'try to create a profile with only last name' do
    @profile = profiles(:one)
    get '/profiles/new'
    assert_response :success
    
    post profiles_url, params:{profile: {last_name: @profile.last_name}}
    assert_select '/profiles', path
    assert_select 'h2', "3 errors prohibited this profile from being saved:"
    assert_select 'li', "First name can't be blank"
    assert_select 'li', "Country can't be blank"
    assert_select 'li', "Number can't be blank"
  end
  
  test 'try to create a profile with only first name' do
    @profile = profiles(:one)
    get '/profiles/new'
    assert_response :success
    
    post profiles_url, params:{profile: {first_name: @profile.first_name}}
    assert_select '/profiles', path
    assert_select 'h2', "3 errors prohibited this profile from being saved:"
    assert_select 'li', "Last name can't be blank"
    assert_select 'li', "Country can't be blank"
    assert_select 'li', "Number can't be blank"
  end
  
  test 'try to create a profile with only country' do
    @profile = profiles(:one)
    get '/profiles/new'
    assert_response :success
    
    post profiles_url, params:{profile: {country: @profile.country}}
    assert_select '/profiles', path
    assert_select 'h2', "3 errors prohibited this profile from being saved:"
    assert_select 'li', "First name can't be blank"
    assert_select 'li', "last name can't be blank"
    assert_select 'li', "Number can't be blank"
  end
  
  test 'try to create a profile with only number' do
    @profile = profiles(:one)
    get '/profiles/new'
    assert_response :success
    
    post profiles_url, params:{profile: {number: @profile.number}}
    assert_select '/profiles', path
    assert_select 'h2', "3 errors prohibited this profile from being saved:"
    assert_select 'li', "First name can't be blank"
    assert_select 'li', "last name can't be blank"
    assert_select 'li', "Country can't be blank"
  end
  
end
