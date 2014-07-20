class NotificationsController < ApplicationController

  require 'twilio-ruby'
  require 'dotenv'
  Dotenv.load


  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice

    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
         r.Play 'http://linode.rabasa.com/cantina.mp3'
    end

    render_twiml response
  end


  def send_sms(body, phone_number)   #post route

    twilio_token = ENV["TWILIO_API_KEY"]
    twilio_sid = ENV["TWILIO_ACC_SID"]
    @client = Twilio::REST::Client.new twilio_sid, twilio_token

    @client.account.messages.create(
        :from => '+18454434529',
        :to => phone_number,
        :body => body,
      )
  end

end
