require 'test_helper'

class CryptoTest < ActiveSupport::TestCase
  
  test "should not save crypto without params" do
    crypto = Crypto.new
    assert_not crypto.save
  end
  
end
