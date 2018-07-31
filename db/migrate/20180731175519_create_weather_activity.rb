class CreateWeatherActivity < ActiveRecord::Migration[5.0]
  def change
    create_table :weather_activities do |t|
      t.integer :weather_id
      t.integer :activity_id
    end
  end
end
