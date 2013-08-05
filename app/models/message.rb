class Message < ActiveRecord::Base
  attr_accessible :message, :name, :email

  validates :message, :email, :name, presence: true
end
