require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  
  test "should not save profile without params" do
    profile = Profile.new
    assert_not profile.save
  end
  
end
