require 'test_helper'

class VerificationTest < ActiveSupport::TestCase
  test "should note save verification without raw" do
    verification = verifications(:one).dup
    verification.raw = nil
    assert !verification.save, "Saved the verification without raw"
  end
  
  test "should not save verification without bank" do
    verification = verifications(:one).dup
    verification.bank = nil
    assert !verification.save, "Saved the verification without bank (nil)"
    verification.bank = ""
    assert !verification.save, "Saved the verification without bank (empty string)"
  end
  
  test "should not save verification without verification_date" do
    verification = verifications(:one).dup
    verification.verification_date = nil
    assert !verification.save, "Saved the verification without verification_date"
  end
  
  test "should not save verification without user_id" do
    verification = verifications(:one).dup
    verification.user_id = nil
    assert !verification.save, "Saved the verification without user_id"
  end
  
  test "should not save verification without amount" do
    verification = verifications(:one).dup
    verification.amount = nil
    assert !verification.save, "Saved the verification without amount"
  end
    
  test "should not save verification with non-decimal amount" do
    verification = verifications(:one).dup
    verification.amount = "not numeric"
    assert !verification.save, "Saved the verification with non-decimal amount"
  end
    
end
