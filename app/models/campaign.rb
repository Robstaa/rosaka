class Campaign < ApplicationRecord
  has_many :campaign_products
  has_many :products, through: :campaign_products
  has_many :orders
end
