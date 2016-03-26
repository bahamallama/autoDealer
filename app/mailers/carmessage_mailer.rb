class CarmessageMailer < ApplicationMailer
  default to: ENV["EMAIL_DEFAULT_TO"]

   def new_carmessage(carmessage)
     @carmessage = carmessage
     mail(reply_to: @carmessage.email, subject: "Vehicle Inquiry For #{@carmessage.year} #{@carmessage.make} #{@carmessage.model} Car ID: #{@carmessage.carID} From: #{@carmessage.name}")
   end
end
