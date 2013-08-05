class Contact < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname

  validates :firstname, :lastname, presence: true
  validates_uniqueness_of :email

  has_many :phones
end
