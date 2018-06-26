require_relative '../../config/application.rb'

# this is where you should use an ActiveRecord migration to

class CreateTaskTable < ActiveRecord::Migration[5.0]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |t|
   	t.string :description
   	t.string :status
   

      t.timestamps
    end
  end
end