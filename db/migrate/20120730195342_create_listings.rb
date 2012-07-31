class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.boolean :available
      t.float :rent
      t.float :bedrooms
      t.float :bathrooms
      t.float :square_feet
      t.integer :type
      t.integer :pets
      t.integer :lease_type
      t.string :property_desc

      t.timestamps
    end
  end
end
