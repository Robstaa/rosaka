class Order < ApplicationRecord
  belongs_to :pharmacy
  belongs_to :campaign
  has_many :order_details
  has_many :campaign_products, through: :order_details
end
