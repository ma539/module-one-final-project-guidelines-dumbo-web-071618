require_relative '../config/environment'

puts "Greetings"
# when the user picks the current activty then user has the option to delete
#
prompt = TTY::Prompt.new

activity_add = prompt.yes?("Would you like to add an activity?")
if activity_add
  name = prompt.ask("What do you want to do?")
  Activity.create(activity_name: name)
  prompt.select("Here are you activies", Activity.all.map {|activity| activity.activity_name})
else
  current_select = prompt.select("Here are you activies", Activity.all.map {|activity| activity.activity_name})
  Activity.where(activity_name: current_select).destroy_all
end
