class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :flight

  validates :url, presence: true



end
