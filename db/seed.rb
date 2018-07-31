Weather.create(icon: "Sunny", summary: "It is a sunny hot day", temperature: 95)
Weather.create(icon: "Drizzling", summary: "It is drizzling outside", temperature: 65)
Weather.create(icon: "Snowing", summary: "It is a snowing outside", temperature: 15)
Weather.create(icon: "Raining", summary: "It is raining outside", temperature: 70)
Weather.create(icon: "Cold", summary: "It is cold outside", temperature: 45)
Weather.create(icon: "Freezing", summary: "It is a sunny hot day", temperature: 5)

Activity.create(name: "Basketball")
Activity.create(name: "Indoor Basketball")
Activity.create(name: "Soccer")
Activity.create(name: "Indoor Soccer")
Activity.create(name: "Dancing")
Activity.create(name: "Ice Skating")

#Sunny weather activities
WeatherActivity.create(weather_id: 1, activity_id: 1)
WeatherActivity.create(weather_id: 1, activity_id: 3)
WeatherActivity.create(weather_id: 1, activity_id: 5)
#Drizzling weather activities
WeatherActivity.create(weather_id: 2, activity_id: 2)
WeatherActivity.create(weather_id: 2, activity_id: 4)
WeatherActivity.create(weather_id: 2, activity_id: 5)
#Snowing weather activities
WeatherActivity.create(weather_id: 3, activity_id: 2)
WeatherActivity.create(weather_id: 3, activity_id: 4)
WeatherActivity.create(weather_id: 3, activity_id: 5)
WeatherActivity.create(weather_id: 3, activity_id: 6)
