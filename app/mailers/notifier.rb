class Notifier < ApplicationMailer

  def email(address) #sending the user the index page, and sending it to their email address
    @address = address
    mail (to: address, subject:"Here is the information you requested.")
  end

end
