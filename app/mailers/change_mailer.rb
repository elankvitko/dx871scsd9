class ChangeMailer < ApplicationMailer
  def new_change( order )
    @order = order

    mail to: "paulinarozenfeld@gmail.com",
         subject: 'Update - Soul Bazaar'
  end
end
