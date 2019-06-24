class CreateContactPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_people do |t|
      t.references :pharmacy, foreign_key: true
      t.string :salutation
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :name_addition

      t.timestamps
    end
  end
end
