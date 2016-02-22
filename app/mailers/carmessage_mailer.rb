class CarmessageMailer < ApplicationMailer
  default to: 'don@bahamallama.cc'

   def new_carmessage(carmessage)
     @carmessage = carmessage
     mail(reply_to: @carmessage.email, subject: "Vehicle Inquiry For #{@carmessage.year} #{@carmessage.make} #{@carmessage.model} Car ID: #{@carmessage.carID} From: #{@carmessage.name}")
   end
end
