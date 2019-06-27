class BusinessHour < ApplicationRecord
  belongs_to :pharmacy

  enum day: %I[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]

  def formatted_open_time
    open_time.strftime('%H:%M')
  end

  def formatted_close_time
    close_time.strftime('%H:%M')
  end
end
