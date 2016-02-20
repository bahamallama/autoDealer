class MessageMailer < ApplicationMailer
  default to: 'don@bahamallama.cc'

   def new_message(message)
     @message = message
    
     mail subject: "Message from #{message.name}"
     mail from: @message.email
   end
end
