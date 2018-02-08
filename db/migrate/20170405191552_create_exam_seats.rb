class CreateExamSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :exam_seats do |t|
      t.string :studId
      t.string :section
      t.string :course
      t.string :room

      t.timestamps
    end
  end
end
