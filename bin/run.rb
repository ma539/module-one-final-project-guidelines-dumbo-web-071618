require_relative '../config/environment'

while true

  options = ["1. Add new activity?", "2. Delete an activity", "3. Show current weather and activities", "4. Quit"]
  prompt = TTY::Prompt.new

  puts "Greetings"
  response = prompt.select("Please make your selection: ", options)
  if response[0] == "1"

    activity_input = prompt.ask("Please enter the activity you like to do:")
    created_activity_id = Activity.create(activity_name: activity_input).id
    weather_input = prompt.select("Here are your options of weathers you can pick from", Weather.all.map {|weather| weather.icon})
    weather_input_id = Weather.find_by(icon: weather_input).id

    WeatherActivity.create(weather_id: weather_input_id, activity_id: created_activity_id)


  elsif response[0] == "2"
    activity_to_delete = prompt.select("Please select the activity for deletion: ", Activity.all.map {|activity| activity.activity_name})
    activity_id_to_delete = Activity.find_by(activity_name: activity_to_delete).id
    Activity.delete_all(id: activity_id_to_delete)
    WeatherActivity.delete_all(activity_id: activity_id_to_delete)
    system("clear")
    puts "#{activity_to_delete} has been TERMINATED"

  elsif response[0] == "3"
    weather_api_call = RunHelper.new
    icon = weather_api_call.dark_sky_weather_api_call[0]
    summary = weather_api_call.dark_sky_weather_api_call[1]
    time = weather_api_call.dark_sky_weather_api_call[2]
    weather_match = Weather.find_by(icon: icon)
    weather_activities = weather_match.activities.map {|activity| activity.activity_name}

    table = Terminal::Table.new :style => {:width => 60} do |t|
      t.add_row ["The time is "]
      t.add_row [time.to_s]
      t.add_row ["The Weather is "]
      t.add_row [summary]
      t.style = {:all_separators => true}
    end
    table.align_column(0, :center)

    icon_create_table = RunHelper.new
    icon_table = icon_create_table.build_weather_icon_table(weather_match.icon)

    system("clear")

    puts table
    puts
    puts icon_table
    puts

    if weather_activities.empty?
      puts "You have no activities for today's weather! Please add some more activities!"
      puts
    else
      activity_table = Terminal::Table.new :style => {:width => 60} do |t|
        t.add_row ["Here are some activities you can do today!"]
        weather_activities.each do |weather_activity|
          t.add_row [weather_activity]
        end
        t.add_row ["Have fun!"]
        t.style = {:all_separators => true}
      end

      activity_table.align_column(0, :center)

      puts activity_table
    end
  else
    puts "Quitting"
    break
  end
end
