puts 'Deleting old records'

ContactPerson.destroy_all
BusinessHour.destroy_all
Pharmacy.destroy_all

puts 'Start to seed'

pharmacy = Pharmacy.create!(name: 'Rosalinde Apotheke')
ContactPerson.create!(first_name: 'Saskia', pharmacy: pharmacy)
BusinessHour.create!(day: 'wednesday', pharmacy_id: pharmacy.id, open_time: '8:00', close_time: '19:00')

puts 'Finished seeding'
