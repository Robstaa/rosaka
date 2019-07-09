puts 'Deleting old records'

ContactPerson.destroy_all
BusinessHour.destroy_all
OrderDetail.destroy_all
Order.destroy_all
Pharmacy.destroy_all
CampaignProduct.destroy_all
Campaign.destroy_all
Product.destroy_all

puts 'Start to seed'

pharmacy = Pharmacy.create!(
  name: 'Rosalinde Apotheke',
  street_name: 'Am Berlin Museum',
  house_number: '8',
  postal_code: '10969',
  email: 'rosalinde@apotheke.de',
  website: 'https://rosalinde.com'
)
pharmacy_2 = Pharmacy.create!(
  name: 'Einhorn Apotheke',
  street_name: 'Thomasstraße',
  house_number: '51',
  postal_code: '12053',
  email: 'einhorn@apotheke.de',
  website: 'https://einhorn-apotheke.com'
)

ContactPerson.create!(first_name: 'Saskia', last_name: 'Menke', pharmacy: pharmacy, salutation: 'Fräulein', title: 'Dr.')
ContactPerson.create!(first_name: 'Gertrude', last_name: 'Stein', pharmacy: pharmacy_2, salutation: 'Frau', title: 'Dr.')

BusinessHour.create!(day: 'Monday', pharmacy_id: pharmacy.id, open_time: '8:00', close_time: '19:00')
BusinessHour.create!(day: 'Tuesday', pharmacy_id: pharmacy.id, open_time: '8:00', close_time: '19:00')
BusinessHour.create!(day: 'Wednesday', pharmacy_id: pharmacy.id, open_time: '8:00', close_time: '19:00')
BusinessHour.create!(day: 'Thursday', pharmacy_id: pharmacy.id, open_time: '8:00', close_time: '19:00')
BusinessHour.create!(day: 'Friday', pharmacy_id: pharmacy.id, open_time: '8:00', close_time: '19:00')
BusinessHour.create!(day: 'Saturday', pharmacy_id: pharmacy.id, open_time: '10:00', close_time: '18:00')

campaign_1 = Campaign.create!(name: 'Sommerkampagne', start_date: '01.07.2019', end_date: '01.08.2019')
campaign_2 = Campaign.create!(name: 'Winterkampagne', start_date: '01.11.2019', end_date: '01.12.2019')

order_1 = Order.create!(pharmacy_id: pharmacy.id, campaign_id: campaign_1.id)
order_2 = Order.create!(pharmacy_id: pharmacy.id, campaign_id: campaign_2.id)
order_3 = Order.create!(pharmacy_id: pharmacy_2.id, campaign_id: campaign_2.id)

product_1 = Product.create!(name: 'Sommerkampagne_Flyer', product_type: 'Flyer')
product_2 = Product.create!(name: 'Sommerkampagne_Aufsteller', product_type: 'Aufsteller')
product_3 = Product.create!(name: 'Winterkampagne_Flyer', product_type: 'Flyer')

campaign_product_1 = CampaignProduct.create!(campaign_id: campaign_1.id, product_id: product_1.id)
campaign_product_2 = CampaignProduct.create!(campaign_id: campaign_1.id, product_id: product_2.id)
campaign_product_3 = CampaignProduct.create!(campaign_id: campaign_2.id, product_id: product_3.id)

OrderDetail.create!(order_id: order_1.id, campaign_product_id: campaign_product_1.id,  quantity: 20)
OrderDetail.create!(order_id: order_1.id, campaign_product_id: campaign_product_1.id,  quantity: 4)
OrderDetail.create!(order_id: order_2.id, campaign_product_id: campaign_product_2.id,  quantity: 40)
OrderDetail.create!(order_id: order_3.id, campaign_product_id: campaign_product_2.id,  quantity: 50)

puts 'Finished seeding'
