class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|

      t.timestamps
    end
  end
end
