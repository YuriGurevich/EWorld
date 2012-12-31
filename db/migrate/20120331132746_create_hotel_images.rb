class CreateHotelImages < ActiveRecord::Migration
  def change
    create_table :hotel_images do |t|
      t.integer :hotel_id
      t.string :name

      t.timestamps
    end
  end
end
