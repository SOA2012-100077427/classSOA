class CreateStudentdata < ActiveRecord::Migration
  def change
    create_table :studentdata do |t|
      t.string :name
      t.string :year
      t.string :grade
      t.string :seatnumber
      t.string :grouping
      t.string :job
      t.string :pettype
      t.string :food
      t.string :petnumber

      t.timestamps
    end
  end
end
