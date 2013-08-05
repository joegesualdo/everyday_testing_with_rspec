class Contact < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname

  validates :firstname, :lastname, presence: true
  validates_uniqueness_of :email

  has_many :phones

  def name
    "#{self.firstname} #{self.lastname}"
  end

  def self.by_letter(letter)
    where("lastname LIKE ?", "#{letter}%").order(:lastname)
  end
end
