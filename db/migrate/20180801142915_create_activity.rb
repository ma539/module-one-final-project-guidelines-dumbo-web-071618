class CreateActivity < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :activity_name 
    end
  end
end
