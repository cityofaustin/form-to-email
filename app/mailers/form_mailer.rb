class FormMailer < ApplicationMailer
  layout 'mailer'
  require 'json'
  require 'active_support/core_ext/hash'

  def send_email(submission)
    @submission = JSON.parse(submission)
    deliver_to = @submission["deliver_to"]
    subject = @submission["email_subject"]
    aws_delivery = mail(:to=>"#{deliver_to}", :subject=>"#{subject}")
  end
end
