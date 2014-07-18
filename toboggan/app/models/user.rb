class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many     :user_flights
  has_many     :users, through: :user_flights

  has_many     :notifications

  validates :name, presence: true

  validates :phone_number, format: { with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/ ,
                           message: "Wrong Format 000-000-0000"}
                           #/\A\+1\d{10}\z/     0-000-000-0000


  validates :email, format: { with: Devise.email_regexp}



end
