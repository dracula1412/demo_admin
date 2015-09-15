ActiveAdmin.register Product do
  actions :all, except: [:destroy]
  permit_params :name, :description, :price, :quantity

  scope :all
  scope :available
  scope :out_of_stock

  member_action :history, method: :get do
    @product = Product.find params[:id]
    @orders = @product.orders
  end

  action_item :view_history, only: :show do
    link_to 'History', history_admin_product_path(product)
  end
end
