require 'rails_helper'

RSpec.describe 'Pharmacy' do
  context 'when visiting the show page' do
    before(:each) do
      pharmacy = Pharmacy.create!(name: 'Rosalinde Apotheke')
      ContactPerson.create!(first_name: 'Saskia', pharmacy: pharmacy)
      visit "pharmacies/#{pharmacy.id}"
    end

    it 'shows its name' do
      expect(page).to have_content('Rosalinde Apotheke')
    end

    it 'shows the details of a contact person' do
      expect(page).to have_content('Saskia')
    end
  end
end
