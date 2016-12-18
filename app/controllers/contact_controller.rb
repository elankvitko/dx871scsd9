class ContactController < ApplicationController
  before_action :authenticate_user!
  def create
    if request.xhr?
      ContactMailer.new_contact( params[ 'name' ], params[ 'email' ], params[ 'body' ] ).deliver_now
      render partial:'success', layout: false
    end
  end
end
