class UserNotifier < ActionMailer::Base
  default from: "Brucepark <jongseok.park.mail@gmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_notifier.test.subject
  #
  def test
    @greeting = "Hi"

    mail to: "jongsuknim@naver.com", subject: 'mail sender test'
  end
end
