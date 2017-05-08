class CreatePosts < ActiveRecord::Migration[5.1]
  def change
  	create_table :posts do |t|
  		t.text :content
  		t.text :author

  		t.timestamp

  	end
  end
end
