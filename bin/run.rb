require_relative '../config/environment'

#puts "Greetings"
# when the user picks the current activty then user has the option to delete
#
# check weather todat?
# yes => get api weather save the api hash to sql
# pull the data from the sql and project it on the terminal

# for now we have a dummy weather data and we want to see if the activity
# can reach the weather data


=begin
prompt = TTY::Prompt.new

# binding.pry

activity_add = prompt.yes?("Would you like to add an activity?")
if activity_add
  name = prompt.ask("What do you want to do?")
  Activity.create(activity_name: name)
  prompt.select("Here are you activies", Activity.all.map {|activity| activity.activity_name})
else
  current_select = prompt.select("Here are you activies", Activity.all.map {|activity| activity.activity_name})
  Activity.where(activity_name: current_select).destroy_all
end
=end
