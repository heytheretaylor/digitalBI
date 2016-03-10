class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :project_name
    	t.datetime :project_start
    	t.datetime :project_end
    	t.boolean :is_approved

      t.timestamps null: false
    end
  end
end
