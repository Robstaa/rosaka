class Product < ApplicationRecord
  has_many :campaign_products
  has_many :campaigns, through: :campaign_products
end
