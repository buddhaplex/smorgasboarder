class AddImages < ActiveRecord::Migration
  def change
  	create_table :image do |t|
  		t.text :caption
  		
  		t.integer :user_id
  		t.integer :place_id
  		t.timestamps
  end

  add_index :image, [:user_id, :place_id]
  add_index :image, :place_id
end
