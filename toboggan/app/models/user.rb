class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many     :flights
  has_many     :notifications

  validates :phone_number, format: { with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/ ,
                           message: "Wrong Format 000-000-0000"},
                           presence: true


  validates :email, format: { with: Devise.email_regexp}
end
