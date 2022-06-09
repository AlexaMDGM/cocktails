class AddDescriptionToMeasurment < ActiveRecord::Migration[6.1]
  def change
    add_column :measurments, :description, :string
  end
end
