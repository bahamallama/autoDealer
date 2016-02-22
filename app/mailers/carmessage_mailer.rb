class CarmessageMailer < ApplicationMailer
  default to: 'don@bahamallama.cc'

   def new_carmessage(carmessage)
     @carmessage = carmessage
     mail(reply_to: @carmessage.email, subject: "New Message from Vehicle Inquiry Form From: #{@carmessage.name}")
   end
end
