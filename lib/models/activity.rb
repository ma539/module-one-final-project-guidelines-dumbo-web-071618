class Activity < ActiveRecord::Base
  # binding.pry
  has_many :weather_activities
  has_many :weathers, {through: :weather_activities}
end
