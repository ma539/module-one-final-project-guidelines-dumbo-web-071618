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

  def add_activity
  end

  def delete_activity
  end

  def build_weather_icon_table(icon)
    if icon == "clear-day" || icon == "clear-night"
      #call method to print the correposinding AsciiWeatherArt.sunny
      icon_art = AsciiWeatherArt.new.sunny
      create_table_for_icon(icon_art)
    elsif icon == "cloudy" || icon == "partly-cloudy-night" || icon == "fog" || icon == "partly-cloudy-day"
      #call method to print for cloudy
      icon_art = AsciiWeatherArt.new.cloudy
      create_table_for_icon(icon_art)
    elsif icon == "rain" || icon == "wind"
      #call method to print for rainy
      icon_art = AsciiWeatherArt.new.rainy
      create_table_for_icon(icon_art)
    elsif icon == "snow" || icon == "hail"
      #call method '' '' snowy
      icon_art = AsciiWeatherArt.new.snowy
      create_table_for_icon(icon_art)
    elsif icon == "sleet"
      #call method extreme
      icon_art = AsciiWeatherArt.new.extreme
      create_table_for_icon(icon_art)
    else
      #call method stormy
      icon_art = AsciiWeatherArt.new.stormy
      create_table_for_icon(icon_art)
    end
  end

  def create_table_for_icon(ascii_art)
    icon_table = Terminal::Table.new :style => {:width => 60} do |t|
      ascii_art.each do |art_line|
        t.add_row [art_line]
      end
    end
    icon_table.align_column(0, :center)
    icon_table
  end

end
