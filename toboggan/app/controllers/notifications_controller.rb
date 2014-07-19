class NotificationsController < ApplicationController


  @twilio_number = "+17734926465"

  def sms    #post route
    content_type 'text/xml'

    puts params
    "<Response><Message>Hello</Message></Response>"
  end




end
