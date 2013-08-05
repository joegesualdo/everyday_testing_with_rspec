class Phone < ActiveRecord::Base
  attr_accessible :phone, :phone_type

  belongs_to :contact

  validates :phone, uniqueness: { scope: :contact_id }
end
