class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :post_number, :prefecture_id, :city, :number, :building, :phone_number, :order_id

end