class Pharmacy < ApplicationRecord
  has_many :contact_persons
  has_many :business_hours
  has_many :orders
end
