class Customer < ActiveRecord::Base
  has_many :orders
  has_many :ratings
  validates :email, :password, :firstname, :lastname, presence: true

  def create_order
    self.orders = Order.new
  end

  def current_order
    self.orders.where(state: 'in progress').first
  end

end
