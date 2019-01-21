class AddWeatherToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :weather, :text
  end
end
