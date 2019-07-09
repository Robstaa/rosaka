class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :campaign_product
end
