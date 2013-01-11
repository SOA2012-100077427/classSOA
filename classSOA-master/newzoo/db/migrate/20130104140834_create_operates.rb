class CreateOperates < ActiveRecord::Migration
  def up
    create_table 'operates' do |t|

      t.string 'Hmd'
      t.datetime 'Homework'      
      t.string 'HomeworkDescription'
      t.datetime 'Homework2'

      # Add fields that let Rails automatically keep track
      # of when students are added or modified:
      t.timestamps
      end  
  end
  def down
    drop_table 'operates'
  end
end
