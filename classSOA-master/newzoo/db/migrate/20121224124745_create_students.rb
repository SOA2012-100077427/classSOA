class CreateStudents < ActiveRecord::Migration
  def up
    create_table 'students' do |t|
      t.string 'a'
      t.string 'b'
      t.string 'c'
      t.string 'd'
      t.string 'e'
      t.string 'f'
      t.string 'g'
      t.string 'h'
      t.string 'i'
      t.timestamps
  end
end
  def down
    drop_table 'students'
  end
end

