class WeatherActivity < ActiveRecord::Base
  belongs_to :weather
  belongs_to :activity
end
