class AddDescriptionToMeasurement < ActiveRecord::Migration[6.1]
  def change
    add_column :measurements, :description, :string
  end
end
