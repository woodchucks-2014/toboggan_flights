class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :flight

  validates :url, presence: true



  def send_sms(phone_number)    #post route

    @twilio_number  = "+17734926465"
    # config.key  = ENV['TWILIO_API_KEY']
    # config.secret  = ENV['TWILIO_ACC_SID']
    account_sid = 'a548aad83f1af5ffe9d217904f4ab5f0'
    auth_token = 'ACbc2cca55c5535fedc04a68a5f5d6da96'

    @client = Twilio::REST::Client.new account_sid, auth_token  #config.key, config.secret

    @message = @client.account.messages.create({
        :from => @twilio_number,
        :to => phone_number,
        :body => 'TOT OT',
      })

    puts message.body
  end


end
