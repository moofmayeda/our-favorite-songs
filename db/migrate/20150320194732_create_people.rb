class CreatePeople < ActiveRecord::Migration
  def change
  	create_table :people do |t|
  		t.integer :pipeline_id
  		t.references :human, polymorphic: true, index: true
  		t.timestamps
  	end
  end
end
