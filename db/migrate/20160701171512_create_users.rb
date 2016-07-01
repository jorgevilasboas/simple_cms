class CreateUsers < ActiveRecord::Migration
  def up
  	# if you don't want an autoincrement id use the line below
  	# create_table :users, {:id => false} do |t|
    create_table :users do |t|

    	t.column "first_name", :string, :limit => 25
    	t.string "last_name", :limit => 50
    	t.string "email", :default => "", :null => false
    	t.string "password", :limit => 40
    	
    	t.timestamps null: false
    	# the 2 lines below are equivalent to the one above
    	#t.datetime "created_at"
    	#t.datetime "updated_at"

    	#types:
    	# binary
    	# boolean
    	# date
    	# datetime
    	# decimal
    	# float
    	# integer
    	# string
    	# text
    	# time

    	
    end
  end

  def down
  	drop_table :users
  end
end
