class CommentsMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comments_mailer.submitted.subject
  #
  def submitted(comment)
    @greeting = 'Hi'
    @comment = comment

    mail to: 'to@example.org', subject: 'New comment!'
  end
end
