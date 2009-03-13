class ContactMailer < ActionMailer::Base
  
  def message(message)
    subject    message.subject
    body       :message => message
    recipients message.recipient
    from       'Green Rock contact form'
    sent_on    Time.now
  end

end
