class Gmailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.gmailer.create_email.subject
  #
  def create_email to, from, subject, message

    @from = from
    @to = to
    @subject = subject
    @message = message

    mail(to: to, subject: subject, from: from)
  end
end
