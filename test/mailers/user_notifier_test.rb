require 'test_helper'

class UserNotifierTest < ActionMailer::TestCase
  test "test" do
    mail = UserNotifier.test
    assert_equal "Test", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
