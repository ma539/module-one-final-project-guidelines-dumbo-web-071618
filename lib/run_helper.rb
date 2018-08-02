require 'date'

class RunHelper


  def dark_sky_weather_api_call
    url = "https://api.darksky.net/forecast/3ffe575babdc2ba70c85baf2d0290436/40.7128,-74.0060?exclude=minutely,hourly,daily,alerts,flags"
    # Latitude and longitude coordinates are: 40.730610, -73.935242.

    response = RestClient::Request.execute(
      method: :get,
      url: url,
      headers: {api_key: '3ffe575babdc2ba70c85baf2d0290436'}
    )

    parsed_weather_hash = JSON.parse(response)

    current_weather = parsed_weather_hash["currently"]

    arr_parsed_weather_api = []
    arr_parsed_weather_api << current_weather["icon"]
    arr_parsed_weather_api << current_weather["summary"]
    arr_parsed_weather_api << Time.at(current_weather["time"]).to_datetime
    arr_parsed_weather_api

  end
end
