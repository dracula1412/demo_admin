class Product < ActiveRecord::Base
  scope :available, -> { where("quantity > 0") }
  scope :out_of_stock, -> { where("quantity = 0") }

  has_many :orders
end
