class AddIndexToExamSeatsStudId < ActiveRecord::Migration[5.0]
  def change
    add_index :exam_seats, :studId, unique: true
  end
end
