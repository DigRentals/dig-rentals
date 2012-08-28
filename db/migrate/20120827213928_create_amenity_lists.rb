class CreateAmenityLists < ActiveRecord::Migration
  def change
    create_table :amenity_lists do |t|
      t.integer :amenity_id, :null => false
      t.integer :listing_id, :null => false
      t.timestamps
    end
  end
end
