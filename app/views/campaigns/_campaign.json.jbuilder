json.extract! campaign, :id, :name, :start_date, :end_date, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
