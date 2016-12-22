class HolidayMailer < ApplicationMailer
  def new_message
    mail to: "paulinarozenfeld@gmail.com",
         subject: 'System Message - Soul Bazaar'
  end
end
