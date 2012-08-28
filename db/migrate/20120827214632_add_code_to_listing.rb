class AddCodeToListing < ActiveRecord::Migration
  def change
    add_column :listings, :customCode, :string

  end
end
