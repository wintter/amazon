class Address < ActiveRecord::Base
  has_one :order
  validates :adress, :zipcode, :city, :phone, presence: true
end
