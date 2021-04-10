require 'test_helper'

class BalanceTest < ActiveSupport::TestCase
  
  test "should not save balance without params" do
    balance = Balance.new
    assert_not balance.save
  end
  
end
