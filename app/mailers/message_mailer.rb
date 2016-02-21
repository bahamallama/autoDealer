class MessageMailer < ApplicationMailer
  default to: 'don@bahamallama.cc'

   def new_message(message)
     @message = message
     mail(from: @message.email, subject: "New Message from Contact Us Form From: #{@message.name}")
   end
end
