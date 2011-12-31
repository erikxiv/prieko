require 'test_helper'

class PatternTest < ActiveSupport::TestCase
  test "should note save pattern without pattern" do
    pattern = patterns(:one).dup
    pattern.pattern = nil
    assert !pattern.save, "Saved the pattern without pattern"
  end

  test "should note save pattern without category" do
    pattern = patterns(:one).dup
    pattern.category = nil
    assert !pattern.save, "Saved the pattern without category"
  end

  test "should note save pattern without user" do
    pattern = patterns(:one).dup
    pattern.user_id = nil
    assert !pattern.save, "Saved the pattern without user"
  end
end
