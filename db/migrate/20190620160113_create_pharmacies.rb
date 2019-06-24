class CreatePharmacies < ActiveRecord::Migration[5.2]
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.string :street_name
      t.string :house_number
      t.string :postal_code
      t.integer :cent_cost_per_phone_call
      t.string :fax_number
      t.string :email
      t.string :website
      t.string :service_number
      t.string :facebook_profile

      t.timestamps
    end
  end
end
