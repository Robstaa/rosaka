json.extract! contact_person, :id, :pharmacy_id, :salutation, :title, :first_name, :last_name, :name_addition, :created_at, :updated_at
json.url contact_person_url(contact_person, format: :json)
