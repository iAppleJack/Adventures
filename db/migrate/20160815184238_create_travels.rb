class CreateTravels < ActiveRecord::Migration[5.0]
  def change
    create_table :travels do |t|
      t.string :name
      t.string :country
      t.string :img

      t.timestamps
    end
  end
end
