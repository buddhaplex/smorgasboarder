class AddImageToPlace < ActiveRecord::Migration
  def change
  	create_table :image do |t|
  		t.text :caption
  		
  		t.integer :user_id
  		t.integer :place_id
  		t.timestamps
  end
end
