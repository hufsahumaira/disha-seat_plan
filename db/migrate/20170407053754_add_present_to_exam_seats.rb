class AddPresentToExamSeats < ActiveRecord::Migration[5.0]
  def change
    add_column :exam_seats, :present, :boolean, default: false
  end
end
