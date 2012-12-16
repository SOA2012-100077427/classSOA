class CreateStudentdata < ActiveRecord::Migration
  def change
    create_table :studentdata do |t|
      t.string :name
      t.string :class
      t.string :grade
      t.string :seatnumber
      t.string :group
      t.string :job
      t.string :pettype
      t.string :food
      t.string :petnumber

      t.timestamps
    end
  end
end
