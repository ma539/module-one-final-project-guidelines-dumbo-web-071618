class Weather < ActiveRecord::Base
  has_many :weather_activities
  has_many :activities, {through: :weather_activities}

  url = "https://api.darksky.net/forecast/3ffe575babdc2ba70c85baf2d0290436/40.7128,-74.0060?exclude=minutely,hourly,daily,alerts,flags"
  # Latitude and longitude coordinates are: 40.730610, -73.935242.

  response = RestClient::Request.execute(
    method: :get,
    url: url,
    headers: {api_key: '3ffe575babdc2ba70c85baf2d0290436'}
  )

  parsed_weather_hash = JSON.parse(response)

  current_weather = parsed_weather_hash["currently"]

  current_time = current_weather["time"]
  current_summary = current_weather["summary"]
  current_icon = current_weather["icon"]

  #binding.pry


end
