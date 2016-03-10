class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
   		t.string :capco_id
   		t.integer :employee_id
   		t.string :first
   		t.string :last
   		t.string :level


      t.timestamps null: false
    end
  end
end
