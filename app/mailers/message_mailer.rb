class MessageMailer < ApplicationMailer
  default to: ENV["EMAIL_DEFAULT_TO"]

   def new_message(message)
     @message = message
     mail(reply_to: @message.email, subject: "New Message from Contact Us Form From: #{@message.name}")
   end
end
