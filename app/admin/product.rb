ActiveAdmin.register Product do
  actions :all, except: [:destroy]
  permit_params :name, :description, :price, :quantity

  scope :all
  scope :available
  scope :out_of_stock
end
